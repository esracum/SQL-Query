-- Birimler Tablosuna Veri Ekleme
INSERT INTO birimler (birim_id, birim_ad) VALUES
(1, Yazilim)
(2, Donanim)
(3, Guvenlik)

-- Çalişan Tablosuna Veri Ekleme
INSERT INTO calisanlar (calisan_id, ad, soyad, maas, katilma_tarihi, calisan_birim_id)
VALUES
(1, 'Esra','Cüm', 70000,'2021-02-20 00:00:00', 1),
(2, 'İsmail','İşeri', 100000, '2014-02-20 00:00:00', 1),
(3, 'Hami','Satilmiş', 80000, '2014-06-11 00:00:00', 1),
(4, 'Durmuş','Şahin', 300000, '2014-02-20 00:00:00', 2),
(5, 'Kağan','Yazar', 500000, '2014-02-20 00:00:00', 3),
(6, 'Meryem','Soysaldi', 500000, '2014-06-11 00:00:00', 3),
(7, 'Duygu','Akşehir', 200000, '2014-06-11 00:00:00', 2),
(8, 'Kübra','Seyhan', 750000, '2014-01-20 00:00:00', 1),
(9, 'Gülcan','Yildiz', 90000, '2014-04-11 00:00:00', 3);

-- İkramiye Tablosuna Veri Ekleme
INSERT INTO ikramiye (ikramiye_id, ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih)
VALUES
(1, 1, 5000, '2016-02-20 09:00:00'),
(2, 2, 3000, '2023-06-11 14:00:00'),
(3, 3, 4000, '2022-02-20 10:30:00'),
(4, 1, 4500, '2022-02-20 10:30:00'),
(5, 2, 3500, '2022-06-11 10:30:00');

-- Unvan Tablosuna Veri Ekleme
INSERT INTO unvan (unvan_id, unvan_calisan_id, unvan_calisan, unvan_tarih)
VALUES
(1, 1, 'Yonetici', '2016-02-20 09:00:00'),
(2, 2, 'Personel', '2016-06-11 14:00:00'),
(3, 8, 'Personel', '2016-06-11 14:00:00'),
(4, 5, 'Mudur', '2016-11-15 14:00:00'),
(5, 4, 'Yonetici Yardimcisi', '2020-11-15 14:00:00'),
(6, 7, 'Personel', '2023-11-15 14:00:00'),
(7, 6, 'Takim Lideri', '2023-11-15 14:00:00'),
(8, 3, 'Takim Lideri', '2022-08-20 10:30:00');