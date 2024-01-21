<div class="container mt-3 text-light">
    <h3>Report Data Penjualan</h3>

    <table class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th scope="col">JumlahPenjualan</th>
                        <th scope="col">HargaJual</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach( $data['br'] as $br ) : ?>
                    <tr>
                        <td><?= $br['JumlahPenjualan'];?></td>
                        <td> <?= $br['HargaJual'];?></td>
                    </tr>
                    <?php $i++; ?>
                    <?php endforeach; ?>
                </tbody>
    </table>
    <p>Total Harga Jual :</p>
    <?= $data['br1']['TOTAL']; ?>
</div>






