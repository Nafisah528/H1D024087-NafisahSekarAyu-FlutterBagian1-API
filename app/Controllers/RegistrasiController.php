<?php

namespace App\Controllers;

use App\Models\MRegistrasi;

class RegistrasiController extends RestfulController
{
    public function registrasi()
    {
        $data = [
            'nama' => $this->request->getVar('nama'),
            'email' => $this->request->getVar('email'),
            'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT)
        ];

        $model = new MRegistrasi();
        $existing = $model->where('email', $data['email'])->first();
        if ($existing) {
            $model->update($existing['id'], $data);
        } else {
            $model->save($data);
        }
        return $this->responseHasil(200, true, "Registrasi Berhasil");
    }
}

