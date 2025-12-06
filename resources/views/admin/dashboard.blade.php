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
                <a href="#" class="sidebar-item flex items-center px-6 py-3 text-gray-700 hover:text-blue-600">
                    <i class="fas fa-users mr-3"></i>
                    <span>Kandidat</span>
                </a>
                <a href="#" class="sidebar-item flex items-center px-6 py-3 text-gray-700 hover:text-blue-600">
                    <i class="fas fa-user-graduate mr-3"></i>
                    <span>Pemilih</span>
                </a>
                <a href="#" class="sidebar-item flex items-center px-6 py-3 text-gray-700 hover:text-blue-600">
                    <i class="fas fa-cog mr-3"></i>
                    <span>Pengaturan</span>
                </a>
                <a href="#" class="sidebar-item flex items-center px-6 py-3 text-gray-700 hover:text-blue-600">
                    <i class="fas fa-file-export mr-3"></i>
                    <span>Laporan</span>
                </a>
            </nav>
            
            <div class="p-6 mt-12">
                <div class="bg-blue-50 p-4 rounded-lg">
                    <p class="text-sm text-gray-700">Total Suara Masuk</p>
                    <p class="text-2xl font-bold text-blue-600">1,247</p>
                    <p class="text-xs text-gray-500 mt-1">dari 1,500 siswa</p>
                    <div class="w-full bg-gray-200 rounded-full h-2 mt-2">
                        <div class="bg-green-500 h-2 rounded-full progress-bar" style="width: 83%"></div>
                    </div>
                </div>
            </div>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 overflow-y-auto p-6 md:p-8">
            <!-- Header -->
            <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
                <div>
                    <h2 class="text-2xl font-bold text-gray-800">Dashboard Hasil Voting OSIS</h2>
                    <p class="text-gray-600">Pantau hasil pemilihan secara real-time</p>
                </div>
                <div class="mt-4 md:mt-0">
                    <span class="inline-flex items-center px-3 py-1 rounded-full text-sm font-medium bg-green-100 text-green-800">
                        <i class="fas fa-circle text-green-500 mr-1" style="font-size: 8px;"></i>
                        Live Voting
                    </span>
                    <button class="ml-3 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition">
                        <i class="fas fa-download mr-2"></i>Export Data
                    </button>
                </div>
            </div>

            <!-- Stats Cards -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
                <div class="bg-white p-6 rounded-xl shadow card-hover fade-in">
                    <div class="flex justify-between items-start">
                        <div>
                            <p class="text-gray-500 text-sm">Total Suara</p>
                            <p class="text-3xl font-bold mt-2">1,247</p>
                        </div>
                        <div class="p-3 bg-blue-100 rounded-lg">
                            <i class="fas fa-vote-yea text-blue-600 text-xl"></i>
                        </div>
                    </div>
                    <div class="mt-4 text-sm text-green-600">
                        <i class="fas fa-arrow-up mr-1"></i> 12.5% dari kemarin
                    </div>
                </div>

                <div class="bg-white p-6 rounded-xl shadow card-hover fade-in" style="animation-delay: 0.1s">
                    <div class="flex justify-between items-start">
                        <div>
                            <p class="text-gray-500 text-sm">Kandidat</p>
                            <p class="text-3xl font-bold mt-2">4</p>
                        </div>
                        <div class="p-3 bg-purple-100 rounded-lg">
                            <i class="fas fa-user-tie text-purple-600 text-xl"></i>
                        </div>
                    </div>
                    <div class="mt-4 text-sm text-gray-500">
                        Semua kandidat aktif
                    </div>
                </div>

                <div class="bg-white p-6 rounded-xl shadow card-hover fade-in" style="animation-delay: 0.2s">
                    <div class="flex justify-between items-start">
                        <div>
                            <p class="text-gray-500 text-sm">Partisipasi</p>
                            <p class="text-3xl font-bold mt-2">83.1%</p>
                        </div>
                        <div class="p-3 bg-green-100 rounded-lg">
                            <i class="fas fa-chart-line text-green-600 text-xl"></i>
                        </div>
                    </div>
                    <div class="mt-4 text-sm text-green-600">
                        <i class="fas fa-arrow-up mr-1"></i> 5.2% dari periode lalu
                    </div>
                </div>

                <div class="bg-white p-6 rounded-xl shadow card-hover fade-in" style="animation-delay: 0.3s">
                    <div class="flex justify-between items-start">
                        <div>
                            <p class="text-gray-500 text-sm">Sisa Waktu</p>
                            <p class="text-3xl font-bold mt-2">2 Hari</p>
                        </div>
                        <div class="p-3 bg-orange-100 rounded-lg">
                            <i class="fas fa-clock text-orange-600 text-xl"></i>
                        </div>
                    </div>
                    <div class="mt-4 text-sm text-gray-500">
                        Voting berakhir: 15 Des 2024
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
</div>

            </div>

            <!-- Detail Kandidat -->
            <div class="bg-white rounded-xl shadow overflow-hidden">
                <div class="px-6 py-4 border-b">
                    <h3 class="text-lg font-bold text-gray-800">Detail Hasil per Kandidat</h3>
                </div>
                
                <div class="overflow-x-auto">
                    <table class="w-full">
                        <thead class="bg-gray-50">
                            <tr>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Kandidat</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Kelas</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Jumlah Suara</th>
                                <th class="px6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Persentase</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Aksi</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">
                            <!-- Kandidat 1 -->
                            <tr class="hover:bg-gray-50 transition">
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="h-10 w-10 flex-shrink-0 bg-blue-100 rounded-full flex items-center justify-center">
                                            <span class="text-blue-800 font-bold">A</span>
                                        </div>
                                        <div class="ml-4">
                                            <div class="font-medium text-gray-900">Ahmad Rizki</div>
                                            <div class="text-sm text-gray-500">Ketua OSIS</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <span class="px-3 py-1 text-xs rounded-full bg-blue-100 text-blue-800">XI IPA 2</span>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="text-lg font-bold">412</div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="w-24 bg-gray-200 rounded-full h-2 mr-3">
                                            <div class="bg-blue-600 h-2 rounded-full" style="width: 33%"></div>
                                        </div>
                                        <span class="font-medium">33%</span>
                                    </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <span class="px-3 py-1 text-xs rounded-full bg-green-100 text-green-800 font-medium">
                                        <i class="fas fa-crown mr-1"></i> Posisi 1
                                    </span>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <button class="text-blue-600 hover:text-blue-900">
                                        <i class="fas fa-eye"></i> Detail
                                    </button>
                                </td>
                            </tr>
                            
                            <!-- Kandidat 2 -->
                            <tr class="hover:bg-gray-50 transition">
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="h-10 w-10 flex-shrink-0 bg-green-100 rounded-full flex items-center justify-center">
                                            <span class="text-green-800 font-bold">S</span>
                                        </div>
                                        <div class="ml-4">
                                            <div class="font-medium text-gray-900">Sari Dewi</div>
                                            <div class="text-sm text-gray-500">Wakil Ketua</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <span class="px-3 py-1 text-xs rounded-full bg-green-100 text-green-800">XI IPS 1</span>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="text-lg font-bold">389</div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="w-24 bg-gray-200 rounded-full h-2 mr-3">
                                            <div class="bg-green-600 h-2 rounded-full" style="width: 31%"></div>
                                        </div>
                                        <span class="font-medium">31%</span>
                                    </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <span class="px-3 py-1 text-xs rounded-full bg-blue-100 text-blue-800 font-medium">
                                        Posisi 2
                                    </span>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <button class="text-blue-600 hover:text-blue-900">
                                        <i class="fas fa-eye"></i> Detail
                                    </button>
                                </td>
                            </tr>
                            
                            <!-- Kandidat 3 -->
                            <tr class="hover:bg-gray-50 transition">
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="h-10 w-10 flex-shrink-0 bg-purple-100 rounded-full flex items-center justify-center">
                                            <span class="text-purple-800 font-bold">B</span>
                                        </div>
                                        <div class="ml-4">
                                            <div class="font-medium text-gray-900">Budi Santoso</div>
                                            <div class="text-sm text-gray-500">Sekretaris</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <span class="px-3 py-1 text-xs rounded-full bg-purple-100 text-purple-800">X IPA 3</span>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="text-lg font-bold">278</div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="w-24 bg-gray-200 rounded-full h-2 mr-3">
                                            <div class="bg-purple-600 h-2 rounded-full" style="width: 22%"></div>
                                        </div>
                                        <span class="font-medium">22%</span>
                                    </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <span class="px-3 py-1 text-xs rounded-full bg-yellow-100 text-yellow-800 font-medium">
                                        Posisi 3
                                    </span>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <button class="text-blue-600 hover:text-blue-900">
                                        <i class="fas fa-eye"></i> Detail
                                    </button>
                                </td>
                            </tr>
                            
                            <!-- Kandidat 4 -->
                            <tr class="hover:bg-gray-50 transition">
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="h-10 w-10 flex-shrink-0 bg-orange-100 rounded-full flex items-center justify-center">
                                            <span class="text-orange-800 font-bold">M</span>
                                        </div>
                                        <div class="ml-4">
                                            <div class="font-medium text-gray-900">Maya Indah</div>
                                            <div class="text-sm text-gray-500">Bendahara</div>
                                        </div>
                                    </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <span class="px-3 py-1 text-xs rounded-full bg-orange-100 text-orange-800">XII IPA 1</span>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="text-lg font-bold">168</div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="w-24 bg-gray-200 rounded-full h-2 mr-3">
                                            <div class="bg-orange-600 h-2 rounded-full" style="width: 14%"></div>
                                        </div>
                                        <span class="font-medium">14%</span>
                                    </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <span class="px-3 py-1 text-xs rounded-full bg-gray-100 text-gray-800 font-medium">
                                        Posisi 4
                                    </span>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <button class="text-blue-600 hover:text-blue-900">
                                        <i class="fas fa-eye"></i> Detail
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <div class="px-6 py-4 border-t text-sm text-gray-500">
                    <i class="fas fa-info-circle mr-2"></i> Data diperbarui setiap 5 menit secara otomatis
                </div>
            </div>
            
            <!-- Footer -->
            <div class="mt-8 text-center text-gray-500 text-sm">
                <p>Dashboard Admin Pemilihan OSIS © 2024 - SMA Negeri 1 Indonesia</p>
                <p class="mt-1">Versi 1.2.0 | <i class="fas fa-sync-alt mr-1"></i> Terakhir diperbarui: 13 Des 2024, 14:30</p>
            </div>
        </main>
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
                    '#2563eb',  // biru
                    '#10b981',  // hijau
                    '#f59e0b',  // orange
                    '#ef4444',  // merah
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