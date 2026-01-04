<?php

namespace App\Http\Controllers;

use App\Models\Candidate;
use App\Models\Vote;
use App\Models\User;

class AdminController extends Controller
{
    public function dashboard()
    {
        // Total suara masuk
        $totalVotes = Vote::count();

        // Ambil kandidat + hitung jumlah suaranya
        $candidates = Candidate::withCount('votes')->get();

        // Total user (jika perlu statistik partisipasi)
        $totalUsers = User::where('role', 'user')->count();

        // Hitung persentase per kandidat
        $candidates = $candidates->map(function ($c) use ($totalVotes) {
            $c->percentage = $totalVotes > 0 
                ? round(($c->votes_count / $totalVotes) * 100)
                : 0;
            return $c;
        });

        // Urutkan kandidat berdasarkan suara terbanyak
        $candidates = $candidates->sortByDesc('votes_count')->values();

        // Untuk grafik Chart.js
        $labels = $candidates->pluck('name');
        $voteCounts = $candidates->pluck('votes_count');

        return view('admin.dashboard', compact(
            'totalVotes',
            'candidates',
            'totalUsers',
            'labels',
            'voteCounts'
        ));
    }
}

