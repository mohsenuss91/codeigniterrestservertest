<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */
 
class Author extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Author_model');
    } 

    /*
     * Listing of authors
     */
    function index()
    {
        $data['authors'] = $this->Author_model->get_all_authors();
        
        $data['_view'] = 'author/index';
        $this->load->view('layouts/main',$data);
    }

    /*
     * Adding a new author
     */
    function add()
    {   
        if(isset($_POST) && count($_POST) > 0)     
        {   
            $params = array(
				'first_name' => $this->input->post('first_name'),
				'last_name' => $this->input->post('last_name'),
				'email' => $this->input->post('email'),
				'birthdate' => $this->input->post('birthdate'),
				'added' => $this->input->post('added'),
            );
            
            $author_id = $this->Author_model->add_author($params);
            redirect('author/index');
        }
        else
        {            
            $data['_view'] = 'author/add';
            $this->load->view('layouts/main',$data);
        }
    }  

    /*
     * Editing a author
     */
    function edit($id)
    {   
        // check if the author exists before trying to edit it
        $data['author'] = $this->Author_model->get_author($id);
        
        if(isset($data['author']['id']))
        {
            if(isset($_POST) && count($_POST) > 0)     
            {   
                $params = array(
					'first_name' => $this->input->post('first_name'),
					'last_name' => $this->input->post('last_name'),
					'email' => $this->input->post('email'),
					'birthdate' => $this->input->post('birthdate'),
					'added' => $this->input->post('added'),
                );

                $this->Author_model->update_author($id,$params);            
                redirect('author/index');
            }
            else
            {
                $data['_view'] = 'author/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The author you are trying to edit does not exist.');
    } 

    /*
     * Deleting author
     */
    function remove($id)
    {
        $author = $this->Author_model->get_author($id);

        // check if the author exists before trying to delete it
        if(isset($author['id']))
        {
            $this->Author_model->delete_author($id);
            redirect('author/index');
        }
        else
            show_error('The author you are trying to delete does not exist.');
    }
    
}
