<?php

namespace Database\Seeders;


use App\Enums\OtpDigitLimit;
use App\Enums\OtpExpireTime;
use App\Enums\OtpType;
use Dipokhalder\EnvEditor\EnvEditor;
use Illuminate\Database\Seeder;

use Smartisan\Settings\Facades\Settings;

class SocialMediaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $envService = new EnvEditor();

        Settings::group('social_media')->set([
            'social_media_facebook'  => $envService->getValue('DEMO') ? 'https://www.facebook.com/golpocom/' : '',
            'social_media_youtube'   => $envService->getValue('DEMO') ? 'https://www.youtube.com/@golpocom' : '',
            'social_media_instagram' => $envService->getValue('DEMO') ? 'https://www.instagram.com/golpocom' : '',
            'social_media_twitter'   => $envService->getValue('DEMO') ? 'https://twitter.com/golpocom?lang=en' : ''
        ]);
    }
}