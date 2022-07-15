<?php defined('BASEPATH') || exit('No direct script access allowed');

class peminjaman extends Data_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library('hash');
        $this->load->library('datatables');
        $this->load->model('peminjaman_model');
        $this->mymodel = $this->peminjaman_model;
    }


    function get_guest_json()
    {
        header('Content-Type: application/json');
        echo $this->peminjaman_model->get_all_peminjaman();
    }


    function get_kembali_json()
    { //data data produk by JSON object
        header('Content-Type: application/json');
        echo $this->peminjaman_model->get_all_kembali();
    }

    function daftarPeminjaman()
    {
        $this->data['view']    = 'page/peminjaman_view';
        $this->data['param']    = '';
        $this->load->view('template/default', $this->data);
    }

    function daftarPengembalian()
    {
        $this->data['view']    = 'page/pengembalian_view';
        $this->data['param']    = '';
        $this->load->view('template/default', $this->data);
    }

    function insertPeminjaman()
    {
        $siswa = $this->input->post('siswa');
        $buku = $this->input->post('buku');
        $tgl = $this->input->post('tgl');


        $this->peminjaman_model->insert_peminjaman($siswa, $buku, $tgl);

        $this->db->query("update buku set status='dipinjam' where id_buku='$buku'");
        echo '1';
    }

    function kembalikan()
    {
        $id = $this->input->post('id');

        $this->peminjaman_model->kembalikan_buku($id);

        $buku = $this->db->query("select * from peminjaman where no_pinjam='$id'");

        $id_buku = '';

        foreach ($buku->result() as $key) {
            $id_buku = $key->id_buku;
        }
        $this->db->query("update buku set status='ada' where id_buku='$id_buku'");

        echo '1';
    }
}
