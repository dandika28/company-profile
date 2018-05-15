package com.mikatama.cp.service.impl;

import com.mikatama.cp.bean.OurCommitment;
import com.mikatama.cp.service.OurCommitmentService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OurCommitmentServiceImpl implements OurCommitmentService {
    @Override
    public List<OurCommitment> getOurCommitments() {
        List<OurCommitment> ourCommitments = new ArrayList<>();
        ourCommitments.add(new OurCommitment(1, "Standar Kualitas", "Selalu menjaga dan berusaha " +
                "meningkatan kualitas produk sehingga mampu diterima oleh semua kalangan", "note-success"));
        ourCommitments.add(new OurCommitment(2, "Waktu Produksi Yang Cepat", "Selalu berusaha " +
                "untuk menyelesaikan pekerjaan sebelum jatuh tempo sehingga barang dapat terdistribusi lebih cepat",
                "note-info"));
        ourCommitments.add(new OurCommitment(3, "Profesionalisme", "Selalu berkomitem " +
                "dalam menjalin hubungan bisnis yang saling menguntungkan dan setara sehingga hubungan " +
                "tersebut terjalin secara professional antara mitra bisnis",
                "note-danger"));
        return ourCommitments;
    }
}
