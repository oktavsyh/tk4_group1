<div class="container mt-3 text-light">

    <div class="row">
      <div class="col-lg-6">
        <?php Flasher::flash(); ?>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-lg-6">
        <button type="button" class="btn btn-primary tombolTambahData" data-toggle="modal" data-target="#formModal">
          Tambah Data Pelanggan
        </button>
      </div>
    </div>

    <h3>Daftar Pelanggan</h3>

    <table class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th scope="col">NamaPelanggan</th>
                        <th scope="col">NoTelp</th>
                        <th scope="col">ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach( $data['br'] as $br ) : ?>
                    <tr>
                        <td><?= $br['NamaPelanggan'];?></td>
                        <td> <?= $br['NoTelp'];?></td>
                        <td>
                        <a href="<?= BASEURL; ?>/pelanggan/hapus/<?= $br['IdPelanggan']; ?>" class="badge badge-danger float-right" onclick="return confirm('yakin?');">hapus</a>
                        <a href="<?= BASEURL; ?>/pelanggan/ubahDetail/<?= $br['IdPelanggan']; ?>" class="badge badge-primary float-right">Ubah</a>
                    </tr>
                    <?php $i++; ?>
                    <?php endforeach; ?>
                </tbody>
    </table>

</div>


<!-- Modal -->
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="formModalLabel">Tambah Data Pelanggan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="<?= BASEURL; ?>/barang/tambah" method="post">
          <input type="hidden" name="IdPelanggan" id="IdPelanggan">
          <div class="form-group">
            <label for="NamaPelanggan">NamaPelanggan</label>
            <input type="text" class="form-control" id="NamaPelanggan" name="NamaPelanggan" placeholder="NamaPelanggan">
          </div>

          <div class="form-group">
            <label for="Keterangan">NoTelp</label>
            <input type="number" class="form-control" id="NoTelp" name="NoTelp" placeholder="NoTelp">
          </div>
      </div>
      <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Tambah Data</button>
        </form>
      </div>
    </div>
  </div>
</div>




