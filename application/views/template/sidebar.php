<style>
	.slimScrollBar {
		background: none repeat scroll 0 0 gray !important;
		border-radius: 0;
		display: none;
		height: 702.936px;
		position: absolute;
		right: 1px;
		top: 145px;
		width: 10px !important;
		z-index: 99;
		opacity: 0.7 !important;
	}
</style>

<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="<?php echo base_url(); ?>assets/template/dist/img/user.png" class="img-circle" id="lblFtoUser3" alt="User Image">
			</div>
			<div class="pull-left info">
				<p id="lblNmUser3"><?php echo $this->session->userdata('namauser'); ?></p>
				<a href="#"><i class="fa fa-circle text-success"></i>Online</a>
			</div>
		</div>


		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">

			<li class="header">MENU</li>
			<li class="<?php if ($this->uri->segment(1) == 'home' || $this->uri->segment(1) == '') {
							echo 'active';
						} ?>">
				<a href="<?php echo base_url('home'); ?>">
					<i class="fa fa-home"></i>
					<span class="tlt-menu"><b>Home</b></span></a>
			</li>
			<li class="treeview <?php if ($this->uri->segment(1) == 'buku') {
									echo 'active';
								} ?>">
				<a href="#">
					<i class="fa fa-book"></i>
					<span class="tlt-menu">Buku</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li <?php if ($this->uri->segment(2) == 'daftarBuku') {
							echo 'class="active"';
						} ?>><a href="<?php echo base_url('buku/daftarBuku'); ?>"><i class="fa fa-circle"></i>Daftar Buku Tersedia</a></li>
					<li <?php if ($this->uri->segment(2) == 'daftarDipinjam') {
							echo 'class="active"';
						} ?>><a href="<?php echo base_url('buku/daftarDipinjam'); ?>"><i class="fa fa-circle"></i>Daftar Buku Dipinjam</a></li>

				</ul>
			</li>
			<li class="<?php if ($this->uri->segment(1) == 'siswa') {
							echo 'active';
						} ?>">
				<a href="<?php echo base_url('siswa/daftarSiswa'); ?>">
					<i class="fa fa-user"></i>
					<span class="tlt-menu"><b>Siswa</b></span></a>
			</li>



			<li class="treeview <?php if ($this->uri->segment(1) == 'peminjaman') {
									echo 'active';
								} ?>">
				<a href="#">
					<i class="fa fa-bookmark-o"></i>
					<span class="tlt-menu">Transaksi</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li <?php if ($this->uri->segment(2) == 'daftarPeminjaman') {
							echo 'class="active"';
						} ?>><a href="<?php echo base_url('peminjaman/daftarPeminjaman'); ?>"><i class="fa fa-circle"></i>Daftar Peminjaman</a></li>
					<li <?php if ($this->uri->segment(2) == 'daftarPengembalian') {
							echo 'class="active"';
						} ?>><a href="<?php echo base_url('peminjaman/daftarPengembalian'); ?>"><i class="fa fa-circle"></i>Daftar Pengembalian</a></li>
				</ul>
			</li>
		</ul>
		<!-- end MENU -->
	</section>
	<!-- /.sidebar -->
</aside>