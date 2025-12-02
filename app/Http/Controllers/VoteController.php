<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Models\Candidate;
use App\Models\Vote;

class VoteController extends Controller
{
    public function index()
    {
        $candidates = Candidate::all();
        return view('vote.index', compact('candidates'));
    }

public function store($id)
{
    $user = auth()->user();

    // Simpan vote baru
    $vote = Vote::create([
        'user_id' => $user->id,
        'candidate_id' => $id,
    ]);

    return redirect()->route('vote.success', $vote->id);
}

public function success($voteId)
{
    $vote = Vote::with('candidate')->findOrFail($voteId);

    return view('vote.success', [
        'candidate' => $vote->candidate
    ]);
}
}
