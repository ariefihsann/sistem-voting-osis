
<style>

/* ==== OVERLAY ==== */
.modal-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0, 0, 0, 0.55);
    backdrop-filter: blur(3px);
    opacity: 0;
    visibility: hidden;
    transition: .3s ease;
    z-index: 900;
}

/* ==== MODAL ==== */
.modal-container {
    position: fixed;
    top: 50%;
    left: 50%;
    width: 90%;
    max-width: 900px;
    background: #ffffff;
    border-radius: 18px;
    padding: 25px 28px;
    box-shadow: 0 25px 60px rgba(0,0,0,.25);
    transform: translate(-50%, -50%) scale(.8);
    opacity: 0;
    visibility: hidden;
    transition: .3s ease;
    z-index: 1000;
    max-height: 85vh;
    overflow-y: auto;
}

/* ==== ACTIVE CLASS ==== */
.modal-overlay.active,
.modal-container.active {
    visibility: visible;
    opacity: 1;
}

.modal-container.active {
    transform: translate(-50%, -50%) scale(1);
}

/* ==== HEADER ==== */
.modal-header {
    text-align: center;
    margin-bottom: 20px;
    position: relative;
}

.modal-header h2 {
    font-size: 28px;
    font-weight: 700;
    color: #1e293b;
}

.modal-header p {
    margin-top: 5px;
    color: #64748b;
    font-size: 15px;
}

.modal-close {
    position: absolute;
    top: -10px;
    right: -10px;
    width: 38px;
    height: 38px;
    background: #e2e8f0;
    border: none;
    border-radius: 50%;
    font-size: 20px;
    cursor: pointer;
    color: #475569;
    transition: .2s;
}

.modal-close:hover {
    background: #ef4444;
    color: white;
    transform: rotate(90deg);
}

/* ==== GRID ==== */
.modal-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
    gap: 25px;
}

/* ==== CARD ==== */
.candidate-card {
    background: white;
    border-radius: 14px;
    padding: 18px;
    text-align: center;
    position: relative;
    box-shadow: 0 5px 17px rgba(0, 0, 0, 0.08);
    transition: .25s ease;
    border: 2px solid transparent;
}

.candidate-header {
    text-align: left;
}


.candidate-number-modal {
    position: absolute;
    top: 12px;
    left: 12px;
    width: 26px;     /* ukuran lebih besar */
    height: 26px;
    border-radius: 50%;
    background: linear-gradient(135deg, #4f46e5, #6366f1);
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 13px; /* angka sedikit lebih besar */
    font-weight: 700;
    box-shadow: 0 3px 8px rgba(99,102,241,0.35);
    z-index: 25;
}

.candidate-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 12px 32px rgba(37,99,235,0.15);
    border-color: #2563eb;
}

/* Number badge */
.candidate-number {
    position: absolute;
    top: -6px;
    left: 10px;
    width: 20px;
    height: 20px;
    border-radius: 100%;
    background: linear-gradient(135deg, #4f46e5, #6366f1);
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 10px;
    font-weight: 600;
    box-shadow: 0 2px 6px rgba(99, 102, 241, 0.3);
    z-index: 10;
}
/* Image */
.candidate-img {
    width: 100%;
    height: 170px;
    object-fit: cover;
    border-radius: 12px;
    margin-bottom: 12px;
    transition: .3s ease;
}

.candidate-card:hover .candidate-number {
    transform: scale(1.08);
}

/* Name */
.candidate-card h3 {
    font-size: 1.15rem;
    font-weight: 700;
    color: #1e293b;
    margin: 12px 0;
}

/* Button */
.choose-btn {
    width: 100%;
    padding: 11px;
    background: linear-gradient(135deg, #2563eb, #1e40af);
    color: white;
    border: none;
    border-radius: 10px;
    font-weight: 600;
    cursor: pointer;
    transition: .25s ease;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 7px;
}

.choose-btn:hover {
    filter: brightness(92%);
    transform: translateY(-2px);
}

/* Responsive */
@media (max-width: 480px) {
    .modal-container {
        padding: 20px;
        width: 95%;
    }
    .candidate-img {
        height: 150px;
    }
}

/* Modal grid */
.modal-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 25px;
    padding: 10px;
}

/* Card */
.candidate-card {
    background: #ffffff;
    border-radius: 18px;
    padding: 20px;
    text-align: center;
    box-shadow: 0 6px 20px rgba(0,0,0,0.08);
    transition: .25s ease;
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    border: 2px solid transparent;
}

.candidate-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 12px 32px rgba(0,0,0,0.12);
    border-color: #2563eb;
}


/* Image */
.candidate-img {
    width: 100%;
    height: 180px;
    object-fit: cover;
    border-radius: 12px;
    margin-bottom: 15px;
    transition: .3s ease;
}

.candidate-card:hover .candidate-img {
    transform: scale(1.04);
}

/* Candidate name */
.candidate-card h3 {
    margin: 10px 0 18px;
    font-size: 1.2rem;
    font-weight: 700;
    color: #1e293b;
}

/* BUTTON di bawah */
.choose-btn {
    width: 100%;
    padding: 12px;
    background: linear-gradient(135deg, #2563eb, #1e40af);
    color: white;
    border: none;
    border-radius: 12px;
    cursor: pointer;
    font-weight: 600;
    font-size: 0.95rem;
    margin-top: auto; /* INI yang bikin tombol selalu di bawah */
    transition: .25s ease;
}

.choose-btn:hover {
    transform: translateY(-2px);
    filter: brightness(.92);
}

/* Responsive */
@media (max-width: 480px) {
    .candidate-img {
        height: 150px;
    }
}

.logout-btn {
    background: #ef4444;
    color: white;
    border: none;
    padding: 8px 18px;
    border-radius: 8px;
    font-weight: 600;
    cursor: pointer;
    display: flex;
    align-items: center;
    gap: 6px;
    box-shadow: 0 3px 10px rgba(239, 68, 68, 0.3);
    transition: .2s ease;
}

.logout-btn:hover {
    background: #dc2626;
    transform: translateY(-2px);
}

.logout-btn i {
    font-size: 15px;
}


</style>


@extends('layouts.app')

@section('content')

  <!-- Header -->
    <header class="header">
        <div class="container header-content">
            <div class="logo-container">
                <div class="logo">
                    <i class="fas fa-vote-yea"></i>
                </div>
                <div class="logo-text">
                    <h1>Pemilihan OSIS</h1>
                    <p>SMA Darul Ulum Banda Aceh</p>
                </div>
            </div>
            
            <div class="user-info">
                <div class="user-avatar">
                    <span>AN</span>
                </div>
<div class="user-details">
    <h3>{{ Auth::user()->name }}</h3>
</div>

<form method="POST" action="{{ route('logout') }}">
    @csrf
    <button type="submit" class="logout-btn">
        <i class="fas fa-sign-out-alt"></i> Logout
    </button>
</form>


            </div>
        </div>
    </header>

    <!-- Hero Section with Big Header -->
    <section class="hero-section">
        <div class="container hero-content">
            <h1 class="hero-title">Dashboard Pemilihan Ketua OSIS</h1>
            <p class="hero-subtitle">Pilihlah calon ketua OSIS sesuai dengan visi, misi, dan kualitas yang mereka tawarkan. Suara Anda menentukan masa depan sekolah!</p>
            
            <div class="hero-quote">
                <i class="fas fa-quote-left"></i>
                <span>Mari wujudkan masa depan sekolah yang lebih baik, bersama-sama.</span>
                <i class="fas fa-quote-right"></i>
            </div>
        </div>
    </section>

        <div class="container">
            <!-- Candidates Section -->
            <div class="candidates-section">
                <div class="section-header">
                    <h2 class="section-title">Calon Ketua & Wakil Ketua OSIS</h2>
                    <p class="section-subtitle">Kenali visi, misi, dan gagasan masing-masing calon sebelum menentukan pilihan</p>
                </div>

                <!-- Candidate 1 - Foto di Kiri, Visi Misi di Kanan -->
                <div class="candidate-container">
                    <div class="candidate-card photo-left">
                        <div class="candidate-photo-side">
                            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" 
                                 alt="Muhammad Rizki" class="candidate-photo">
                            <div class="candidate-number">01</div>
                        </div>
                        
                        <div class="candidate-content-side">
                                <div class="candidate-header">
                                    <div class="candidate-name">PASLON SATU</div>
                                    <div class="candidate-position">
                                        <i class="fas fa-user-tie"></i>
                                        <span>Muhammad Rizki & Aisyah Zahra</span>
                                    </div>
                                    <div class="candidate-class">Kelas XII IPA 2 & XII IPS 1</div>
                                </div>
                            
                            <div class="vision-mission-section">
                                <div class="section-label">
                                    <i class="fas fa-bullseye"></i>
                                    <span>Visi</span>
                                </div>
                                <div class="vision-text">
                                    Menjadikan OSIS sebagai wadah untuk membangun karakter siswa yang berintegritas, disiplin, dan berjiwa sosial tinggi.
                                </div>
                                
                                <div class="section-label">
                                    <i class="fas fa-tasks"></i>
                                    <span>Misi</span>
                                </div>
                                <ul class="mission-list">
                                    <li class="mission-item">
                                        <div class="mission-number">1</div>
                                        Mengadakan kegiatan sosial seperti bakti sekolah, donasi, dan layanan sosial masyarakat.
                                    </li>
                                    <li class="mission-item">
                                        <div class="mission-number">2</div>
                                        Melaksanakan program pembiasaan disiplin dan tata krama yang menyenangkan, bukan menghukum.
                                    </li>
                                    <li class="mission-item">
                                        <div class="mission-number">3</div>
                                        Meningkatkan kerja sama antar-organisasi sekolah agar kegiatan berjalan lebih tertata dan maksimal.
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Candidate 2 - Visi Misi di Kiri, Foto di Kanan -->
                <div class="candidate-container">
                    <div class="candidate-card photo-right">
                        <div class="candidate-photo-side">
                            <img src="https://images.unsplash.com/photo-1494790108755-2616b612b786?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" 
                                 alt="Fajar Ramadhan" class="candidate-photo">
                            <div class="candidate-number">02</div>
                        </div>
                        
                        <div class="candidate-content-side">
                            <div class="candidate-header">
                                <div class="candidate-name">PASLON DUA</div>
                                <div class="candidate-position">
                                    <i class="fas fa-user-tie"></i>
                                    <span>Fajar Ramadhan & Siti Khadijah</span>
                                </div>
                                <div class="candidate-class">Kelas XI IPA 3 & XII IPA 1</div>
                            </div>
                            
                            <div class="vision-mission-section">
                                <div class="section-label">
                                    <i class="fas fa-bullseye"></i>
                                    <span>Visi</span>
                                </div>
                                <div class="vision-text">
                                    Membentuk OSIS yang responsif, inovatif, dan peduli terhadap kebutuhan siswa.
                                </div>
                                
                                <div class="section-label">
                                    <i class="fas fa-tasks"></i>
                                    <span>Misi</span>
                                </div>
                                <ul class="mission-list">
                                    <li class="mission-item">
                                        <div class="mission-number">1</div>
                                        Mendorong lahirnya program-program baru seperti workshop digital, kewirausahaan, dan pengembangan diri.
                                    </li>
                                    <li class="mission-item">
                                        <div class="mission-number">2</div>
                                        Menyediakan layanan aspirasi siswa secara online dan offline untuk mempercepat penyelesaian masalah.
                                    </li>
                                    <li class="mission-item">
                                        <div class="mission-number">3</div>
                                        Mengoptimalkan peran ekstrakurikuler agar lebih aktif dan rutin mengadakan kegiatan.
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Candidate 3 - Foto di Kiri, Visi Misi di Kanan -->
                <div class="candidate-container">
                    <div class="candidate-card photo-left">
                        <div class="candidate-photo-side">
                            <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" 
                                 alt="Rizky Maulana" class="candidate-photo">
                            <div class="candidate-number">03</div>
                        </div>
                        
                        <div class="candidate-content-side">
                            <div class="candidate-header">
                                <div class="candidate-name">PASLON TIGA</div>
                                <div class="candidate-position">
                                    <i class="fas fa-user-tie"></i>
                                    <span>Rizky Maulana & Fatimah Azzahra</span>
                                </div>
                                <div class="candidate-class">Kelas XII IPA 3 & XII IPS 2</div>
                            </div>
                            
                            <div class="vision-mission-section">
                                <div class="section-label">
                                    <i class="fas fa-bullseye"></i>
                                    <span>Visi</span>
                                </div>
                                <div class="vision-text">
                                    Mewujudkan SMA Darul Ulum sebagai sekolah modern berbasis teknologi dengan tetap menjaga nilai-nilai keislaman dan tradisi Aceh yang luhur.
                                </div>
                                
                                <div class="section-label">
                                    <i class="fas fa-tasks"></i>
                                    <span>Misi</span>
                                </div>
                                <ul class="mission-list">
                                    <li class="mission-item">
                                        <div class="mission-number">1</div>
                                        Mengintegrasikan teknologi dalam proses belajar mengajar dan administrasi sekolah.
                                    </li>
                                    <li class="mission-item">
                                        <div class="mission-number">2</div>
                                        Melestarikan budaya Aceh melalui kegiatan ekstrakurikuler dan festival budaya tahunan.
                                    </li>
                                    <li class="mission-item">
                                        <div class="mission-number">3</div>
                                        Meningkatkan literasi digital bagi siswa dan guru melalui workshop rutin.
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Candidate 4 - Visi Misi di Kiri, Foto di Kanan -->
                <div class="candidate-container">
                    <div class="candidate-card photo-right">
                        <div class="candidate-photo-side">
                            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" 
                                 alt="Abdullah Hadi" class="candidate-photo">
                            <div class="candidate-number">04</div>
                        </div>
                        
                        <div class="candidate-content-side">
                            <div class="candidate-header">
                                <div class="candidate-name">PASLON EMPAT</div>
                                <div class="candidate-position">
                                    <i class="fas fa-user-tie"></i>
                                    <span>Abdullah Hadi & Nurul Hikmah</span>
                                </div>
                                <div class="candidate-class">Kelas XII IPS 3 & XII IPA 4</div>
                            </div>
                            
                            <div class="vision-mission-section">
                                <div class="section-label">
                                    <i class="fas fa-bullseye"></i>
                                    <span>Visi</span>
                                </div>
                                <div class="vision-text">
                                    Menjadikan SMA Darul Ulum sebagai sekolah yang peduli terhadap sosial dan lingkungan, dengan menumbuhkan rasa solidaritas dan kebersamaan yang tinggi.
                                </div>
                                
                                <div class="section-label">
                                    <i class="fas fa-tasks"></i>
                                    <span>Misi</span>
                                </div>
                                <ul class="mission-list">
                                    <li class="mission-item">
                                        <div class="mission-number">1</div>
                                        Mengembangkan program sosial dan kegiatan amal secara rutin di dalam dan luar sekolah.
                                    </li>
                                    <li class="mission-item">
                                        <div class="mission-number">2</div>
                                        Meningkatkan kepedulian terhadap lingkungan sekitar melalui gerakan bersih dan hijau.
                                    </li>
                                    <li class="mission-item">
                                        <div class="mission-number">3</div>
                                        Memperkuat hubungan antar angkatan dan alumni untuk pengembangan sekolah.
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

   <!-- OVERLAY -->
<div class="modal-overlay" id="modalOverlay"></div>

<!-- MODAL -->
<div class="modal-container" id="modalContainer">
    
    <div class="modal-header">
        <h2>Pilih Kandidat Anda</h2>
        <p>Klik pada kandidat pilihan Anda untuk memberikan suara</p>
        <button class="modal-close" id="modalClose">×</button>
    </div>

    <div class="modal-grid">

        @foreach($candidates as $index => $candidate)
        <div class="candidate-card">
            <div class="candidate-number-modal">{{ $index + 1 }}</div>

            <img src="{{ asset('images/'.$candidate->photo) }}" class="candidate-img">

            <h3>{{ $candidate->name }}</h3>

            <form action="/vote/{{ $candidate->id }}" method="POST">
                @csrf
                <button class="choose-btn" type="submit">Pilih Kandidat</button>
            </form>
        </div>
        @endforeach

    </div>

</div>

<script>
    document.addEventListener("DOMContentLoaded", () => {

    const modal = document.getElementById("modalContainer");
    const overlay = document.getElementById("modalOverlay");
    const open = document.getElementById("voteButton");
    const close = document.getElementById("modalClose");

    open.addEventListener("click", () => {
        modal.classList.add("active");
        overlay.classList.add("active");
        document.body.style.overflow = "hidden";
    });

    close.addEventListener("click", hideModal);
    overlay.addEventListener("click", hideModal);

    function hideModal() {
        modal.classList.remove("active");
        overlay.classList.remove("active");
        document.body.style.overflow = "auto";
    }
});

</script>