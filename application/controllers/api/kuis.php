<?php
use Restserver\libraries\REST_Controller;

class kuis extends REST_Controller
  {
    function __construct()
    {
      parent::__construct();
      $this->load->model('kuis_model');
    }

public function daftarnilai_get()
  {
    $data=$this->kuis_model->daftarnilai();
    $this->response( ['kuis'=> $data ], 200 );
  }
}

?>
 ?>
