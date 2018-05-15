package com.mikatama.cp.service.impl;

import com.mikatama.cp.bean.OurCulture;
import com.mikatama.cp.service.OurCultureService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OurCultureServiceImpl implements OurCultureService {
    @Override
    public List<OurCulture> getOurCulture() {
        List<OurCulture> ourCultures = new ArrayList<>();
        ourCultures.add(new OurCulture(1, "Disiplin", "Seluruh karyawan tanpa terkecuali harus " +
                "memiliki sikap disiplin yang tinggi baik disiplin terhadap waktu, target kerja, " +
                "pengendalian biaya dan lain-lain.", null));
        ourCultures.add(new OurCulture(1, "Jujur", "Kejujuran menjadi landasan budaya kerja yang " +
                "sangat penting dan harus dimiliki oleh semua stakeholder perusahaan", null));
        ourCultures.add(new OurCulture(1, "Kompak", "Kekompakan dalam arti positif antar " +
                "bagian/divisi menjadi syarat mutlak untuk dapat menjaga pertumbuhan bisnis", null));
        return ourCultures;
    }
}
