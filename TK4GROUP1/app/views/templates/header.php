<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Halaman <?= $data['judul']; ?></title>
    <link rel="stylesheet" href="<?= BASEURL; ?>/css/bootstrap.css">
    <link rel="stylesheet" href="<?= BASEURL; ?>/css/style.css">
</head>
<body class="bg-secondary">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
      <a class="navbar-brand" href="<?= BASEURL; ?>">TK 4 GROUP 1</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active" href="<?= BASEURL; ?>">Home <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link" href="<?= BASEURL; ?>/barang">Barang</a>
          <a class="nav-item nav-link" href="<?= BASEURL; ?>/pembelian">Pembelian</a>
          <a class="nav-item nav-link" href="<?= BASEURL; ?>/suplier">Suplier</a>
          <b><a class="nav-item nav-link" href="<?= BASEURL; ?>/report">Report Perhitungan Penjualan</a></b>
          <a class="nav-item nav-link" href="<?= BASEURL; ?>/pelanggan">Pelanggan</a>
          <a class="nav-item nav-link" href="<?= BASEURL; ?>/penjualan">Penjualan</a>
          <a class="nav-item nav-link" href="<?= BASEURL; ?>/pengguna">Pengguna</a>
          <a class="nav-item nav-link" href="<?= BASEURL; ?>/akses">Hak Akses</a>
        </div>
      </div>
  </div>
</nav>