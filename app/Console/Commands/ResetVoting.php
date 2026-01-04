<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Vote;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class ResetVoting extends Command
{
    protected $signature = 'voting:reset';
    protected $description = 'Reset semua data voting';

    public function handle()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        Vote::truncate();

        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        User::where('role', 'user')->update([
            'has_voted' => false
        ]);

        $this->info('✅ Voting berhasil di-reset.');
    }
}
