<?php

namespace Database\Seeders;


use Dipokhalder\EnvEditor\EnvEditor;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Smartisan\Settings\Facades\Settings;

class CompanyTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Settings::group('company')->set([
            'company_name'         => 'Golpo - Restaurant Food Ordering & Delivery App',
            'company_email'        => 'info@golpocom.com',
            'company_phone'        => '+8801787671962',
            'company_website'      => 'https://golpocom.com',
            'company_city'         => 'Gulshan 1',
            'company_state'        => 'Dhaka',
            'company_country_code' => 'BGD',
            'company_zip_code'     => '1212',
            'company_address'      => 'Niketon Housing Society, Gulshan'
        ]);

        $envService = new EnvEditor();
        $envService->addData([
            'APP_NAME' => "Golpo - Restaurant Food Ordering & Delivery App"
        ]);
        Artisan::call('optimize:clear');
    }
}
