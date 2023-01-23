<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class PegawaiSeeder extends Seeder
{
	public function run()
	{
		$data = [
			[
				'nama'          =>  'Anton',
				'jenis_kelamin' =>  'pria',
				'no_telp'       =>  '081234555678',
				'email'         =>  'anton@gmail.com',
				'alamat'	=>  'Jl. Mawar Putih No. 190, Waru Sidoarjo',
				'created_at' => Time::now()
			],
			[
				'nama'          =>  'Budi',
				'jenis_kelamin' =>  'pria',
				'no_telp'       =>  '08571234567',
				'email'         =>  'budi@gmail.com',
				'alamat'	=>  'Jl. Melati Putih No. 77, Gedangan Sidoarjo',
				'created_at' => Time::now()
			],
			[
				'nama'          =>  'Dita',
				'jenis_kelamin' =>  'wanita',
				'no_telp'       =>  '08122334455',
				'email'         =>  'dita@gmail.com',
				'alamat'	=>  'Jl. Rembulan No. 90, Krian Sidoarjo',
				'created_at' => Time::now()
			]
		];
		$this->db->table('pegawai')->insertBatch($data);
	}
}