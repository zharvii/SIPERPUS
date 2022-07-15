<?php defined('BASEPATH') || exit('No direct script access allowed');

class siswa_model extends Data_Model
{
    function __construct()
    {
        parent::__construct();
        $this->table_name = 'siswa';
        $this->pkey = 'nisn';
    }

    function get_all_siswa()
    {
        $this->datatables->select('nisn,nama,jenis_kelamin,alamat');
        $this->datatables->from('siswa');

        $this->datatables->add_column('view', '<div class="text-center"><span style="margin-right: 8px;" data-id="$1" data-nama="$2" data-jk="$3" data-alamat="$4" class="edit btn btn-sm btn-info"><i class="fa fa-edit"></i> edit</span><a style="margin-right: 8px;" data-id="$1" class="hapus btn btn-sm btn-danger"><i class="fa fa-trash"></i> Hapus</a></div>', 'nisn,nama,jenis_kelamin,alamat');
        return $this->datatables->generate();
    }

    function insert_siswa($nisn = '', $nama = '', $jenisKelamin = '', $alamat = '')
    {
        $query = "INSERT INTO siswa values('$nisn','$nama','$jenisKelamin','$alamat')";

        return $this->db->query($query);
    }


    function edit_siswa($nisn = '', $nama = '', $jenisKelamin = '', $alamat = '', $param = '')
    {
        $query = "UPDATE siswa SET nisn='$nisn',nama='$nama',jenis_kelamin='$jenisKelamin',alamat='$alamat' where nisn='$param'";

        return $this->db->query($query);
    }

    function hapus_siswa($nisn = '')
    {
        $query = "DELETE FROM siswa WHERE nisn='$nisn'";

        return $this->db->query($query);
    }
}
