CREATE TABLE birimler (
    birim_id INT PRIMARY KEY,
    birim_ad CHAR(25)
);

CREATE TABLE calisanlar (
    calisan_id INT PRIMARY KEY,
    ad CHAR(25),
    soyad CHAR(25),
    maas INT,
    katilma_tarihi DATETIME,
    calisan_birim_id INT,
    FOREIGN KEY (calisan_birim_id) REFERENCES birimler(birim_id)
);

CREATE TABLE ikramiye (
    ikramiye_calisan_id INT PRIMARY KEY,
    unvan_calisan CHAR(25),
    unvan_tarih DATETIME,
    FOREIGN KEY (ikramiye_calisan_id) REFERENCES calisanlar(calisan_id)
);

CREATE TABLE unvan (
    unvan_calisan_id INT PRIMARY KEY,
    unvan_calisan CHAR(25),
    unvan_tarih DATETIME,
    FOREIGN KEY (unvan_calisan_id) REFERENCES calisanlar(calisan_id)
);
