<?php
/**
 * Created by PhpStorm.
 * User: Marco
 * Date: 04/12/2018
 * Time: 22:46
 */

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Form;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactForm;

class EmailController
{

    public function mail(Request $request)
    {
        $email = $request->input('email');
        $name = $request->input('name');
        $subject = $request->input('subject');
        $body = $request->input('body');
        $sendCopy = $request->input('sendCopy');

        $formObject = new Form($name, $email, $subject, $body, $sendCopy);

        Mail::to($request->input('email'))->send(new ContactForm($formObject));

        return $formObject;
    }
}
