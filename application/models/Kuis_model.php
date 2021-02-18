<?php
/**
 *
 */
class Kuis_model extends CI_Model
{

  public function __construct()
  {
    parent::__construct() ;
  }

  public function daftarnilai()
  {
    $this->db->select('email,nilaikuis');
    $this->db->from('kuis');

    $query=$this->db->get();
    return $query->result();
  }
}

 ?>
