<?php defined('BASEPATH') || exit('No direct script access allowed');

class peminjaman_model extends Data_Model
{
    function __construct()
    {
        parent::__construct();
        $this->table_name = 'siswa';
        $this->pkey = 'nisn';
    }

    function get_all_peminjaman()
    {
        $this->datatables->select('no_pinjam, nama, judul_buku, tgl_pinjam, tgl_kembali, status, tgl_telah_kembali, param');
        $this->datatables->from('peminjman');
        $this->datatables->where('param', '1');
        $this->datatables->add_column('view', '<div class="text-center"><a style="margin-right: 8px;" data-id="$1" class="kembali btn btn-sm btn-info"><i class="fa fa-book"></i> Kembalikan</a></div>', 'no_pinjam');
        return $this->datatables->generate();
    }

    function get_all_kembali()
    {
        $this->datatables->select('*');
        $this->datatables->from('peminjman');
        $this->datatables->where('param', '0');
        $this->datatables->add_column('view', '<div class="text-center"><a style="margin-right: 8px;" data-id="$1" class="kembali btn btn-sm btn-info"><i class="fa fa-book"></i> Kembalikan</a></div>', 'no_pinjam');
        return $this->datatables->generate();
    }

    function insert_peminjaman( $nisn = '', $id_buku = '', $tgl_kembali = '')
    {
        $tgl=date('Y-m-d');
        $query = "INSERT INTO peminjaman(nisn,id_buku,tgl_pinjam,tgl_kembali,param) values('$nisn','$id_buku','$tgl','$tgl_kembali','1')";

        return $this->db->query($query);
    }

    function kembalikan_buku($id)
    {
        $tglKmb=date('Y-m-d');
        $query = "UPDATE peminjaman SET tgl_telah_kembali='$tglKmb',param='0' where no_pinjam='$id'";

        return $this->db->query($query);
    }
}
