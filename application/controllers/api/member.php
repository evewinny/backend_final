<?php
use Restserver\libraries\REST_Controller;

class member extends REST_Controller
  {
    function __construct()
    {
      parent::__construct();
      $this->load->model('members_model');
    }

public function daftarmember_get()
  {
    $data=$this->members_model->daftarmember();
    $this->response( ['member'=> $data ], 200 );
  }
}

?>
