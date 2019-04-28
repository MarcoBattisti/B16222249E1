<?php

namespace App\Mail;

use Illuminate\Support\Facades\Log;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Form;

class ContactForm extends Mailable
{
    use Queueable, SerializesModels;

    public $form;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Form $form)
    {
        $this->form = $form;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        if($this->form->getSendCopy() == false){
            Log::info('Trying to send the email without the copy of the message!');
			return $this->from(env('MAIL_USERNAME'), env('MAIL_USERNAME'))
                    ->subject($this->form->getSubject())
                    ->view('emails.contact');
        }else{
            Log::info('Trying to send the email with the copy of the message!');
			return $this->from(env('MAIL_USERNAME'), env('MAIL_USERNAME'))
                    ->subject($this->form->getSubject())
                    ->view('emails.contactWithCopy');
        }
    }
}
