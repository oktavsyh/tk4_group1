<div class="container mt-3 text-light">

    <div class="row">
      <div class="col-lg-6">
        <?php Flasher::flash(); ?>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-lg-6">
        <button type="button" class="btn btn-primary tombolTambahData" data-toggle="modal" data-target="#formModal">
          Tambah Data Barang
        </button>
      </div>
    </div>

    <h3>Daftar Barang</h3>

    <table class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th scope="col">NamaBarang</th>
                        <th scope="col">Keterangan</th>
                        <th scope="col">Satuan</th>
                        <th scope="col">ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach( $data['br'] as $br ) : ?>
                    <tr>
                        <td><?= $br['NamaBarang'];?></td>
                        <td> <?= $br['Keterangan'];?></td>
                        <td> <?= $br['Satuan'];?></td>
                        <td>
                        <a href="<?= BASEURL; ?>/barang/hapus/<?= $br['IdBarang']; ?>" class="badge badge-danger float-right" onclick="return confirm('yakin?');">hapus</a>
                        <a href="<?= BASEURL; ?>/barang/ubahDetail/<?= $br['IdBarang']; ?>" class="badge badge-primary float-right">Ubah</a>
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
        <h5 class="modal-title" id="formModalLabel">Tambah Data Barang</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="<?= BASEURL; ?>/barang/tambah" method="post">
          <input type="hidden" name="IdBarang" id="IdBarang">
          <div class="form-group">
            <label for="NamaBarang">NamaBarang</label>
            <input type="text" class="form-control" id="NamaBarang" name="NamaBarang" placeholder="NamaBarang">
          </div>

          <div class="form-group">
            <label for="Keterangan">Keterangan</label>
            <input type="text" class="form-control" id="Keterangan" name="Keterangan" placeholder="Keterangan">
          </div>

          <div class="form-group">
            <label for="Satuan">Satuan</label>
            <input type="number" class="form-control" id="Satuan" name="Satuan" placeholder="Satuan">
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