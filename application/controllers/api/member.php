<?php
use Restserver\libraries\REST_Controller;

class Member extends REST_Controller
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

  public function registermember_post()
  {
      $data=[
      "nama_depan"=>$this->post('nama_d'),
      "nama_belakang"=>$this->post('nama_b'),
      "umur"=>$this->post('umur'),
      "kota"=>$this->post('kota'),
      "email"=>$this->post('email'),
      "password"=>password_hash($this->post('password'),PASSWORD_DEFAULT)
    ];
    $rs=$this->db->insert('member',$data);
    if ($rs) {
        $this->response( ['message'=>"success"], 200 );
    } else {
      $this->response( ['message'=>""], 502 );
    }
  }

  public function loginmember_post()
  {
    $email=$this->post('email');
    $password=$this->post('password');
    $data=$this->members_model->login($email);
    $login=false;
    foreach ($data as $m) {
      if (password_verify($password,$m->password)) {
        $login=true;
      }
    }
    if ($login) {
      $this->response( ['message'=>"success"], 200 );
    } else {
      $this->response( ['message'=>"failed"], 200 );
    }
  }
}

?>
