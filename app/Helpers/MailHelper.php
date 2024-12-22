<?php

namespace App\Helpers;

use App\Models\EmailConfiguration as EmailConfiguration;

class MailHelper
{

    public static function setMailConfig(){

        $mailConfig = [
            'transport' => env('MAIL_MAILER', 'smtp'),
            'host' => env('MAIL_HOST'),
            'port' => env('MAIL_PORT'),
            'encryption' => env('MAIL_ENCRYPTION'),
            'username' => env('MAIL_USERNAME'),
            'password' => env('MAIL_PASSWORD'),
            'timeout' => null,
        ];
    
        // Set mail configuration dynamically
        config(['mail.mailers.smtp' => $mailConfig]);
        config(['mail.from.address' => env('MAIL_FROM_ADDRESS')]);
        config(['mail.from.name' => env('MAIL_FROM_NAME')]);
    }
}
