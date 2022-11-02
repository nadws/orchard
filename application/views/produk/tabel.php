<?php $this->load->view('tema/Header', $title); ?>

<script src="<?= base_url('css_maruti/'); ?>js/jquery.min.js"></script>
<script src="<?php echo base_url('css_maruti/'); ?>assets/ajax.js"></script>

<!-- ======================================================== conten ======================================================= -->
<!-- Content Wrapper. Contains page content -->
<!-- <div class="content-wrapper"> -->
<?php
$ttl_modal = 0;
$ttl_jual = 0;
foreach ($produk as $op) {
	$ttl_modal += $op->harga_modal * $op->stok;
	$ttl_jual += $op->harga * $op->stok;
} ?>
<div class="content-header">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h1 class="m-0 text-dark">Record Produk</h1>
				<hr>
				<?php if ($this->session->userdata('id_role') == '1') : ?>
					<a href="<?= base_url("Match/produk_terlaris") ?>" class="btn btn-success mb-2 ">Produk Terlaris</a>

					<a href="<?= base_url("Match/tambah_produk2") ?>" class="btn btn-info mb-2 ">Tambah Produk</a>

					<div class="form-group float-right">
						<label for="upload">Total Modal</label>
						<p><strong><?= number_format($ttl_modal, 0) ?></strong></p>
					</div>
					<div class="form-group float-right mr-2">
						<label for="upload">Total Jual</label>
						<p><strong><?= number_format($ttl_jual, 0) ?></strong></p>
					</div>
					<!-- <a href="<?= base_url("Excel/export") ?>" class="btn btn-info mb-2 ml-2 float-right"><i class="fas fa-file-download"></i> Export</a>		
					<button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#import">
						<i class="fas fa-file-upload"></i> Import
					</button> -->
				<?php endif; ?>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="container-fluid">

			<hr>
			<select id="countriesDropdown" style="margin-left: 0.5em; display: inline-block;width: 200px; height: 32px;" class="form-control float-right" oninput="filterTable()">
				<option>All</option>
				<?php foreach ($kategori as $k) : ?>
					<?php if ($k->id_kategori == 13) : ?>
					<?php else : ?>
						<option><?= $k->nm_kategori ?></option>
					<?php endif ?>

				<?php endforeach ?>
			</select>
			<table id="produk" class="table text-sm" width="100%">

				<thead>
					<tr>
						<th>No</th>
						<th>Kategori</th>
						<th>Satuan</th>
						<th>SKU</th>
						<th>Product</th>
						<th>Harga Modal</th>
						<th>Harga Jual</th>
						<th>Stok</th>
						<th>Komisi</th>
						<th>Diskon</th>
						<th>Monitor</th>
						<?php if ($this->session->userdata('id_role') == '1') : ?>
							<th>Aksi</th>
						<?php endif; ?>
					</tr>
				</thead>
				<tbody id="myTable">
					<?php $i = 1; ?>
					<?php foreach ($produk as $k) : ?>

						<tr>
							<td><?= $i++; ?></td>
							<td><?= $k->nm_kategori; ?></td>
							<td><?= $k->satuan; ?></td>
							<td><?= $k->sku; ?></td>
							<td><a href="<?= base_url() ?>match/story_in_out/<?= $k->id_produk ?>" class="font-weight-bold" style="color: #787878;"><u><?= $k->nm_produk; ?> </u></a></td>
							<td><?= number_format($k->harga_modal); ?></td>
							<td><?= number_format($k->harga); ?></td>
							<td>
								<?= $k->stok ?>
							</td>
							<?php if (!empty($k->komisi)) : ?>
								<td><?= $k->komisi; ?>% </td>
							<?php else : ?>
								<td>0%</td>
							<?php endif; ?>
							<?php if (!empty($k->diskon)) : ?>
								<td><?= $k->diskon; ?>% </td>
							<?php else : ?>
								<td>0%</td>
							<?php endif; ?>
							<td>
								<!-- <a type="button" class="font-weight-bold" data-toggle="modal" data-target="#myModal<?= $k->id_produk ?>"> -->
								<?php if ($k->monitoring == "y") : ?>
									<span style="color: green;">ON</span>
								<?php else : ?>
									<span style="color: red;">OFF</span>
								<?php endif ?>


								<!-- </a> -->
								<!-- <?php if (empty($k->foto)) : ?>
										<img class="img-thumbnail" width="80" src="<?= base_url() ?>upload/produk/not_found.png" alt="">
										<?php else : ?>
											<img class="img-thumbnail" width="80" src="<?= base_url() ?>upload/produk/<?= $k->foto ?>" alt="">
											<img src="" alt="">
										<?php endif ?>
									-->
							</td>
							<?php if ($this->session->userdata('id_role') == '1') : ?>
								<td width="10%">
									<a href="<?= base_url() ?>match/edit_produk/<?= $k->id_produk ?>" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
									<a href="<?= base_url() ?>match/drop_produk/<?= $k->id_produk ?>" class="btn btn-danger btn-sm" onclick="return confirm('Apakah anda yakin ?')"><i class="fa fa-trash"></i></a>
								</td>
							<?php endif; ?>
						</tr>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<form action="<?= base_url('Excel/import_data'); ?>" method="post" enctype="multipart/form-data">
	<div class="modal fade" id="import" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" style="background: #FFA07A;">
					<h5 class="modal-title" id="exampleModalLabel">Import</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="upload">Import Produk</label>
						<input type="file" name="produk" id="upload" value="" class="form-control">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Import</button>
				</div>
			</div>
		</div>
	</div>
</form>

<?php foreach ($produk as $key => $value) : ?>
	<div id="myModal<?= $value->id_produk ?>" class="modal fade" role="dialog">
		<div class="modal-dialog modal-lg">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="background: #FADADD;">
					<h4 class="modal-title">History Monitoring Produk</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<?php
					$status = $this->db->join('tb_produk', 'tb_produk.id_produk = tb_monitoring2.id_produk', 'left')->order_by('tb_monitoring2.id_monitoring2', "desc")->limit(1)->get_where('tb_monitoring2', array('tb_monitoring2.id_produk' => $value->id_produk))->row();
					?>
					<?php if ($status) : ?>
						<?php
						$stok = $this->db->get_where('tb_monitoring', array('id_produk' => $value->id_produk, 'tanggal' => $status->tanggal))->result();

						$status2 = $this->db->get_where('tb_monitoring2', array('id_produk' => $value->id_produk))->result();
						?>
						<?php if ($status->status == "y") : ?>
							<h4 class="text-center"><u><?= $status->nm_produk ?></u></h4>
							<hr>
							<div class="row">
								<div class="col-md-6">
									<h5 class="text-center">Stok Masuk</h5>
									<hr>
									<table class="table table-bordered">
										<tr>
											<th>Tanggal</th>
											<th>Stok Masuk</th>
										</tr>
										<?php foreach ($stok as $stok2) : ?>
											<tr>
												<td><?= $stok2->tanggal ?></td>
												<td><?= $stok2->stok ?></td>
											</tr>
										<?php endforeach ?>
									</table>
								</div>
								<div class="col-md-6">
									<h5 class="text-center">Status</h5>
									<hr>
									<table class="table table-bordered">
										<tr>
											<th>Tanggal</th>
											<th>Status</th>
										</tr>
										<?php foreach ($status2 as $st2) : ?>
											<tr>
												<td><?= date('d F Y', strtotime($st2->tanggal)); ?></td>
												<td>
													<?php if ($st2->status == "y") : ?>
														ON
													<?php else : ?>
														OFF
													<?php endif ?>
												</td>
											</tr>
										<?php endforeach ?>
									</table>
								</div>
							</div>
						<?php else : ?>
							<h5 class="text-center">Opps, Produk tidak di monitoring!</h5>
						<?php endif ?>
					<?php else : ?>
						<h5 class="text-center">Opps, Produk tidak di monitoring!</h5>
					<?php endif ?>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
<?php endforeach ?>


<!-- ======================================================== conten ======================================================= -->

<script>
	function autofill_anak() {
		var nm_kry = document.getElementById('nm_kry').value;
		$.ajax({
			url: "<?php echo base_url(); ?>Match/cari_anak",
			data: '&nm_kry=' + nm_kry,
			success: function(data) {
				var hasil = JSON.parse(data);

				$.each(hasil, function(key, val) {
					document.getElementById('id_kry').value = val.id_kry;
					document.getElementById('nm_kry').value = val.nm_kry;
				});
			}
		});
	}
</script>
<script>
	function filterTable() {
		// Variables
		let dropdown, table, rows, cells, country, filter;
		dropdown = document.getElementById("countriesDropdown");
		table = document.getElementById("myTable");
		rows = table.getElementsByTagName("tr");
		filter = dropdown.value;

		// Loops through rows and hides those with countries that don't match the filter
		for (let row of rows) { // `for...of` loops through the NodeList
			cells = row.getElementsByTagName("td");
			country = cells[1] || null; // gets the 2nd `td` or nothing
			// if the filter is set to 'All', or this is the header row, or 2nd `td` text matches filter
			// alert(country.textContent);
			// alert(filter);
			if (filter === "All" || !country || (filter === country.textContent)) {
				row.style.display = ""; // shows this row
			} else {
				row.style.display = "none"; // hides this row
			}
		}
	}
	$("#checkAll").click(function() {
		$('input:checkbox').not(this).prop('checked', this.checked);
	});
</script>

<?php $this->load->view('tema/Footer'); ?>