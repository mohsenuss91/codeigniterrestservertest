<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */
 
class Post extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Post_model');
    } 

    /*
     * Listing of posts
*/
        function index()
    {
        $data['posts'] = $this->Post_model->get_all_posts();
        
        $data['_view'] = 'post/index';
        $this->load->view('layouts/main',$data);
    }

     

     /*
     * Listing of posts as Json
     */
    function indexjson()

    {
        $sql = 'SELECT * FROM posts';        
        $data = $this->db->query($sql);
        echo json_encode($data->result());                
    }

    /*
     * Adding a new post
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('author_id','Author Id','required|integer');
		$this->form_validation->set_rules('title','Title','required|max_length[255]');
		$this->form_validation->set_rules('description','Description','required|max_length[500]');
		$this->form_validation->set_rules('date','Date','required');
		$this->form_validation->set_rules('content','Content','required');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'author_id' => $this->input->post('author_id'),
				'title' => $this->input->post('title'),
				'description' => $this->input->post('description'),
				'date' => $this->input->post('date'),
				'content' => $this->input->post('content'),
            );
            
            $post_id = $this->Post_model->add_post($params);
            redirect('post/index');
        }
        else
        {            
            $data['_view'] = 'post/add';
            $this->load->view('layouts/main',$data);
        }
    }  

    /*
     * Editing a post
     */
    function edit($id)
    {   
        // check if the post exists before trying to edit it
        $data['post'] = $this->Post_model->get_post($id);
        
        if(isset($data['post']['id']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('author_id','Author Id','required|integer');
			$this->form_validation->set_rules('title','Title','required|max_length[255]');
			$this->form_validation->set_rules('description','Description','required|max_length[500]');
			$this->form_validation->set_rules('date','Date','required');
			$this->form_validation->set_rules('content','Content','required');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'author_id' => $this->input->post('author_id'),
					'title' => $this->input->post('title'),
					'description' => $this->input->post('description'),
					'date' => $this->input->post('date'),
					'content' => $this->input->post('content'),
                );

                $this->Post_model->update_post($id,$params);            
                redirect('post/index');
            }
            else
            {
                $data['_view'] = 'post/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The post you are trying to edit does not exist.');
    } 

    /*
     * Deleting post
     */
    function remove($id)
    {
        $post = $this->Post_model->get_post($id);

        // check if the post exists before trying to delete it
        if(isset($post['id']))
        {
            $this->Post_model->delete_post($id);
            redirect('post/index');
        }
        else
            show_error('The post you are trying to delete does not exist.');
    }
    
}
