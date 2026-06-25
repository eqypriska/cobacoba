<?php

require_once "PendaftaranKursus.php";

class KelasReguler extends PendaftaranKursus
{
    protected $pilihanProgram;
    protected $jadwalKelas;

    public function __construct(
        $id,$nama,$asal,$nilai,$biaya,
        $program,$jadwal
    ){
        parent::__construct(
            $id,$nama,$asal,$nilai,$biaya
        );

        $this->pilihanProgram = $program;
        $this->jadwalKelas = $jadwal;
    }

    public function getDaftarReguler($db)
    {
        $sql = "SELECT * FROM tb_pendaftaran_kursus
                WHERE jenis_kelas='Reguler'";

        $stmt = $db->prepare($sql);
        $stmt->execute();

        return $stmt;
    }