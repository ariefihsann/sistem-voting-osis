<?php

namespace App\Http\Controllers;

use App\Models\Candidate;

class AdminController extends Controller
{
    public function dashboard()
    {
        $candidates = Candidate::withCount('votes')->get();
        return view('admin.dashboard', compact('candidates'));
    }
}
