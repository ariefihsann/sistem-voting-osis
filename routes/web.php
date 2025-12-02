<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\VoteController;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| PUBLIC ROUTE (Halaman depan)
|--------------------------------------------------------------------------
*/
Route::get('/', function () {
    return view('welcome'); // Atau redirect('/login')
});


/*
|--------------------------------------------------------------------------
| DASHBOARD UTAMA (Auto Redirect Berdasarkan Role)
|--------------------------------------------------------------------------
*/
Route::get('/dashboard', function () {

    $user = auth()->user();

    if ($user->role === 'admin') {
        return redirect()->route('admin.dashboard');
    }

    return redirect()->route('vote.index');
})
->middleware(['auth', 'verified'])
->name('dashboard');


/*
|--------------------------------------------------------------------------
| PROFILE ROUTES (Bawaan Breeze)
|--------------------------------------------------------------------------
*/
Route::middleware('auth')->group(function () {

    Route::get('/profile', [ProfileController::class, 'edit'])
        ->name('profile.edit');

    Route::patch('/profile', [ProfileController::class, 'update'])
        ->name('profile.update');

    Route::delete('/profile', [ProfileController::class, 'destroy'])
        ->name('profile.destroy');
});


/*
|--------------------------------------------------------------------------
| VOTING ROUTES (Role: user/siswa)
|--------------------------------------------------------------------------
*/
Route::middleware(['auth', 'role:user'])->group(function () {

    Route::get('/vote', [VoteController::class, 'index'])->name('vote.index');
    Route::post('/vote/{id}', [VoteController::class, 'store'])->name('vote.store');

    // PAGE SUKSES – HARUS ADA PARAMETER {vote}
Route::get('/vote-success/{vote}', [VoteController::class, 'success'])
    ->name('vote.success');

});


/*
|--------------------------------------------------------------------------
| ADMIN ROUTES (Role: admin)
|--------------------------------------------------------------------------
*/
Route::middleware(['auth', 'role:admin'])->group(function () {
    Route::get('/admin', [AdminController::class, 'dashboard'])
        ->name('admin.dashboard');
});


require __DIR__.'/auth.php';
