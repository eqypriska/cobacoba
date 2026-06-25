<?php

require_once "PendaftaranKursus.php";

class KelasBeasiswa extends PendaftaranKursus
{
    protected $suratRekomendasi;
    protected $instansiPengirim;

    public function __construct(
        $id,$nama,$asal,$nilai,$biaya,
        $surat,$instansi
    ){
        parent::__construct(
            $id,$nama,$asal,$nilai,$biaya
        );

        $this->suratRekomendasi = $surat;
        $this->instansiPengirim = $instansi;
    }

    public function getDaftarBeasiswa($db)
    {
        $sql = "SELECT * FROM tb_pendaftaran_kursus
                WHERE jenis_kelas='Beasiswa'";

        $stmt = $db->prepare($sql);
        $stmt->execute();

        return $stmt;
    }
    public function hitungTotalBiaya()
{
    return $this->biayaDasar * 0.5;
}

public function tampilkanInfoKelas()
{
    return "Kelas Beasiswa";
}