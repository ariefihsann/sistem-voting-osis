
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
    color: #0a48abff;
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
    flex-direction: row;
    align-items: center;
    border: 2px solid transparent;
    align-items: flex-start;
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

/* container utama */
.candidate-card {
    display: flex;
    justify-content: center;
    gap: 48px;                /* ⬅️ jarak antar paslon (biar tidak mepet) */
    padding: 20px 40px;
    flex-direction: row;     /* foto dan nama sejajar */
}

/* tiap paslon */
.candidate-item {
    position: relative;
    text-align: center;
}

/* BINGKAI PUTIH + BORDER BIRU (seperti gambar 2) */
.photo-frame {
    width: 450px;
    height: 450px;
    padding: 8px;
    border-radius: 18px;
    border: 4px solid #2f6bff;
    box-sizing: border-box;
    display: flex;
    align-items: center;
    justify-content: center;
}

.photo-frame img {
    width: 100% !important;
    height: 100% !important;
    object-fit: cover;
    border-radius: 12px;
    display: block;
}

/* foto */
.candidate-photo {
    width: 180px;
    height: 240px;
    object-fit: cover;
    border-radius: 14px;
}

/* nomor paslon */
.candidate-number {
    position: absolute;
    width: 44px;       /* sebelumnya 52px */
    height: 44px;
    font-size: 18px;
    top: -14px;
    left: -14px;
    background: linear-gradient(135deg, #3b82f6, #6366f1);
    color: white;
    font-weight: 800;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 3;
    box-shadow: 0 6px 15px rgba(0,0,0,0.25);
}

/* nama paslon */
.candidate-name {
    margin-top: 12px;
    font-size: 16px;
    font-weight: 700;
    color: #002eadff;
    font-family: 'Poppins', 'Segoe UI', sans-serif;
}

/* =========================
   RESPONSIVE MOBILE
========================= */
@media (max-width: 768px) {

    .candidate-card {
        flex-direction: column;   /* ⬇️ turun ke bawah */
        gap: 32px;
    }

    .candidate-item {
        width: 100%;
        max-width: 240px;
        margin: 0 auto;
    }

    .photo-frame {
        width: 100%;
        height: 300px;
    }

    .candidate-name {
        font-size: 15px;
    }

    .candidate-number {
        width: 40px;
        height: 40px;
        font-size: 16px;
        top: -12px;
        left: -12px;
    }
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
                    <p class="section-subtitle">AYO TENTUKAN PEMIMPIN MASA DEPANMU!</p>
                </div>


            </div>    <!-- Candidate 1 - Foto di Kiri, Visi Misi di Kanan -->
             
<div class="candidate-container">
    <div class="candidate-card">

        <div class="candidate-item">
            <div class="candidate-number">1</div>

            <div class="photo-frame">
                            <img src="{{ asset('images/paslon/paslon1Cowok.jpeg') }}" 
                 alt="Foto Kandidat 1" class="candidate-photo">
            </div>

            <div class="candidate-name">
                M. Raja Habil Hilabil
            </div>
        </div>

        <div class="candidate-item">
            <div class="candidate-number">1</div>

            <div class="photo-frame">
                           <img src="{{ asset('images/paslon/paslon1Cewek.jpeg') }}" 
                 alt="Foto Kandidat 1   " class="candidate-photo">
            </div>

            <div class="candidate-name">
                Errulin Syakila
            </div>
        </div>

    </div>
</div>



<div class="candidate-container">
    <div class="candidate-card">

        <div class="candidate-item">
            <div class="candidate-number">2</div>

            <div class="photo-frame">
                            <img src="{{ asset('images/paslon/paslon2Cowok.jpeg') }}" 
                 alt="Foto Kandidat 2" class="candidate-photo">
            </div>

            <div class="candidate-name">
               Muhibbul Bahri
            </div>
        </div>

        <div class="candidate-item">
            <div class="candidate-number">2</div>

            <div class="photo-frame">
                           <img src="{{ asset('images/paslon/paslon2Cewek.jpeg') }}" 
                 alt="Foto Kandidat 2" class="candidate-photo">
            </div>

            <div class="candidate-name">
                Humaira Mulna
            </div>
        </div>

    </div>
</div>


                <!-- Candidate 3 - Foto di Kiri, Visi Misi di Kanan -->
                <div class="candidate-container">
    <div class="candidate-card">

        <div class="candidate-item">
            <div class="candidate-number">3</div>

            <div class="photo-frame">
                            <img src="{{ asset('images/paslon/paslon3Cowok.jpeg') }}" 
                 alt="Foto Kandidat 3" class="candidate-photo">
            </div>

            <div class="candidate-name">
                M. Sirazul Rafiul Z
            </div>
        </div>

        <div class="candidate-item">
            <div class="candidate-number">3</div>

            <div class="photo-frame">
                           <img src="{{ asset('images/paslon/paslon3Cewek.jpeg') }}" 
                 alt="Foto Kandidat 3" class="candidate-photo">
            </div>

            <div class="candidate-name">
                Zakya Alfataya
            </div>
        </div>

    </div>
</div>


                <!-- Candidate 4 - Visi Misi di Kiri, Foto di Kanan -->
                <div class="candidate-container">
    <div class="candidate-card">

        <div class="candidate-item">
            <div class="candidate-number">4</div>

            <div class="photo-frame">
                            <img src="{{ asset('images/paslon/paslon4Cowok.jpeg') }}" 
                 alt="Foto Kandidat 4" class="candidate-photo">
            </div>

            <div class="candidate-name">
                Zul Isyrafi
            </div>
        </div>

        <div class="candidate-item">
            <div class="candidate-number">4</div>

            <div class="photo-frame">
                           <img src="{{ asset('images/paslon/paslon4Cewek.jpeg') }}" 
                 alt="Foto Kandidat 4" class="candidate-photo">
            </div>

            <div class="candidate-name">
                Ninda Agustianda
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
             <div>
            <img src="{{ asset('images/'.$candidate->photo) }}" class="candidate-img">

            <div>
                            <h3>{{ $candidate->name }}</h3>

            <form action="/vote/{{ $candidate->id }}" method="POST">
                @csrf
                <button
  class="choose-btn"
  onclick="this.disabled=true; this.innerText='Memproses...'; this.form.submit();">
  Pilih Kandidat
</button>
            </form>
            </div>
            
            </div>
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