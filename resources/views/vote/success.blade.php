<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vote Berhasil!</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #eef7ff 0%, #e3fff1 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .success-box {
            background: white;
            width: 500px;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.1);
            text-align: center;
            animation: fadeUp 0.6s ease-out;
        }

        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .check-icon {
            width: 120px;
            height: 120px;
            margin: 0 auto 20px;
            background: #22c55e10;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            animation: pop 0.5s ease-out;
        }

        @keyframes pop {
            0% { transform: scale(0.5); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }

        .check-icon i {
            font-size: 55px;
            color: #22c55e;
        }

        h1 {
            color: #16a34a;
            font-size: 32px;
            margin-bottom: 10px;
            font-weight: 800;
        }

        .subtitle {
            color: #555;
            margin-bottom: 20px;
        }

        .candidate-name {
            font-size: 20px;
            font-weight: 700;
            margin-top: 8px;
            color: #047857;
        }

        .back-btn {
            margin-top: 30px;
            background: linear-gradient(135deg, #3b82f6, #2563eb);
            color: white;
            padding: 14px 30px;
            border-radius: 10px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            transition: .2s;
            text-decoration: none;
            display: inline-block;
        }

        .back-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(37,99,235,0.3);
        }
    </style>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body>

<div class="success-box">

    <div class="check-icon">
        <i class="fas fa-check-circle"></i>
    </div>

    <h1>Vote Berhasil!</h1>

    <p class="subtitle">Terima kasih telah berpartisipasi dalam pemilihan.<br>
    Suara Anda telah tercatat dan tidak dapat diubah.</p>

<p>Anda memilih kandidat:</p>
<div class="candidate-name">
    {{ strtoupper($candidate->name) }}
</div>


<form action="{{ route('logout') }}" method="POST">
    @csrf
    <button type="submit" class="back-btn">
        ← Keluar & Kembali ke Login
    </button>
</form>




</div>

</body>
</html>
