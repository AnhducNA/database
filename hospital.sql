use
hospital;
CREATE TABLE khu
(
    id  int          NOT NULL AUTO_INCREMENT,
    ten varchar(255) NOT NULL,
    PRIMARY KEY (id)
)

CREATE TABLE benhNhan
(
    id       int          NOT NULL AUTO_INCREMENT,
    ten      varchar(255) NOT NULL,
    ngaySinh date,
    PRIMARY KEY (id)
)
CREATE TABLE loaiBenhNhan
(
    id  int          NOT NULL AUTO_INCREMENT,
    ten varchar(255) NOT NULL,
    PRIMARY KEY (id)
)
CREATE TABLE bacSi
(
    id  int          NOT NULL AUTO_INCREMENT,
    ten varchar(255) not null,
    PRIMARY KEY (id)
)
CREATE TABLE giuongBenh
(
    id           int NOT NULL AUTO_INCREMENT,
    soPhong      int,
    soKhuChuaTri int,
    PRIMARY KEY (id)
)
CREATE TABLE vatTu
(
    id     int NOT NULL AUTO_INCREMENT,
    dacTa  varchar(255),
    donGia bigint,
    PRIMARY KEY (id)
)
CREATE TABLE nhanVien
(
    id  int          NOT NULL AUTO_INCREMENT,
    ten varchar(255) NOT NULL,
    PRIMARY KEY (id)
)
CREATE TABLE suChuaTri
(
    id  int          NOT NULL AUTO_INCREMENT,
    ten varchar(255) NOT NULL,
    PRIMARY KEY (id)
)
CREATE TABLE khu_nhanVien
(
    id          int NOT NULL AUTO_INCREMENT,
    khu_id      int,
    nhanVien_id int,
    FOREIGN KEY (khu_id) REFERENCES khu (id),
    FOREIGN KEY (nhanVien_id) REFERENCES nhanVien (id),
    PRIMARY KEY (id)
)
CREATE TABLE lanChuaTri
(
    id              int NOT NULL AUTO_INCREMENT,
    benhNhan_id     int,
    bacSi_id        int,
    ngayChuaTri     date,
    thoiGianChuaTri varchar(255),
    ketQua          varchar(255),
    FOREIGN KEY (benhNhan_id) REFERENCES benhNhan (id),
    FOREIGN KEY (bacSi_id) REFERENCES bacSi (id),
    PRIMARY KEY (id)
)
CREATE TABLE vatTu_benhNhan
(
    id          int NOT NULL AUTO_INCREMENT,
    benhNhan_id int,
    vatTu_id    int,
    ngay        date,
    thoiGian    varchar(255),
    soLuong     int,
    FOREIGN KEY (benhNhan_id) REFERENCES benhNhan (id),
    FOREIGN KEY (vatTu_id) REFERENCES vatTu (id),
    PRIMARY KEY (id)
)

-- Thống kê số giờ làm việc trong một tuần gần nhất của mỗi nhân viên tại một khu chữa trị.
SELECT knv.khu_id, khu.ten, knv.nhanVien_id, nv.ten, SUM(thoiGian) as soGioTrongTuan
FROM khu_nhanVien as knv
         LEFT JOIN khu ON knv.khu_id = khu.id
         LEFT JOIN nhanVien nv on knv.nhanVien_id = nv.id
WHERE knv.ngay >= NOW()
  AND knv.ngay <= NOW() + INTERVAL 7 DAY
group by knv.khu_id, knv.nhanVien_id;

-- Thống kê mỗi lần chữa trị , bệnh nhân được chữa trị bởi bác sĩ nào, ngày chữa trị, thời gian chữa trị, kết quả.
SELECT sct.id, bn.ten, bs.ten, sct.ngayChuaTri, sct.thoiGianChuaTri, sct.ketQua
from suChuaTri sct
         LEFT JOIN benhNhan bn on sct.benhNhan_id = bn.id
         LEFT JOIN bacSi bs on sct.bacSi_id = bs.id
ORDER BY bn.ten;

-- Thống kê ngày, thời gian, số lượng, tổng số tiền (số lượng x đơn giá) mỗi loại vạt tư sử dụng cho bệnh nhân.
SELECT vt.dacTa, vtbn.ngay, vtbn.thoiGian, vtbn.soLuong, vt.donGia, vtbn.soLuong * vt.donGia as tongSoTien
FROM vatTu_benhNhan vtbn
         LEFT JOIN benhNhan bn ON vtbn.benhNhan_id = bn.id
         LEFT JOIN vatTu vt ON vtbn.vatTu_id = vt.id
ORDER BY vtbn.ngay ASC;

-- Thống kê các bênh nhân được bác sĩ nào theo dõi
SELECT bn.ten, bs.ten as bac_si_theo_doi
FROM benhNhan bn
         LEFT JOIN bacSi bs ON bn.loaiBenhNhan_id = bs.id
WHERE bs.loaiBacSi = 'bac_si_theo_doi'
ORDER BY bn.id;
