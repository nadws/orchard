<?php
$file = "DATA PRODUK ORCHARD.xlsx";
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=$file");
?>
<table class="table" border="1">
	<thead>
		<tr>
            <th>Produk</th>
			<th>Kategori</th>
            <th>Satuan</th>
            <th>SKU</th>
            <th>Harga Modal</th>
            <th>Harga Jual</th>
            <th>Stok</th>
            <th>Diskon</th>
            <th>Komisi</th>
            
		</tr>
	</thead>
	
	<tbody >
		<?php
		foreach ($produk as $p): 
			?>
			<tr>
                <td><?= $p->nm_produk; ?></td>
                <td><?= $p->nm_kategori; ?></td>
                <td><?= $p->satuan; ?></td>
                <td><?= $p->sku; ?></td>
                <td><?= $p->harga_modal; ?></td>
                <td><?= $p->harga; ?></td>
                <td><?= $p->stok; ?></td>
                <td><?= $p->diskon; ?></td>
                <td><?= $p->komisi; ?></td>
			</tr>
		<?php endforeach ?>
	</tbody>
</table>


