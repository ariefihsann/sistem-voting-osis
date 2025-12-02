    <!DOCTYPE html>
    <html lang="id">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>Dashboard Siswa - Pemilihan OSIS SMA Darul Ulum</title>
        
        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Poppins:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
        <!-- Icons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        :root {
            --primary: #2563eb;
            --primary-dark: #1d4ed8;
            --secondary: #7c3aed;
            --accent: #06b6d4;
            --light: #f8fafc;
            --dark: #0f172a;
            --gray: #64748b;
            --gray-light: #e2e8f0;
            --success: #10b981;
            --warning: #f59e0b;
            --danger: #ef4444;
            --card-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #f8fafc;
            color: var(--dark);
            line-height: 1.6;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header Styles */
        .header {
            background: white;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            position: sticky;
            top: 0;
            z-index: 100;
            padding: 1rem 0;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo-container {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .logo {
            width: 45px;
            height: 45px;
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.3rem;
            box-shadow: 0 4px 12px rgba(37, 99, 235, 0.2);
        }

        .logo-text h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 1.3rem;
            font-weight: 700;
            color: var(--dark);
            line-height: 1.2;
        }

        .logo-text p {
            font-size: 0.8rem;
            color: var(--gray);
            font-weight: 500;
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
            background: var(--light);
            padding: 8px 16px;
            border-radius: 50px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
        }

        .user-avatar {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: 600;
            font-size: 0.9rem;
        }

        .user-details h3 {
            font-size: 0.9rem;
            font-weight: 600;
        }

        .user-details p {
            font-size: 0.75rem;
            color: var(--gray);
        }

        /* Hero Section - Big Header */
        .hero-section {
            background: linear-gradient(135deg, #1e3a8a 0%, #3730a3 100%);
            color: white;
            padding: 5rem 0 4rem;
            margin-bottom: 3rem;
            position: relative;
            overflow: hidden;
        }

        .hero-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="%23ffffff" fill-opacity="0.1" d="M0,160L48,176C96,192,192,224,288,213.3C384,203,480,149,576,144C672,139,768,181,864,181.3C960,181,1056,139,1152,122.7C1248,107,1344,117,1392,122.7L1440,128L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>');
            background-size: cover;
            background-position: bottom;
            opacity: 0.2;
        }

        .hero-content {
            position: relative;
            z-index: 1;
            text-align: center;
            max-width: 900px;
            margin: 0 auto;
        }

        .hero-title {
            font-family: 'Poppins', sans-serif;
            font-size: 3.2rem;
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 1.5rem;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }

        .hero-subtitle {
            font-size: 1.3rem;
            font-weight: 400;
            opacity: 0.9;
            max-width: 700px;
            margin: 0 auto 2rem;
        }

        .hero-quote {
            font-size: 1.1rem;
            font-style: italic;
            margin-top: 2.5rem;
            padding-top: 1.5rem;
            border-top: 1px solid rgba(255, 255, 255, 0.2);
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            opacity: 0.8;
        }

        .hero-quote i {
            font-size: 1.5rem;
        }

        /* Main Content */
        .main-content {
            flex: 1;
            padding-bottom: 6rem;
        }

        /* Candidates Section */
        .candidates-section {
            margin-bottom: 4rem;
        }

        .section-header {
            text-align: center;
            margin-bottom: 3rem;
        }

        .section-title {
            font-family: 'Poppins', sans-serif;
            font-size: 2.2rem;
            font-weight: 700;
            color: var(--dark);
            margin-bottom: 10px;
            position: relative;
            display: inline-block;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: -8px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: linear-gradient(to right, var(--primary), var(--accent));
            border-radius: 2px;
        }

        .section-subtitle {
            color: var(--gray);
            font-size: 1.1rem;
            max-width: 700px;
            margin: 0 auto;
        }

        /* Candidate Cards with Alternating Layout */
        .candidate-container {
            margin-bottom: 3rem;
        }

        .candidate-card {
            display: flex;
            background: white;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: var(--card-shadow);
            transition: var(--transition);
            min-height: 400px;
        }

        .candidate-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
        }

        /* Photo Side */
        .candidate-photo-side {
            flex: 0 0 45%;
            position: relative;
            overflow: hidden;
        }

        .candidate-photo {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .candidate-card:hover .candidate-photo {
            transform: scale(1.05);
        }

        .candidate-number {
            position: absolute;
            top: 20px;
            width: 70px;
            height: 70px;
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: 800;
            font-size: 1.8rem;
            box-shadow: 0 4px 12px rgba(37, 99, 235, 0.3);
        }

        .photo-left .candidate-number {
            left: 20px;
            border-radius: 0 10px 10px 0;
        }

        .photo-right .candidate-number {
            right: 20px;
            border-radius: 10px 0 0 10px;
        }

        /* Content Side */
        .candidate-content-side {
            flex: 0 0 55%;
            padding: 2.5rem;
            display: flex;
            flex-direction: column;
        }

        .candidate-header {
            margin-bottom: 1.8rem;
        }

        .candidate-name {
            font-family: 'Poppins', sans-serif;
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--dark);
            margin-bottom: 8px;
        }

        .candidate-position {
            color: var(--primary);
            font-weight: 600;
            font-size: 1.1rem;
            margin-bottom: 5px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .candidate-position i {
            font-size: 1rem;
        }

        .candidate-class {
            color: var(--gray);
            font-size: 1rem;
            font-weight: 500;
        }

        /* Visi & Misi Section */
        .vision-mission-section {
            flex-grow: 1;
        }

        .section-label {
            font-size: 1.1rem;
            font-weight: 700;
            color: var(--dark);
            margin-bottom: 12px;
            display: flex;
            align-items: center;
            gap: 10px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .section-label i {
            color: var(--primary);
            font-size: 1rem;
        }

        .vision-text {
            font-size: 1rem;
            line-height: 1.6;
            color: var(--dark);
            margin-bottom: 1.5rem;
            background: rgba(37, 99, 235, 0.05);
            padding: 1.2rem;
            border-radius: 8px;
            border-left: 4px solid var(--primary);
        }

        .mission-list {
            list-style-type: none;
            padding-left: 0;
        }

        .mission-item {
            font-size: 0.95rem;
            line-height: 1.6;
            color: var(--dark);
            margin-bottom: 10px;
            padding-left: 30px;
            position: relative;
            padding-bottom: 10px;
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        }

        .mission-item:last-child {
            border-bottom: none;
        }

        .mission-number {
            position: absolute;
            left: 0;
            top: 0;
            width: 22px;
            height: 22px;
            background: var(--primary);
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.8rem;
            font-weight: 600;
        }

        /* Layout Alternating */
        .photo-left {
            flex-direction: row;
        }

        .photo-right {
            flex-direction: row-reverse;
        }

        /* Container Utama Footer */
.footer-cta-section {
    position: relative;
    width: 100%;
    margin-top: 80px; /* Memberi jarak jauh dari konten kartu di atasnya */
    padding: 80px 20px; /* Ruang napas di dalam kotak biru */
    
    /* Background Gradient Modern */
    background: linear-gradient(135deg, #1f1496ff 0%, #3709a2ff 100%); 
    
    /* Membuat sudut atas melengkung modern */
    border-top-left-radius: 50px;
    border-top-right-radius: 50px;
    
    /* Teks rata tengah & warna putih */
    text-align: center;
    color: #ffffff;
    
    /* Bayangan halus ke atas agar terpisah dari background body */
    box-shadow: 0 -10px 30px rgba(0,0,0,0.05);
}

/* Judul Besar */
.cta-title {
    font-size: 28px;
    font-weight: 700;
    margin-bottom: 15px;
    letter-spacing: -0.5px;
}

/* Sub-judul / Deskripsi */
.cta-subtitle {
    font-size: 16px;
    margin-bottom: 40px; /* Jarak antara teks dan tombol */
    opacity: 0.9; /* Sedikit transparan agar tidak berebut fokus dengan judul */
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
    line-height: 1.6;
}

/* Tombol Putih Modern */
.btn-white-action {
    display: inline-flex;
    align-items: center;
    gap: 10px; /* Jarak antara teks dan icon panah */
    
    background-color: #ffffff;
    color: #160d80ff; /* Warna teks ungu agar kontras dengan tombol putih */
    
    padding: 16px 48px;
    border-radius: 50px; /* Bentuk Pill */
    border: none;
    
    font-size: 16px;
    font-weight: 700;
    cursor: pointer;
    
    /* Efek bayangan tombol */
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
    transition: all 0.3s ease;
}

/* Efek Hover (Saat mouse diarahkan) */
.btn-white-action:hover {
    transform: translateY(-5px); /* Tombol naik sedikit */
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.25); /* Bayangan makin tebal */
    background-color: #f8fafc; /* Sedikit lebih gelap dari putih murni */
}

/* Animasi kecil pada icon panah saat hover */
.btn-white-action:hover i {
    transform: translateX(5px); /* Panah bergerak ke kanan */
    transition: transform 0.3s ease;
}

/* Responsive untuk HP (Layar kecil) */
@media (max-width: 768px) {
    .footer-cta-section {
        border-top-left-radius: 30px;
        border-top-right-radius: 30px;
        padding: 60px 20px;
    }
    
    .cta-title {
        font-size: 22px;
    }
    
    .btn-white-action {
        width: 100%; /* Tombol jadi full width di HP */
        justify-content: center;
    }
}

        /* Footer Button Section */
.footer-button-section {
    /* Mengembalikan ke posisi normal (ikut scroll) */
    position: relative;
    width: 100%;
    
    /* Menggunakan Flexbox untuk menengahkan konten secara horizontal & vertikal */
    display: flex;
    justify-content: center; /* Posisi horizontal di tengah */
    align-items: center;     /* Posisi vertikal di tengah */
    
    /* Memberikan jarak yang luas agar tombol 'bernafas' dan terlihat elegan */
    margin-top: 50px;     /* Jarak dari konten di atasnya */
    padding-bottom: 60px; /* Jarak dari ujung bawah layar */
    
    /* Opsional: Warna background transparan agar menyatu, 
       atau ganti #fff jika ingin kotak putih */
    background-color: transparent; 
    z-index: 1;
}

/* Tambahan: Pastikan container di dalamnya juga rapi */
.footer-button-content {
    display: flex;
    justify-content: center;
    width: 100%;
}

        .vote-info {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .vote-status {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.9rem;
            font-weight: 500;
        }

        .status-dot {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background-color: var(--success);
        }

        .vote-reminder {
            display: flex;
            align-items: center;
            gap: 5px;
            font-size: 0.85rem;
            color: var(--gray);
        }

        .vote-reminder i {
            color: var(--warning);
        }

.vote-button {
    /* Ukuran dan bentuk */
    padding: 12px 40px;      /* Tombol lebih lebar (40px) terlihat lebih gagah */
    border-radius: 50px;     /* Membuat sudut membulat sempurna (pill shape) */
    border: none;
    
    /* Warna Gradient (Sesuai gambar Anda) */
    background: linear-gradient(90deg, #4F46E5 0%, #7C3AED 100%); /* Contoh ungu modern */
    color: white;
    
    /* Typography */
    font-size: 16px;
    font-weight: 600;
    letter-spacing: 0.5px;
    cursor: pointer;
    
    /* Bayangan halus agar tombol terlihat melayang (3D effect) */
    box-shadow: 0 10px 20px -10px rgba(124, 58, 237, 0.5);
    transition: all 0.3s ease; /* Animasi halus saat disentuh */
}

.vote-button:hover {
    transform: translateY(-3px); /* Tombol naik sedikit ke atas */
    box-shadow: 0 15px 25px -10px rgba(124, 58, 237, 0.7); /* Bayangan makin kuat */
}

.vote-button:active {
    transform: translateY(-1px);
}

        /* Responsive */
        @media (max-width: 992px) {
            .candidate-card {
                flex-direction: column;
                min-height: auto;
            }
            
            .candidate-photo-side {
                flex: 0 0 300px;
            }
            
            .photo-left, .photo-right {
                flex-direction: column;
            }
            
            .photo-left .candidate-number,
            .photo-right .candidate-number {
                left: 20px;
                right: auto;
                border-radius: 0 10px 10px 0;
            }
        }

        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }
            
            .hero-subtitle {
                font-size: 1.1rem;
            }
            
            .section-title {
                font-size: 1.8rem;
            }
            
            .candidate-photo-side {
                flex: 0 0 250px;
            }
            
            .candidate-content-side {
                padding: 1.8rem;
            }
            
            .candidate-name {
                font-size: 1.5rem;
            }
            
            .footer-button-content {
                flex-direction: column;
                gap: 15px;
                align-items: flex-start;
            }
            
            .vote-button {
                width: 100%;
                justify-content: center;
                padding: 14px 30px;
            }
            
            .header-content {
                flex-direction: column;
                gap: 15px;
                align-items: flex-start;
            }
            
            .user-info {
                align-self: flex-end;
                margin-top: -50px;
            }
        }
        
        @media (max-width: 480px) {
            .hero-title {
                font-size: 2rem;
            }
            
            .hero-subtitle {
                font-size: 1rem;
            }
            
            .candidate-photo-side {
                flex: 0 0 200px;
            }
            
            .candidate-content-side {
                padding: 1.5rem;
            }
            
            .candidate-name {
                font-size: 1.3rem;
            }
            
            .candidate-number {
                width: 60px;
                height: 60px;
                font-size: 1.5rem;
            }

            /* Button */
.vote-button {
    background: linear-gradient(135deg, #3b82f6, #6366f1);
    color: #fff;
    border: none;
    padding: 12px 22px;
    border-radius: 10px;
    font-size: 16px;
    cursor: pointer;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    transition: .2s;
}
.vote-button:hover { transform: scale(1.05); }

/* overlay */

/* modal wrap */
.modal-container {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(.8);
    width: 85%;
    max-width: 950px;
    background: white;

    /* FIX */
    display: none;
    opacity: 0;
    visibility: hidden;
    transition: .25s ease;

    z-index: 999;
}

/* header */
.modal-header {
    text-align: center;
    margin-bottom: 25px;
    position: relative;
}
.modal-header h2 {
    font-size: 26px;
    font-weight: 700;
    color: #1f2d55;
}
.modal-header p {
    margin-top: 6px;
    color: #666;
}
.modal-close {
    position: absolute;
    top: -12px; right: -12px;
    width: 35px; height: 35px;
    background: #eee;
    border: none;
    border-radius: 50%;
    cursor: pointer;
    font-size: 22px;
}

/* grid */
.modal-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 18px;
}

/* card */
.candidate-card {
    background: #fff;
    padding: 20px;
    border-radius: 18px;
    box-shadow: 0 4px 14px rgba(0,0,0,0.1);
    text-align: center;
    position: relative;
    transition: .2s;
}
.candidate-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 22px rgba(0,0,0,0.15);
}
.candidate-number {
    position: absolute;
    top: -12px; left: 12px;
    background: linear-gradient(135deg,#3b82f6,#6366f1);
    color:#fff;
    padding:5px 13px;
    border-radius:50px;
    font-weight:700;
    font-size:14px;
}
.candidate-img {
    width: 110px;
    height: 110px;
    object-fit: contain;
    margin-bottom: 12px;
}

/* button */
.choose-btn {
    background: linear-gradient(135deg,#3b82f6,#6366f1);
    border: none;
    color: #fff;
    padding: 10px 15px;
    width: 100%;
    border-radius: 12px;
    cursor: pointer;
    font-weight: 600;
    margin-top: 10px;
    transition: .2s;
}
.choose-btn:hover { transform: scale(1.03); }

/* =============== MODAL OVERLAY =============== */
.modal-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0, 0, 0, 0.45);
    backdrop-filter: blur(2px);
    z-index: 900;
    opacity: 0;
    visibility: hidden;
    transition: .25s ease;
}



/* =============== SHOW MODAL CLASS =============== */
.modal-overlay.active{
    display: block;
    opacity: 1;
    visibility: visible;
}
.modal-container.active {
    display: block;
    opacity: 1;
    visibility: visible;
    transform: translate(-50%, -50%) scale(1);      
}

/* =============== HEADER =============== */
.modal-header {
    text-align: center;
    margin-bottom: 20px;
}

.modal-header h2 {
    font-size: 26px;
    font-weight: 700;
    color: #333;
}

.modal-header p {
    color: #666;
    margin-top: 5px;
}

/* Close button */
.modal-close {
    position: absolute;
    top: 12px;
    right: 18px;
    border: none;
    background: none;
    font-size: 28px;
    cursor: pointer;
}

/* =============== GRID =============== */
.modal-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
    gap: 25px;
    padding-bottom: 20px;
}

/* =============== CARD =============== */
.candidate-card {
    background: #ffffff;
    border-radius: 14px;
    padding: 18px;
    text-align: center;
    box-shadow: 0 4px 18px rgba(0,0,0,0.1);
    transition: .25s ease;
}

.candidate-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 25px rgba(0,0,0,0.15);
}

/* Image */
.candidate-img {
    width: 100%;
    height: 180px;
    object-fit: cover;
    border-radius: 10px;
    margin-bottom: 12px;
}

/* Number bubble */
.candidate-number {
    background: #4a56ff;
    color: white;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: 600;
    position: absolute;
    top: -12px;
    left: -12px;
}

/* Choose button */
.choose-btn {
    width: 100%;
    margin-top: 12px;
    background: linear-gradient(90deg, #4e5df5, #7f4dff);
    border: none;
    color: white;
    padding: 10px 14px;
    border-radius: 10px;
    cursor: pointer;
    font-weight: 600;
    transition: .25s ease;
}

.choose-btn:hover {
    filter: brightness(.9);
}

.modal-overlay {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0.75);
         display: none;
        opacity: 0;
        visibility: hidden;
        align-items: center;
        justify-content: center;
        z-index: 9999;
        backdrop-filter: blur(5px);
        animation: fadeIn 0.3s ease;
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    .modal-dialog {
        background: white;
        border-radius: 20px;
        max-width: 1000px;
        width: 90%;
        max-height: 90vh;
        overflow-y: auto;
        box-shadow: 0 25px 50px rgba(0, 0, 0, 0.3);
        animation: slideUp 0.4s ease;
    }

    @keyframes slideUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .modal-header {
        padding: 24px 30px;
        border-bottom: 1px solid #e2e8f0;
        display: flex;
        justify-content: space-between;
        align-items: flex-start;
        background: linear-gradient(135deg, #f8fafc 0%, #ffffff 100%);
        border-radius: 20px 20px 0 0;
        position: sticky;
        top: 0;
        z-index: 10;
    }

    .modal-title-section {
        flex: 1;
    }

    .modal-title {
        font-family: 'Poppins', sans-serif;
        font-size: 1.8rem;
        font-weight: 700;
        color: #1e293b;
        margin-bottom: 8px;
        display: flex;
        align-items: center;
    }

    .modal-subtitle {
        color: #64748b;
        font-size: 1rem;
        margin: 0;
    }

    .modal-close {
        background: #f1f5f9;
        border: none;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #64748b;
        font-size: 1.2rem;
        cursor: pointer;
        transition: all 0.3s ease;
        margin-left: 20px;
        flex-shrink: 0;
    }

    .modal-close:hover {
        background: #ef4444;
        color: white;
        transform: rotate(90deg);
    }

    .modal-body {
        padding: 30px;
    }

    .modal-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
        gap: 25px;
        margin-bottom: 30px;
    }

    .candidate-card-modal {
        background: white;
        border-radius: 16px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
        transition: all 0.3s ease;
        position: relative;
        border: 2px solid transparent;
        display: flex;
        flex-direction: column;
    }

    .candidate-card-modal:hover {
        transform: translateY(-8px);
        box-shadow: 0 15px 35px rgba(37, 99, 235, 0.15);
        border-color: #2563eb;
    }

    .candidate-number-modal {
        position: absolute;
        top: 15px;
        left: 15px;
        width: 40px;
        height: 40px;
        background: linear-gradient(135deg, #2563eb, #7c3aed);
        color: white;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: 700;
        font-size: 1.2rem;
        z-index: 2;
        box-shadow: 0 4px 12px rgba(37, 99, 235, 0.3);
    }

    .candidate-photo-modal {
        position: relative;
        height: 180px;
        overflow: hidden;
        background: linear-gradient(135deg, #f1f5f9, #e2e8f0);
    }

    .candidate-img-modal {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.5s ease;
    }

    .candidate-card-modal:hover .candidate-img-modal {
        transform: scale(1.1);
    }

    .candidate-overlay {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(to bottom, transparent 60%, rgba(0, 0, 0, 0.3));
    }

    .candidate-info-modal {
        padding: 20px;
        flex-grow: 1;
    }

    .candidate-name-modal {
        font-family: 'Poppins', sans-serif;
        font-size: 1.2rem;
        font-weight: 600;
        color: #1e293b;
        margin-bottom: 10px;
        text-align: center;
    }

    .candidate-class-modal {
        color: #64748b;
        font-size: 0.85rem;
        margin-bottom: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 6px;
    }

    .candidate-class-modal i {
        color: #2563eb;
        font-size: 0.9rem;
    }

    .candidate-motto-modal {
        color: #475569;
        font-size: 0.9rem;
        font-style: italic;
        text-align: center;
        margin-top: 10px;
        padding: 10px;
        background: rgba(37, 99, 235, 0.05);
        border-radius: 8px;
        display: flex;
        align-items: center;
        gap: 8px;
    }

    .candidate-motto-modal i {
        color: #2563eb;
        font-size: 0.8rem;
        flex-shrink: 0;
    }

    .vote-form-modal {
        padding: 0 20px 20px;
        margin-top: auto;
    }

    .choose-btn-modal {
        width: 100%;
        padding: 14px;
        background: linear-gradient(135deg, #2563eb, #1d4ed8);
        color: white;
        border: none;
        border-radius: 10px;
        font-family: 'Poppins', sans-serif;
        font-size: 1rem;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        box-shadow: 0 4px 15px rgba(37, 99, 235, 0.3);
    }

    .choose-btn-modal:hover {
        background: linear-gradient(135deg, #1d4ed8, #1e40af);
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(37, 99, 235, 0.4);
    }

    .choose-btn-modal:active {
        transform: translateY(0);
    }

    .candidate-hover-effect {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(135deg, rgba(37, 99, 235, 0.1), transparent);
        opacity: 0;
        transition: opacity 0.3s ease;
        pointer-events: none;
        border-radius: 16px;
    }

    .candidate-card-modal:hover .candidate-hover-effect {
        opacity: 1;
    }

    .modal-footer {
        padding: 20px;
        background: #f8fafc;
        border-radius: 12px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-top: 1px solid #e2e8f0;
    }

    .vote-reminder-modal {
        display: flex;
        align-items: center;
        gap: 10px;
        color: #dc2626;
        font-size: 0.9rem;
        font-weight: 500;
    }

    .vote-reminder-modal i {
        font-size: 1rem;
    }

    .vote-count-modal {
        display: flex;
        align-items: center;
        gap: 10px;
        color: #475569;
        font-size: 0.9rem;
        font-weight: 500;
    }

    .vote-count-modal i {
        color: #2563eb;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .modal-dialog {
            width: 95%;
            max-height: 95vh;
        }
        
        .modal-grid {
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }
        
        .modal-header {
            padding: 20px;
            flex-direction: column;
            gap: 15px;
        }
        
        .modal-close {
            position: absolute;
            top: 20px;
            right: 20px;
            margin: 0;
        }
        
        .modal-footer {
            flex-direction: column;
            gap: 15px;
            align-items: flex-start;
        }
    }

    @media (max-width: 480px) {
        .modal-grid {
            grid-template-columns: 1fr;
        }
        
        .modal-title {
            font-size: 1.5rem;
        }
        
        .modal-subtitle {
            font-size: 0.9rem;
        }
        
        .candidate-photo-modal {
            height: 150px;
        }
    }


        }
    </style>
</head>
<body>


    <!-- Main Content -->
    <main class="main-content">
        @yield('content')
    </main>

    <!-- Footer Button Section -->
<div class="footer-cta-section">
    <div class="footer-content">
        <h2 class="cta-title">Sudah Mantap dengan Pilihan Anda?</h2>
        <p class="cta-subtitle">
            Pastikan pilihan sesuai hati nurani. Suara Anda menentukan masa depan sekolah kita.
        </p>
        
        <button class="btn-white-action" id="voteButton">
            Lanjut ke Pemilihan <i class="fas fa-arrow-right"></i>
        </button>
    </div>
</div>
</body>
</html>

</body>
</html>