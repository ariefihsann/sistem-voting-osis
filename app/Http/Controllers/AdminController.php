<?php

namespace App\Http\Controllers;

use App\Models\Candidate;
use App\Models\Vote;
use App\Models\User;

class AdminController extends Controller
{
    public function dashboard()
    {
        $totalVotes = Vote::count();
        $candidates = Candidate::withCount('votes')->get();
        $totalUsers = User::where('role', 'user')->count();

        // Tambahan untuk Chart.js
        $labels = $candidates->pluck('name');           // Nama kandidat
        $voteCounts = $candidates->pluck('votes_count'); // Jumlah suara

        return view('admin.dashboard', compact(
            'totalVotes',
            'candidates',
            'totalUsers',
            'labels',
            'voteCounts'
        ));
    }
}
