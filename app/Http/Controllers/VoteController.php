<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Models\Candidate;
use App\Models\Vote;
use Illuminate\Support\Facades\DB;

class VoteController extends Controller
{
    public function index()
    {
        $user = auth()->user();

        // Jika user sudah voting, langsung arahkan ke halaman sukses
        $existingVote = Vote::where('user_id', $user->id)->first();

        if ($existingVote) {
            return redirect()->route('vote.success', $existingVote->id);
        }

        $candidates = Candidate::all();
        return view('vote.index', compact('candidates'));
    }

public function store($id)
{
    $user = auth()->user();

    if ($user->has_voted) {
        abort(403, 'Anda sudah melakukan voting.');
    }

    DB::transaction(function () use ($user, $id) {
        Vote::create([
            'user_id' => $user->id,
            'candidate_id' => $id,
        ]);

        $user->update(['has_voted' => 1]);
    });

    return redirect()->route('vote.success');
}   

    public function success($voteId)
    {
        $vote = Vote::with('candidate')->findOrFail($voteId);

        return view('vote.success', [
            'candidate' => $vote->candidate
        ]);
    }
}
