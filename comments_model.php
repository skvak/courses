<?php defined('BASEPATH') OR exit('No direct script access allowed');

	class Comments_model extends CI_Model 
	{
	    public function __construct()
        {
           	$this->load->database();
        }

        public function get_comments()
		{
            $this->db->select('*');
            $this->db->from('comments');
            $this->db->join('users', 'users.id = comments.user_id', 'left');
            $this->db->join('course', 'course.id = comments.course_id', 'left');
            $this->db->join('teachers', 'teachers.id = comments.teacher_id', 'left');
            $query = $this->db->get();
            return $query->result_array();
		}
	}