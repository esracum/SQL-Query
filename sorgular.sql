-- 3) “Yazılım” veya “Donanım” birimlerinde çalışanların ad, soyad ve maaş bilgilerini listeleyen SQL sorgusunu yazınız. (Tek bir sorgu ile)
USE foy3;
SELECT  c.ad, c.soyad, c.maas, b.birim_ad FROM calisanlar c 
JOIN birimler b ON c.calisan_birim_id = b.birim_id
WHERE b.birim_ad IN ('Yazilim','Donanim')

-- 4) Maaşı en yüksek olan çalışanların ad, soyad ve maaş bilgilerini listeleyen SQL sorgusunu yazınız. (Tek bir sorgu ile)
SELECT TOP 1 ad, soyad, maas
FROM calisanlar
ORDER BY maas DESC;
-- veya
SELECT ad, soyad FROM calisanlar 
WHERE maas=(SELECT MAX(maas) from calisanlar)

-- 5) Birimlerin her birinde kaç adet çalışan olduğunu ve birimlerin isimlerini listeleyen sorguyu yazınız. (Tek bir sorgu ile) (Örneğin; x biriminde 3 çalışan var gibi düşünebilirsiniz.) (Gruplamalı sorgu ile) 

SELECT b.birim_ad, COUNT(*) AS calisan_kisi_sayisi
FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
GROUP BY b.birim_ad;

-- 6) Birden fazla çalışana ait olan unvanların isimlerini ve o unvan altında çalışanların sayısını listeleyen sorguyu yazınız. (Tek bir sorgu ile)
SELECT unvan, COUNT(*) AS calisan_sayisi
FROM calisanlar
GROUP BY unvan
HAVING COUNT(*) > 1;

-- 7) Maaşları “50000” ve “100000” arasında değişen çalışanların ad, soyad ve maaş bilgilerini listeleyen sorguyu yazınız. (Tek bir sorgu ile)
SELECT ad, soyad, maas FROM calisanlar 
WHERE maas BETWEEN 50000 AND 100000;

-- 8) İkramiye hakkına sahip çalışanlara ait ad, soyad, birim, unvan ve ikramiye ücreti bilgilerini listeleyen sorguyu yazınız. (Tek bir sorgu ile)
use foy3;
SELECT c.ad, c.soyad, b.birim_ad, u.unvan_calisan, i.ikramiye_ucret FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
JOIN unvan u ON u.unvan_calisan_id = c.calisan_id
JOIN ikramiye i ON i.ikramiye_calisan_id = c.calisan_id;

-- 9) Ünvanı “Yönetici” ve “Müdür” olan çalışanların ad, soyad ve ünvanlarını listeleyen sorguyu yazınız. (Tek bir sorgu ile)
SELECT c.ad, c.soyad, u.unvan_calisan FROM calisanlar c
JOIN unvan u ON u.unvan_calisan_id = c.calisan_id
WHERE unvan_calisan IN ('Yonetici', 'Mudur')

-- 10) Her bir birimde en yüksek maaş alan çalışanların ad, soyad ve maaş bilgilerini listeleyen sorguyu yazınız. (Tek bir sorgu ile)
use foy3;
SELECT c.ad, c.soyad, c.maas, b.birim_ad
FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
WHERE c.maas = (
    SELECT MAX(maas)
    FROM calisanlar
    WHERE calisan_birim_id = c.calisan_birim_id
)
ORDER BY b.birim_ad;
