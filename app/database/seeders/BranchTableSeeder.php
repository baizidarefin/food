<?php

namespace Database\Seeders;

use Dipokhalder\EnvEditor\EnvEditor;
use App\Enums\Status;
use App\Models\Branch;
use Illuminate\Database\Seeder;

class BranchTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Branch::create([
            'name'      => 'Gulshan-2',
            'email'     => 'info@golpocom.com',
            'phone'     => '+8801787671962',
            'latitude'  => 23.7948597,
            'longitude' => 90.4083123,
            'city'      => 'Gulshan-2',
            'state'     => 'Dhaka',
            'zip_code'  => '1212',
            'address'   => 'Niketon Housing Society, Gulshan',
            'status'    => Status::ACTIVE,
        ]);

        $envService = new EnvEditor();
        if ($envService->getValue('DEMO')) {
            Branch::create([
                'name'      => 'Gulshan-1',
                'email'     => 'info@golpocom.com',
                'phone'     => '+8801787671962',
                'latitude'  => 23.7948597,
                'longitude' => 90.4083123,
                'city'      => 'Gulshan-1',
                'state'     => 'Dhaka',
                'zip_code'  => '1212',
                'address'   => 'Niketon Housing Society, Gulshan',
                'status'    => Status::ACTIVE,
            ]);
        }
    }
}
