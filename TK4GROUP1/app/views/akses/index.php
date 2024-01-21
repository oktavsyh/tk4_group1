<div class="container mt-3 text-light">

    <div class="row">
      <div class="col-lg-6">
        <?php Flasher::flash(); ?>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-lg-6">
        <button type="button" class="btn btn-primary tombolTambahData" data-toggle="modal" data-target="#formModal">
          Tambah Data Hak Akses
        </button>
      </div>
    </div>

    <h3>Daftar Hak Akses</h3>

    <table class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th scope="col">NamaAkses</th>
                        <th scope="col">Keterangan</th>
                        <th scope="col">ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach( $data['br'] as $br ) : ?>
                    <tr>
                        <td><?= $br['NamaAkses'];?></td>
                        <td> <?= $br['Keterangan'];?></td>
                        <td>
                        <a href="<?= BASEURL; ?>/akses/hapus/<?= $br['IdAkses']; ?>" class="badge badge-danger float-right" onclick="return confirm('yakin?');">hapus</a>
                        <a href="<?= BASEURL; ?>/akses/ubahDetail/<?= $br['IdAkses']; ?>" class="badge badge-primary float-right">Ubah</a>
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
        <h5 class="modal-title" id="formModalLabel">Tambah Data Akses</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="<?= BASEURL; ?>/akses/tambah" method="post">
          <input type="hidden" name="IdAkses" id="IdAkses">
          <div class="form-group">
            <label for="NamaAkses">NamaAkses</label>
            <input type="text" class="form-control" id="NamaAkses" name="NamaAkses" placeholder="NamaAkses">
          </div>

          <div class="form-group">
            <label for="Keterangan">Keterangan</label>
            <input type="text" class="form-control" id="Keterangan" name="Keterangan" placeholder="Keterangan">
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