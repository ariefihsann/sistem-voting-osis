@extends('layouts.app')

@section('content')
<div class="container mt-4">

<form method="POST" action="{{ route('logout') }}">
    @csrf
    <button type="submit" class="dropdown-item">Logout</button>
</form>


    {{-- TITLE --}}
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="fw-bold">📊 Hasil Voting Ketua OSIS</h2>

        <a href="{{ url('/logout') }}" 
           class="btn btn-danger btn-sm"
           onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
            Logout
        </a>

        <form id="logout-form" action="{{ route('logout') }}" method="POST">
            @csrf
        </form>
    </div>

    {{-- CARD PER KANDIDAT --}}
    <div class="row">
        @foreach ($candidates as $c)
        <div class="col-md-3 mb-4">
            <div class="card shadow-sm">
                <img src="{{ asset('images/'.$c->photo) }}" class="card-img-top" height="180" style="object-fit: cover;">
                <div class="card-body text-center">
                    <h5 class="card-title">{{ $c->name }}</h5>
                    <span class="badge bg-primary fs-5">{{ $c->votes_count }} Suara</span>
                </div>
            </div>
        </div>
        @endforeach
    </div>

    {{-- GRAFIK --}}
    <div class="card mt-4 shadow-sm">
        <div class="card-body">
            <h4 class="fw-bold mb-3">Grafik Perolehan Suara</h4>
            <canvas id="voteChart" height="100"></canvas>
        </div>
    </div>

</div>

{{-- Chart.js --}}
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
const ctx = document.getElementById('voteChart').getContext('2d');

new Chart(ctx, {
    type: 'bar',
    data: {
        labels: {!! json_encode($candidates->pluck('name')) !!},
        datasets: [{
            label: 'Jumlah Suara',
            data: {!! json_encode($candidates->pluck('votes_count')) !!},
            backgroundColor: 'rgba(54, 162, 235, 0.7)',
            borderColor: 'rgba(54, 162, 235, 1)',
            borderWidth: 2,
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: { display: false }
        },
        scales: {
            y: {
                beginAtZero: true,
                ticks: { stepSize: 1 }
            }
        }
    }
});
</script>

@endsection
