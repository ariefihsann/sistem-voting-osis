<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class BackupDatabase extends Command
{
    protected $signature = 'db:backup';
    protected $description = 'Backup database voting';

    public function handle()
    {
        $db = config('database.connections.mysql.database');
        $user = config('database.connections.mysql.username');
        $pass = config('database.connections.mysql.password');
        $host = config('database.connections.mysql.host');

        $date = now()->format('Y-m-d_H-i-s');
        $path = storage_path("app/backup_{$date}.sql");

        $command = "mysqldump -h {$host} -u {$user} " .
                   ($pass ? "-p{$pass} " : "") .
                   "{$db} > {$path}";

        exec($command, $output, $result);

        if ($result === 0) {
            $this->info("Backup berhasil: {$path}");
        } else {
            $this->error("Backup gagal");
        }
    }
}
