<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Candidate;

class CandidateSeeder extends Seeder
{
    public function run()
    {
        Candidate::insert([
            [
                'name' => 'PASLON SATU',
                'photo' => 'paslon1.jpg',
                'vision' => 'Menjadikan OSIS yang aktif dan kreatif.',
                'mission' => '1. Mengadakan kegiatan sosial.'
            ],
            [
                'name' => 'PASLON DUA',
                'photo' => 'paslon2.jpg',
                'vision' => 'Sekolah berkarakter dan berprestasi.',
                'mission' => '1. Memperkuat program akademik.'
            ],
            [
                'name' => 'PASLON TIGA',
                'photo' => 'paslon3.jpg',
                'vision' => 'Disiplin dan solidaritas siswa.',
                'mission' => '1. Menegakkan tata tertib.'
            ],
        ]);
    }
}
