<?php

abstract class PendaftaranKursus
{
    protected $id_pendaftaran;
    protected $nama_peserta;
    protected $asal_sekolah;
    protected $nilai_tes;
    protected $biayaDasar;

    public function __construct(
        $id,
        $nama,
        $asal,
        $nilai,
        $biaya
    ){
        $this->id_pendaftaran = $id;
        $this->nama_peserta = $nama;
        $this->asal_sekolah = $asal;
        $this->nilai_tes = $nilai;
        $this->biayaDasar = $biaya;
    }

    abstract public function hitungTotalBiaya();

    abstract public function tampilkanInfoKelas();
}