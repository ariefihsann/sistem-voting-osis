<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Admin - Pemilihan OSIS</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    
    <style>
        /* Custom styles untuk animasi smooth */
        .card-hover {
            transition: all 0.3s ease;
        }
        .card-hover:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
        .sidebar-item {
            transition: all 0.2s ease;
        }
        .sidebar-item:hover {
            background-color: rgba(59, 130, 246, 0.1);
            border-left: 4px solid #3b82f6;
        }
        .progress-bar {
            transition: width 1s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .fade-in {
            animation: fadeIn 0.5s ease-out;
        }
    </style>
</head>
<body class="bg-gray-50 text-gray-800">


    <!-- Dashboard Container -->
    <div class="flex h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-white shadow-lg overflow-y-auto">
            <div class="p-6">
                <h1 class="text-2xl font-bold text-gray-800">
                    <i class="fas fa-vote-yea text-blue-500 mr-2"></i>
                    OSIS<span class="text-blue-500">Vote</span>
                </h1>
                <p class="text-gray-500 text-sm mt-1">Dashboard Admin</p>
            </div>
            
            <nav class="mt-6">
                <a href="#" class="sidebar-item flex items-center px-6 py-3 text-blue-600 bg-blue-50 border-l-4 border-blue-500">
                    <i class="fas fa-chart-bar mr-3"></i>
                    <span class="font-medium">Dashboard</span>
                </a>
            </nav>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 overflow-y-auto p-6 md:p-8">
            <!-- Header -->
            <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
                <div>
                    <h2 class="text-2xl font-bold text-gray-800">Dashboard Hasil Voting OSIS</h2>
                    <p class="text-gray-600">Pantau hasil pemilihan secara real-time</p>
                </div>

                
            </div>

            <!-- Stats Cards -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
                <div class="bg-white p-6 rounded-xl shadow card-hover fade-in">
                    <div class="flex justify-between items-start">
                        <div>
                            <p class="text-gray-500 text-sm">Total Suara</p>
                            <p class="text-3xl font-bold mt-2" id="totalVotes">
    {{ number_format($totalVotes) }}
</p>

                        </div>
                        <div class="p-3 bg-blue-100 rounded-lg">
                            <i class="fas fa-vote-yea text-blue-600 text-xl"></i>
                        </div>
                    </div>
                </div>

                <div class="bg-white p-6 rounded-xl shadow card-hover fade-in" style="animation-delay: 0.1s">
                    <div class="flex justify-between items-start">
                        <div>
                            <p class="text-gray-500 text-sm">Kandidat</p>
                            <p class="text-3xl font-bold mt-2">8</p>
                        </div>
                        <div class="p-3 bg-purple-100 rounded-lg">
                            <i class="fas fa-user-tie text-purple-600 text-xl"></i>
                        </div>
                    </div>
                    <div class="mt-4 text-sm text-gray-500">
                        Semua kandidat aktif
                    </div>
                </div>

            </div>

            <!-- Charts Section -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-8">
                <!-- Bar Chart -->
                <div class="bg-white p-6 rounded-xl shadow card-hover">
                    <div class="flex justify-between items-center mb-6">
                        <h3 class="text-lg font-bold text-gray-800">Hasil Voting per Kandidat</h3>
                        <select class="border border-gray-300 rounded-lg px-3 py-1 text-sm">
                            <option>Semua Kelas</option>
                            <option>Kelas 10</option>
                            <option>Kelas 11</option>
                            <option>Kelas 12</option>
                        </select>
                    </div>
                    <div class="h-72">
                        <canvas id="barChart"></canvas>

                    </div>
                </div>

                <!-- Pie Chart -->
<div class="bg-white p-6 rounded-xl shadow card-hover">
    <div class="flex justify-between items-center mb-6">
        <h3 class="text-lg font-bold text-gray-800">Persentase Perolehan Suara</h3>
        <button class="text-blue-600 text-sm font-medium">
            <i class="fas fa-expand mr-1"></i> Fullscreen
        </button>
    </div>

    <!-- CHART + LEGEND (VERTIKAL) -->
    <div class="flex flex-col items-center justify-center gap-4">

        <canvas id="pieChart" class="mb-1 max-w-[350px]"></canvas>

        <!-- Custom Legend -->
        <div id="pieLegend" class="flex flex-col items-center text-gray-700 text-sm"></div>

    </div>
</div>


</div>

 <div class="bg-white rounded-xl shadow overflow-hidden mb-8">
    <div class="px-6 py-4 border-b">
        <h3 class="text-lg font-bold text-gray-800">
            Detail Hasil Kandidat Laki-laki
        </h3>
    </div>

    <div class="overflow-x-auto">
        <table class="w-full">
            <thead class="bg-gray-50">
                <tr>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Kandidat</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Kelas</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Jumlah Suara</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Persentase</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                </tr>
            </thead>

            <tbody class="divide-y divide-gray-200">
                @foreach ($candidates->where('gender', 'L')->values() as $index => $c)
                <tr class="hover:bg-gray-50 transition">

                    <!-- Kandidat -->
                    <td class="px-6 py-4">
                        <div class="flex items-center">
                            <div class="h-10 w-10 bg-blue-100 rounded-full flex items-center justify-center">
                                <span class="text-blue-800 font-bold">
                                    {{ strtoupper(substr($c->name, 0, 1)) }}
                                </span>
                            </div>
                            <div class="ml-4">
                                <div class="font-medium text-gray-900">{{ $c->name }}</div>
                                <div class="text-sm text-gray-500">Kandidat OSIS</div>
                            </div>
                        </div>
                    </td>

                    <!-- Kelas -->
                    <td class="px-6 py-4">
                        <span class="px-3 py-1 text-xs rounded-full bg-blue-100 text-blue-800">
                            {{ $c->class ?? '-' }}
                        </span>
                    </td>

                    <!-- Suara -->
                    <td class="px-6 py-4 font-bold text-lg">
                        {{ $c->votes_count }}
                    </td>

                    <!-- Persentase -->
                    <td class="px-6 py-4">
                        <div class="flex items-center">
                            <div class="w-24 bg-gray-200 rounded-full h-2 mr-3">
                                <div class="h-2 bg-blue-600 rounded-full"
                                     style="width: {{ $c->percentage }}%"></div>
                            </div>
                            <span>{{ $c->percentage }}%</span>
                        </div>
                    </td>

                    <!-- Status -->
                    <td class="px-6 py-4">
                        <span class="px-3 py-1 text-xs rounded-full bg-gray-100 text-gray-800">
                            Posisi {{ $index + 1 }}
                        </span>
                    </td>

                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

<div class="bg-white rounded-xl shadow overflow-hidden">
    <div class="px-6 py-4 border-b">
        <h3 class="text-lg font-bold text-gray-800">
            Detail Hasil Kandidat Perempuan
        </h3>
    </div>

    <div class="overflow-x-auto">
        <table class="w-full">
            <thead class="bg-gray-50">
                <tr>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Kandidat</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Kelas</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Jumlah Suara</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Persentase</th>
                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                </tr>
            </thead>

            <tbody class="divide-y divide-gray-200">
                @foreach ($candidates->where('gender', 'P')->values() as $index => $c)
                <tr class="hover:bg-gray-50 transition">

                    <!-- Kandidat -->
                    <td class="px-6 py-4">
                        <div class="flex items-center">
                            <div class="h-10 w-10 bg-pink-100 rounded-full flex items-center justify-center">
                                <span class="text-pink-800 font-bold">
                                    {{ strtoupper(substr($c->name, 0, 1)) }}
                                </span>
                            </div>
                            <div class="ml-4">
                                <div class="font-medium text-gray-900">{{ $c->name }}</div>
                                <div class="text-sm text-gray-500">Kandidat OSIS</div>
                            </div>
                        </div>
                    </td>

                    <!-- Kelas -->
                    <td class="px-6 py-4">
                        <span class="px-3 py-1 text-xs rounded-full bg-pink-100 text-pink-800">
                            {{ $c->class ?? '-' }}
                        </span>
                    </td>

                    <!-- Suara -->
                    <td class="px-6 py-4 font-bold text-lg">
                        {{ $c->votes_count }}
                    </td>

                    <!-- Persentase -->
                    <td class="px-6 py-4">
                        <div class="flex items-center">
                            <div class="w-24 bg-gray-200 rounded-full h-2 mr-3">
                                <div class="h-2 bg-pink-500 rounded-full"
                                     style="width: {{ $c->percentage }}%"></div>
                            </div>
                            <span>{{ $c->percentage }}%</span>
                        </div>
                    </td>

                    <!-- Status -->
                    <td class="px-6 py-4">
                        <span class="px-3 py-1 text-xs rounded-full bg-gray-100 text-gray-800">
                            Posisi {{ $index + 1 }}
                        </span>
                    </td>

                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>


                
                <div class="px-6 py-4 border-t text-sm text-gray-500">
                    <i class="fas fa-info-circle mr-2"></i> Data diperbarui setiap 5 menit secara otomatis
                </div>
            </div>
</div>

            </div>
            
        </main>
         <div class="mt-8 text-center text-gray-500 text-sm">
                <p>Dashboard Admin Pemilihan OSIS © 2024 - SMA Negeri 1 Indonesia</p>
                <p class="mt-1">Versi 1.2.0 | <i class="fas fa-sync-alt mr-1"></i> Terakhir diperbarui: 13 Des 2024, 14:30</p>
            </div>
    </div>

    <!-- untuk grafik -->
     <script>
    const labels = @json($labels);
    const voteCounts = @json($voteCounts);

    const ctx = document.getElementById('barChart').getContext('2d');

    window.barChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Jumlah Suara Kandidat',
                data: voteCounts,
                backgroundColor: [
                    '#2563eb',
                    '#10b981',
                    '#f59e0b',
                    '#ef4444',
                    '#6366f1',
                ],
                borderColor: '#1e293b',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: { stepSize: 1 }
                }
            }
        }
    });
</script>

<script>
    const pieLabels = @json($labels);
    const pieData = @json($voteCounts);

    const pieCtx = document.getElementById('pieChart').getContext('2d');

   window.pieChart = new Chart(pieCtx, {
        type: 'pie',
        data: {
            labels: pieLabels,
            datasets: [{
                data: pieData,
                backgroundColor: [
    '#2563eb', // biru
    '#ef4444', // merah
    '#22c55e', // hijau
    '#f59e0b', // kuning
    '#a855f7', // ungu
    '#ec4899', // pink
    '#14b8a6', // teal
    '#6b7280'  // abu-abu // merah
                ],
                borderColor: '#fff',
                borderWidth: 2,
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'right',      // ⬅️ pindahkan ke kanan
                    align: 'center',
                    labels: {
                        boxWidth: 18,      // ukuran kotak warna
                        boxHeight: 18,
                        padding: 15,       // jarak antar item
                        font: {
                            size: 14,      // biar rapi & modern
                            weight: '600',
                        }
                    }
                }
            },
            layout: {
                padding: {
                    right: 30               // beri ruang antara chart & legend
                }
            }
        }
    });
</script>

<script>
setInterval(() => {
    fetch('/admin/realtime-votes')
        .then(res => res.json())
        .then(data => {
            if (window.barChart) {
                window.barChart.data.labels = data.labels;
                window.barChart.data.datasets[0].data = data.voteCounts;
                window.barChart.update();
            }

            if (window.pieChart) {
                window.pieChart.data.labels = data.labels;
                window.pieChart.data.datasets[0].data = data.voteCounts;
                window.pieChart.update();
            }
        });
}, 1500);
</script>

 

</body>
</html>