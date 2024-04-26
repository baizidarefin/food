<?php

namespace Database\Seeders;


use Dipokhalder\EnvEditor\EnvEditor;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Smartisan\Settings\Facades\Settings;


class MailTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $envService = new EnvEditor();

        Settings::group('mail')->set([
            'mail_mailer'     => 'smtp',
            'mail_host'       => $envService->getValue('DEMO') ? 'mail.golpocom.com' : '',
            'mail_port'       => $envService->getValue('DEMO') ? '465' : '',
            'mail_username'   => $envService->getValue('DEMO') ? 'info@golpocom.com' : '',
            'mail_password'   => $envService->getValue('DEMO') ? 'Asdqwe123!@#' : '',
            'mail_encryption' => $envService->getValue('DEMO') ? 'ssl' : '',
            'mail_from_name'  => $envService->getValue('DEMO') ? 'Golpo - Food Manager' : '',
            'mail_from_email' => $envService->getValue('DEMO') ? 'info@golpocom.com' : ''
        ]);

        $envService->addData([
            'MAIL_MAILER'       => 'smtp',
            'MAIL_HOST'         => $envService->getValue('DEMO') ? 'mail.golpocom.com' : '',
            'MAIL_PORT'         => $envService->getValue('DEMO') ? '465' : '',
            'MAIL_USERNAME'     => $envService->getValue('DEMO') ? 'info@golpocom.com' : '',
            'MAIL_PASSWORD'     => $envService->getValue('DEMO') ? 'Asdqwe123!@#' : '',
            'MAIL_ENCRYPTION'   => $envService->getValue('DEMO') ? 'ssl' : '',
            'MAIL_FROM_NAME'    => $envService->getValue('DEMO') ? 'Golpo - Food Manager' : '',
            'MAIL_FROM_ADDRESS' => $envService->getValue('DEMO') ? 'info@golpocom.com' : ''
        ]);
        Artisan::call('optimize:clear');
    }
}
