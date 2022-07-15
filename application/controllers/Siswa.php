<?php defined('BASEPATH') || exit('No direct script access allowed');

class siswa extends Data_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library('hash');
        $this->load->library('datatables');
        $this->load->model('siswa_model');
        $this->mymodel = $this->siswa_model;
    }


    function get_guest_json()
    {
        header('Content-Type: application/json');
        echo $this->siswa_model->get_all_siswa();
    }


    function daftarSiswa()
    {
        $this->data['view']    = 'page/siswa_view';
        $this->data['param']    = '';
        $this->load->view('template/default', $this->data);
    }

    function insertSiswa()
    {
        $nisn = $this->input->post('nisn');
        $nama = $this->input->post('nama');
        $jenisKelamin = $this->input->post('jk');
        $alamat = $this->input->post('alamat');

        $this->siswa_model->insert_siswa($nisn, $nama, $jenisKelamin, $alamat);
        echo '1';
    }

    function editSiswa()
    {
        $param = $this->input->post('param');
        $nisn = $this->input->post('nisn');
        $nama = $this->input->post('nama');
        $jenisKelamin = $this->input->post('jk');
        $alamat = $this->input->post('alamat');

        $this->siswa_model->edit_siswa($nisn, $nama, $jenisKelamin, $alamat, $param);

        echo '1';
    }

    function hapusSiswa()
    {
        $nisn = $this->input->post('id');

        $this->siswa_model->hapus_siswa($nisn);

        echo '1';
    }
}
