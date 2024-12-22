<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class UserRegistration extends Mailable
{
    use Queueable, SerializesModels;

    public $template;
    public $mail_subject;
    public function __construct($template,$mail_subject)
    {
        $this->template=$template;
        $this->mail_subject=$mail_subject;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
{
    try {
        return $this->subject($this->mail_subject)
                    ->view('frontend.auth.user_verify_mail', ['template' => $this->template]);
    } catch (\Exception $e) {
        Log::error('Mailable Build Error: ' . $e->getMessage());
        throw $e;
    }
}

}
