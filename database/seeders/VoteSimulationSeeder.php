<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Vote;
use App\Models\Candidate;

class VoteSimulationSeeder extends Seeder
{
    public function run(): void
    {
        // Ambil user yang belum vote
        $users = User::where('role', 'user')
            ->where('has_voted', false)
            ->limit(100)
            ->get();

        $candidates = Candidate::pluck('id')->toArray();

        foreach ($users as $user) {

            Vote::create([
                'user_id' => $user->id,
                'candidate_id' => $candidates[array_rand($candidates)],
            ]);

            $user->update([
                'has_voted' => true
            ]);
        }
    }
}
