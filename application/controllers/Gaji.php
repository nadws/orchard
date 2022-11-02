<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Gaji extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }
    public function index()
    {

        $data = array(
            'title' => "Gaji & Tunjangan"
        );
        $this->load->view('gaji/index', $data);
    }

    public function gaji_load()
    {
        if (empty($this->input->get('tgl1'))) {
            $tgl1 = date('Y-m-01');
            $tgl2 = date('Y-m-t');
        } else {
            $tgl1 = $this->input->get('tgl1');
            $tgl2 = $this->input->get('tgl2');
        }

        $denda = $this->db->query("SELECT a.nm_denda,sum(a.nominal) as nominal,a.alasan FROM ctt_denda as a 
                WHERE a.tanggal BETWEEN '$tgl1' AND '$tgl2'
                GROUP BY a.nm_denda;")->result();

        $kasbon = $this->db->query("SELECT a.nm_kasbon,sum(a.nominal) as nominal FROM ctt_kasbon as a 
                WHERE a.tanggal BETWEEN '$tgl1' AND '$tgl2'
                GROUP BY a.nm_kasbon")->result();

        $tips = $this->db->query("SELECT a.nm_tips,sum(a.nominal) as nominal FROM ctt_tips as a 
                WHERE a.tanggal BETWEEN '$tgl1' AND '$tgl2'
                GROUP BY a.nm_tips")->result();

        $app = $this->db->query("SELECT a.nm_app,sum(a.org) as orang,sum(a.nominal) as nominal FROM `tb_appoiment` as a
                WHERE a.tgl BETWEEN '$tgl1' AND '$tgl2'
                GROUP BY a.nm_app;")->result();

        $data = array(
            'gaji' => $this->db->query("SELECT a.id_kry, c.id_tipe, a.nm_kry, sum(b.M) as M, sum(b.OFF) as OFF,c.gaji,c.tunjangan AS tj_tipe,d.gaji AS tunjangan,c.nm_tipe, d.posisi
            FROM tb_karyawan AS a
            LEFT JOIN (
            SELECT b.nm_karyawan ,if(b.ket = 'M', COUNT(b.ket), 0) AS M, if(b.ket = 'OFF', COUNT(b.ket), 0) AS OFF
            FROM tb_absen AS b 
            WHERE b.tgl BETWEEN '$tgl1' AND '$tgl2'
            GROUP BY b.nm_karyawan, b.ket
            ) AS b ON b.nm_karyawan = a.nm_kry
            
            LEFT JOIN tb_tipe AS c ON c.id_tipe = a.id_tipe
            LEFT JOIN tb_kelompok_tunjangan AS d ON d.id_posisi = a.id_posisi

            group by a.id_kry
            ")->result(),
            'skill' => $this->db->get('tb_skill')->result(),
            'tgl1' => $tgl1,
            'tgl2' => $tgl2,
            'tipe' => $this->db->get('tb_tipe')->result(),
            'posisi' => $this->db->get('tb_kelompok_tunjangan')->result(),
            'denda' => $denda,
            'kasbon' => $kasbon,
            'tips' => $tips,
            'app' => $app,
            'tglTengah' => date('d-F-Y', strtotime($tgl1)) . ' ~ ' . date('d-F-Y', strtotime($tgl2))
        );
        $this->load->view('gaji/gaji_load', $data);
    }

    public function tbh_skill()
    {
        $id_karyawan = $this->input->get('id_karyawan');
        $id_skill = $this->input->get('id_skill');
        $data = [
            'id_karyawan' => $id_karyawan,
            'id_skill' => $id_skill
        ];
        $this->db->insert("tb_karyawan_skill", $data);

        $count = $this->db->query("SELECT COUNT(a.id_skill) AS jumlah
        FROM tb_karyawan_skill AS a
        WHERE a.id_karyawan = '$id_karyawan'
        GROUP by a.id_karyawan")->row();

        if ($count->jumlah == '1') {
            $level = '2';
        } elseif ($count->jumlah == '2') {
            $level = '3';
        } else {
            $level = '4';
        }

        $data = ['id_tipe' => $level];
        $this->db->where('id_kry', $id_karyawan);
        $this->db->update('tb_karyawan', $data);
    }
    public function delete_skill()
    {
        $id_karyawan = $this->input->get('id_karyawan');
        $id_skill = $this->input->get('id_skill');

        $this->db->where('id_karyawan', $id_karyawan);
        $this->db->where('id_skill', $id_skill);
        $this->db->delete('tb_karyawan_skill');


        $count = $this->db->query("SELECT COUNT(a.id_skill) AS jumlah
        FROM tb_karyawan_skill AS a
        WHERE a.id_karyawan = '$id_karyawan'
        GROUP by a.id_karyawan")->row();

        if ($count->jumlah == '1') {
            $level = '2';
        } elseif ($count->jumlah == '2') {
            $level = '3';
        } elseif (empty($count->jumlah)) {
            $level = '1';
        } else {
            $level = '4';
        }

        $data = ['id_tipe' => $level];
        $this->db->where('id_kry', $id_karyawan);
        $this->db->update('tb_karyawan', $data);
    }

    public function Print_gaji()
    {
        $tgl1 = $this->input->get('tgl1');
        $tgl2 = $this->input->get('tgl2');

        $denda = $this->db->query("SELECT a.nm_denda,sum(a.nominal) as nominal,a.alasan FROM ctt_denda as a 
                WHERE a.tanggal BETWEEN '$tgl1' AND '$tgl2'
                GROUP BY a.nm_denda;")->result();

        $kasbon = $this->db->query("SELECT a.nm_kasbon,sum(a.nominal) as nominal FROM ctt_kasbon as a 
                WHERE a.tanggal BETWEEN '$tgl1' AND '$tgl2'
                GROUP BY a.nm_kasbon")->result();

        $tips = $this->db->query("SELECT a.nm_tips,sum(a.nominal) as nominal FROM ctt_tips as a 
                WHERE a.tanggal BETWEEN '$tgl1' AND '$tgl2'
                GROUP BY a.nm_tips")->result();

        $app = $this->db->query("SELECT a.nm_app,sum(a.org) as orang,sum(a.nominal) as nominal FROM `tb_appoiment` as a
                WHERE a.tgl BETWEEN '$tgl1' AND '$tgl2'
                GROUP BY a.nm_app;")->result();

        $data = array(
            'gaji' => $this->db->query("SELECT a.id_kry, c.id_tipe, a.nm_kry, sum(b.M) as M, sum(b.OFF) as OFF,c.gaji,c.tunjangan AS tj_tipe,d.gaji AS tunjangan,c.nm_tipe, d.posisi
            FROM tb_karyawan AS a
            LEFT JOIN (
            SELECT b.nm_karyawan ,if(b.ket = 'M', COUNT(b.ket), 0) AS M, if(b.ket = 'OFF', COUNT(b.ket), 0) AS OFF
            FROM tb_absen AS b 
            WHERE b.tgl BETWEEN '$tgl1' AND '$tgl2'
            GROUP BY b.nm_karyawan, b.ket
            ) AS b ON b.nm_karyawan = a.nm_kry
            
            LEFT JOIN tb_tipe AS c ON c.id_tipe = a.id_tipe
            LEFT JOIN tb_kelompok_tunjangan AS d ON d.id_posisi = a.id_posisi

            group by a.id_kry
            ")->result(),
            'skill' => $this->db->get('tb_skill')->result(),
            'tgl1' => $tgl1,
            'tgl2' => $tgl2,
            'tipe' => $this->db->get('tb_tipe')->result(),
            'posisi' => $this->db->get('tb_kelompok_tunjangan')->result(),
            'denda' => $denda,
            'kasbon' => $kasbon,
            'tips' => $tips,
            'app' => $app,
            'tglTengah' => date('d-F-Y', strtotime($tgl1)) . ' ~ ' . date('d-F-Y', strtotime($tgl2))
        );
        $this->load->view('gaji/print_gaji', $data);
    }
}
