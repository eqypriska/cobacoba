<?php

require_once "PendaftaranKursus.php";

class KelasPrestasi extends PendaftaranKursus
{
    protected $sertifikatPrestasi;
    protected $tingkatPrestasi;

    public function __construct(
        $id,$nama,$asal,$nilai,$biaya,
        $sertifikat,$tingkat
    ){
        parent::__construct(
            $id,$nama,$asal,$nilai,$biaya
        );

        $this->sertifikatPrestasi = $sertifikat;
        $this->tingkatPrestasi = $tingkat;
    }

    public function getDaftarPrestasi($db)
    {
        $sql = "SELECT * FROM tb_pendaftaran_kursus
                WHERE jenis_kelas='Prestasi'";

        $stmt = $db->prepare($sql);
        $stmt->execute();

        return $stmt;
    }