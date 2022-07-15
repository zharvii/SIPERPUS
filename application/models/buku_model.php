<?php defined('BASEPATH') || exit('No direct script access allowed');

class buku_model extends Data_Model
{
    function __construct()
    {
        parent::__construct();
        $this->table_name = 'buku';
        $this->pkey = 'id_buku';
    }

    function get_all_buku()
    {
        $this->datatables->select('id_buku,judul_buku,pengarang,penerbit,tahun_terbit,status');
        $this->datatables->from('buku');
        $this->datatables->where('status', 'ada');
        $this->datatables->add_column('view', '<div class="text-center"><span style="margin-right: 8px;" data-id="$1" data-judul="$2" data-pengarang="$3" data-penerbit="$4" data-tahun="$5" data-status="$6" class="edit btn btn-sm btn-info"><i class="fa fa-edit"></i> edit</span><a style="margin-right: 8px;" data-id="$1" class="hapus btn btn-sm btn-danger"><i class="fa fa-trash"></i> Hapus</a></div>', 'id_buku,judul_buku,pengarang,penerbit,tahun_terbit,status');
        return $this->datatables->generate();
    }

    function get_all_dipinjam()
    {
        $this->datatables->select('id_buku,judul_buku,pengarang,penerbit,tahun_terbit,status');
        $this->datatables->from('buku');
        $this->datatables->where('status', 'dipinjam');
        $this->datatables->add_column('view', '<div class="text-center"><span style="margin-right: 8px;" data-id="$1" data-judul="$2" data-pengarang="$3" data-penerbit="$4" data-tahun="$5" data-status="$6" class="edit btn btn-sm btn-info"><i class="fa fa-edit"></i> edit</span><a style="margin-right: 8px;" data-id="$1" class="hapus btn btn-sm btn-danger"><i class="fa fa-trash"></i> Hapus</a></div>', 'id_buku,judul_buku,pengarang,penerbit,tahun_terbit,status');
        return $this->datatables->generate();
    }

    function insert_buku($idbuku = '', $judul = '', $pengarang = '', $penerbit = '', $tahun = '', $status = '')
    {
        $query = "INSERT INTO buku values('$idbuku','$judul','$pengarang','$penerbit','$tahun','$status')";

        return $this->db->query($query);
    }

    function edit_buku($idbuku = '', $judul = '', $pengarang = '', $penerbit = '', $tahun = '', $status = '')
    {
        $query = "UPDATE buku SET judul_buku='$judul',pengarang='$pengarang',penerbit='$penerbit',tahun_terbit='$tahun',status='$status' where id_buku='$idbuku'";

        return $this->db->query($query);
    }

    function hapus_buku($idbuku = '')
    {
        $query = "DELETE FROM buku WHERE id_buku='$idbuku'";

        return $this->db->query($query);
    }
}
