<?php
class Members_model extends CI_Model
{
  public function __construct()
  {
    parent::__construct();
  }

  public function daftarmember()
  {
    $this->db->select('nama_depan, nama_belakang, umur, kota');
    $this->db->from('member');

    $query=$this->db->get();
    return $query->result();
  }
}

 ?>
