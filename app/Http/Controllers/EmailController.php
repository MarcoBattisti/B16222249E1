<?php
/**
 * Created by PhpStorm.
 * User: Marco
 * Date: 04/12/2018
 * Time: 22:46
 */

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Log;
use Illuminate\Http\Request;
use App\Form;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactForm;
use App\Mail\ContactFormMailToMe;
use GuzzleHttp\Client;

class EmailController
{

    public function mail(Request $request)
    {
        $validatedData = $request->validate([
            'email' => 'required|email|max:255',
            'name' => 'required|max:50',
            'subject' => 'required|max:50',
            'body' => 'required|max:255',
            'sendCopy' => 'required|boolean',
            'response' => 'required',
        ]);

        $secret = env('RE_CAPTCHA_VALIDATION_SECRET');
        $response = $request->input('response');
        Log::info('secret input: '.$secret);
        Log::info('response input: '.$response);

        $client = new Client();

        $r = $client->request('POST', env('RE_CAPTCHA_VALIDATION_URI'), [
            'query' => [
                'secret' => $secret,
                'response' => $response
                ]
        ]);
        
        $recaptchaResponseBodyAsString = (string) $r->getBody();

        $recaptchaResponseBodyAsJson = json_decode($recaptchaResponseBodyAsString); 

        if($r->getStatusCode() == 200 && $recaptchaResponseBodyAsJson->success == true){
            Log::info('Email input: '.$request);
            $email = $request->input('email');
            $name = $request->input('name');
            $subject = $request->input('subject');
            $body = $request->input('body');
            $sendCopy = $request->input('sendCopy');

            $formObject = new Form($name, $email, $subject, $body, $sendCopy);
            
            Mail::to(env('MAIL_USERNAME'))->send(new ContactFormMailToMe($formObject));
            Mail::to($email)->send(new ContactForm($formObject));
            Log::info('The email has been sent successfully!');  
        }else{
            Log::info('json body '.$recaptchaResponseBodyAsString);
            return response($recaptchaResponseBodyAsString, 500);
        }   
        return response($recaptchaResponseBodyAsString); 
    }
}
