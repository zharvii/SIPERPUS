<?php defined('BASEPATH') || exit('No direct script access allowed');

class buku extends Data_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library('hash');
        $this->load->library('datatables');
        $this->load->model('buku_model');
        $this->mymodel = $this->buku_model;
    }


    function get_guest_json()
    {
        header('Content-Type: application/json');
        echo $this->buku_model->get_all_buku();
    }

    function get_dipinjam_json()
    {
        header('Content-Type: application/json');
        echo $this->buku_model->get_all_dipinjam();
    }

    // function tambahBuku()
    // {
    //     $this->data['view']    = 'page/tambah_buku';
    //     $this->data['param']    = '';
    //     $this->load->view('template/default', $this->data);
    // }

    function daftarBuku()
    {
        $this->data['view']    = 'page/buku_view';
        $this->data['param']    = '';
        $this->load->view('template/default', $this->data);
    }

    function daftarDipinjam()
    {
        $this->data['view']    = 'page/dipinjam_view';
        $this->data['param']    = '';
        $this->load->view('template/default', $this->data);
    }

    function insertBuku()
    {
        $idbuku = $this->input->post('idbuku');
        $judul = $this->input->post('judul');
        $pengarang = $this->input->post('pengarang');
        $penerbit = $this->input->post('penerbit');
        $tahun = $this->input->post('tahun');
        $status = $this->input->post('status');
        $this->buku_model->insert_buku($idbuku, $judul, $pengarang, $penerbit, $tahun, $status);

        echo '1';
    }

    function editBuku()
    {
        $idbuku = $this->input->post('idbuku');
        $judul = $this->input->post('judul');
        $pengarang = $this->input->post('pengarang');
        $penerbit = $this->input->post('penerbit');
        $tahun = $this->input->post('tahun');
        $status = $this->input->post('status');
        $this->buku_model->edit_buku($idbuku, $judul, $pengarang, $penerbit, $tahun, $status);

        echo '1';
    }

    function hapusBuku()
    {
        $idbuku = $this->input->post('id');

        $this->buku_model->hapus_buku($idbuku);

        echo '1';
    }
}
