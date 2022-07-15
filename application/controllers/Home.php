<?php defined('BASEPATH') || exit('No direct script access allowed');

class Home extends Authenticated_Controller
{
	function __construct()
	{
		parent::__construct();
	}

	function index()
	{
		$this->data['view']    = 'page/content/dashboard';
		$this->data['param']    = '';
		$this->load->view('template/default', $this->data);
	}

	function struktur()
	{
		$this->data['view']    = 'page/form/form-struktur';
		$this->data['param']    = '';
		$this->load->view('template/default', $this->data);
	}
}
