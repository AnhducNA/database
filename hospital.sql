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
) use hospital;
CREATE TABLE khu_nhanVien
(
    id         int NOT NULL AUTO_INCREMENT,
    maKhu      int,
    maNhanVien int,
    FOREIGN KEY (maKhu) REFERENCES khu (id),
    FOREIGN KEY (maNhanVien) REFERENCES nhanVien (id),
    PRIMARY KEY (id)
)
CREATE TABLE lanChuaTri
(
    id              int NOT NULL AUTO_INCREMENT,
    maBenhNhan      int,
    maBacSi         int,
    ngayChuaTri     date,
    thoiGianChuaTri varchar(255),
    ketQua          varchar(255),
    FOREIGN KEY (maBenhNhan) REFERENCES benhNhan (id),
    FOREIGN KEY (maBacSi) REFERENCES bacSi (id),
    PRIMARY KEY (id)
)
CREATE TABLE vatTu_benhNhan
(
    id         int NOT NULL AUTO_INCREMENT,
    maBenhNhan int,
    maVatTu    int,
    ngay       date,
    thoiGian   varchar(255),
    soLuong    int,
    FOREIGN KEY (maBenhNhan) REFERENCES benhNhan (id),
    FOREIGN KEY (maVatTu) REFERENCES vatTu (id),
    PRIMARY KEY (id)
)