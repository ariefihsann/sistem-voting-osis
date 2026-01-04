<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use App\Models\Candidate;
use App\Models\Vote;

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

        // CEK SUDAH VOTE ATAU BELUM (INI KUNCI)
        if (Vote::where('user_id', $user->id)->exists()) {
            return redirect()->route('vote.success',
                Vote::where('user_id', $user->id)->first()->id
            );
        }

        // Simpan vote
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
