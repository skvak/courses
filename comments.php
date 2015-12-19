<?php
class Comments extends CI_Controller 
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('comments_model');
        $this->load->helper('url_helper');
    }

   	public function view()
	{
        $data['comments_item'] = $this->comments_model->get_comments();
        $this->load->view('templates/header', $data);
        $this->load->view('comments/view', $data);
        $this->load->view('templates/footer');
	}

    public function index()
	{
        $data['comments'] = $this->comments_model->get_comments();
        $data['title'] = 'Отзывы';

        $this->load->view('templates/header', $data);
        $this->load->view('comments/index', $data);
        $this->load->view('templates/footer');
	}


}