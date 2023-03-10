# CƠ SỞ DỮ LIỆU

## DBMS

DBMS là viết tắt của Database Management System ( Hệ quản trị Cơ sở dữ liệu). DBMS là phần mềm
được thiết kế để xác định, tiến hành các thao tác, truy xuất và quản lý dữ liệu trong Cơ sở dữ liệu như: định dạng dữ
liệu, tên trường, cấu trúc bản ghi và cấu trúc tệp. Nó cũng xác định
các quy tắc để xác nhận và thao tác với dữ liệu.

Người dùng có thể thao tác sửa/xóa/thêm dữ liệu mà không còn cần các chương trình khung.
Một vài DBMS phổ biến:

* <strong> MySQL </strong>
* <strong> SQL Server </strong>
* <strong> Oracle </strong>

## SQL/NoSQL

SQL ( Structured Query language) là ngôn ngữ chuẩn để xử lý Cơ sở dữ liệu quan hệ. Một cơ sở dữ liệu quan hệ xác định
các mối quan hệ dưới dạng các bảng.
Lập trình SQL được sử dụng hiệu quả để chèn, tìm kiếm, cập nhật, xóa các bản ghi cơ sở dữ liệu.
Ngoài ra, SQL có thể làm rất nhiều thứ bao gồm, nhưng không giới hạn, tối ưu hóa và duy trì cơ sở dữ liệu.
Các cơ sở dữ liệu quan hệ như Cơ sở dữ liệu MySQL, Oracle, MS SQL Server, Sybase, vv sử dụng SQL.

NoSQL là một DMS không quan hệ, không yêu cầu một lược đồ cố định, tránh các phép nối, và dễ dàng mở rộng. Cơ sở dữ liệu
NoSQL sử dụng cho các kho dữ liệu phân tán với nhu cầu lưu trữ dữ liệu khổng lồ. NoSQL được sử dụng cho dữ liệu lớn
và các ứng dụng web thời gian thực. Ví dụ như các công ty như Twitter, Facebook, Google thu thập hàng terabyte dữ liệu
người dùng mỗi ngày.

RDBMS truyền thống sử dụng cú pháp SQL để lưu trữ và truy xuất dữ liệu để có thêm thông tin chi tiết. Thay vào đó, một
hệ thống cơ sở dữ liệu NoSQL bao gồm một loạt các công nghệ cơ sở dữ liệu có thể lưu trữ dữ liệu có cấu trúc, bán cấu
trúc, không có cấu trúc và đa hình.

## datatype in SQL relationships of database

CÓ 3 loại quan hệ chính trong cơ sở dữ liệu: quan hệ một-một, một-nhiều, nhiều-nhiều.

## Aggregate functions

<strong> Hàm tập hợp </strong> là các hàm toán học tổng cộng một tập hợp các giá trị cho ra một giá trị kết quả duy nhất để xác định đặc
điểm của tập dữ liệu.

Các hàm tập hợp phổ biến là:

* Hàm trung bình cộng: <strong> AVERAGE </strong>

* Hàm đếm giá trị:<strong> COUNT </strong>

* Hàm giá trị lớn nhất:<strong> MAXIMIZE </strong>

* Hàm null hay hàm bỏ qua các giá trị:<strong> NANMEAN </strong>

* Hàm trung vị:<strong> MEDIAN </strong>

* Hàm giá trị nhỏ nhất:<strong> MINIMUM </strong>

* Hàm yếu vị:<strong> MODE </strong>

* Hàm tổng:<strong> AGGREGATE </strong>

## Query and subquery

## Index

Chỉ mục là một cấu trúc dữ liệu cho phép truy xuất các hàng từ một bảng nhanh hơn. Các chỉ mục có thể được tạo trên một
hoặc nhiều cột của bảng và chúng cho phép hệ thống cơ sở dữ liệu tìm các hàng nhanh hơn và hiệu quả hơn.

Một số loại chỉ mục:

<strong>Unique index</strong>: Loại chỉ mục này đảm bảo rằng các cột được lập chỉ mục không chứa các giá trị trùng lặp.

```sql
CREATE UNIQUE INDEX idx_customers_email ON customers (email);
```

<strong>Primary index</strong>: Loại chỉ mục này được sử dụng để xác định duy nhất mỗi hàng trong bảng. <strong>Primary
index</strong> thường là chỉ mục duy nhất.

```sql
CREATE TABLE customers
(
    id    INT PRIMARY KEY,
    name  VARCHAR(255),
    email VARCHAR(255)
);
```

<strong>Clustered index</strong>: Loại chỉ mục này sắp xếp lại thứ tự vật lý của bảng và lưu trữ các hàng dữ liệu trong
bảng theo cùng thứ tự như chỉ mục. Chỉ có thể có một <strong>Clustered index</strong> trên mỗi bảng.

```sql
CREATE
CLUSTERED INDEX idx_customers_name ON customers (name);
```

<strong>Non-clustered index</strong>: Loại chỉ mục này không thay đổi thứ tự vật lý của các hàng trong bảng. Thay vào
đó, nó lưu trữ một tham chiếu đến các hàng dưới dạng "con trỏ" trong chỉ mục. Có thể có nhiều chỉ mục không nhóm trên
mỗi bảng.

```sql
CREATE INDEX idx_customers_email ON customers (email);

##
Transaction

Một giao dịch là một tập hợp các câu lệnh SQL được thực thi như một đơn vị. Nó cho phép bạn thực hiện các thay đổi dữ liệu và sau đó hoàn tác chúng nếu có bất kỳ lỗi nào xảy ra.

Các câu lệnh SQL được thực thi trong một giao dịch được gọi là các câu lệnh trong giao dịch. Các câu lệnh trong giao dịch có thể là các câu lệnh INSERT,
UPDATE,
DELETE hoặc các câu lệnh DDL như CREATE, ALTER, DROP.
    Các câu lệnh trong giao dịch có thể được thực thi thành công hoặc thất bại.Nếu một câu lệnh trong giao dịch thất bại, tất cả các thay đổi được thực hiện bởi các câu lệnh trước đó trong giao dịch sẽ được hoàn tác.
    Các thuộc tín của giao dịch:

    * <strong>Atomicity</strong>: Một giao dịch được thực hiện như một đơn vị.Nó có nghĩa là tất cả các câu lệnh trong giao dịch sẽ được thực hiện thành công hoặc thất bại.
    * <strong>Consistency</strong>: Một giao dịch phải đảm bảo rằng dữ liệu của hệ thống luôn ở trạng thái hợp lệ.Nó có nghĩa là tất cả các thay đổi được thực hiện bởi giao dịch phải đảm bảo rằng dữ liệu luôn ở trạng thái hợp lệ.
    * <strong> Isolation </strong>: Một giao dịch không ảnh hưởng đến các giao dịch khác.Nó có nghĩa là các giao dịch được thực hiện độc lập với nhau.
    * <strong>Durability</strong>: Một giao dịch được thực hiện thành công sẽ luôn được lưu trữ trong cơ sở dữ liệu.Nó có nghĩa là các thay đổi được thực hiện bởi giao dịch sẽ được lưu trữ trong cơ sở dữ liệu và không bị mất.
    Ví dụ:

    ```sql
    BEGIN TRANSACTION;
    
    UPDATE accounts
    SET balance = balance - 100
    WHERE id = 1;
    
    UPDATE accounts
    SET balance = balance + 100
    WHERE id = 2;
    
    COMMIT;
```

## PDO

PHP Data Objects (<strong>PDO</strong>) là lớp truy cập cơ sở dữ liệu cung cấp giao diện thống nhất để truy cập các cơ
sở dữ liệu khác nhau trong PHP. Đó là một cách tiếp cận hướng đối tượng để truy cập cơ sở dữ liệu và trừu tượng hóa các
chi tiết dành riêng cho cơ sở dữ liệu để kết nối và truy vấn cơ sở dữ liệu, cho phép các nhà phát triển viết mã di động
trên các hệ thống cơ sở dữ liệu khác nhau.

Một số tính năng của <strong>PDO</strong>:

* <strong>PDO</strong> hỗ trợ các câu lệnh đã chuẩn bị sẵn và các truy vấn được tham số hóa, có thể giúp ngăn chặn các
  cuộc tấn công SQL injection.
* <strong>PDO</strong> cung cấp một giao diện thống nhất để làm việc với các loại cơ sở dữ liệu khác nhau, vì vậy bạn
  không cần sử dụng các chức năng khác nhau cho từng cơ sở dữ liệu.
* <strong>PDO</strong> có giao diện hướng đối tượng và có kích thước nhỏ.
* <strong>PDO</strong> hỗ trợ các transaction, vì vậy bạn có thể thực thi nhiều câu lệnh cơ sở dữ liệu dưới dạng một câu
  lệnh.

Ví dụ kết nối với MySQL:

```php
$dsn = 'mysql:host=localhost;dbname=testdb';
$username = 'user';
$password = 'password';

try {
    $db = new PDO($dsn, $username, $password);
} catch (PDOException $e) {
    // An error occurred
}
```

Khi bạn có một đối tượng PDO, bạn có thể sử dụng phương thức `query()` của nó để thực thi một câu lệnh SQL
và `prepare()` của nó để chuẩn bị một câu lệnh để thực thi. Bạn cũng có thể sử dụng phương thức `fetch()` để truy xuất
các hàng được trả về bởi câu lệnh SELECT.

```php

// Execute a query
$stmt = $db->query('SELECT * FROM users');
while ($row = $stmt->fetch()) {
    // Do something with the row
}

$stmt = $db->query('SELECT * FROM users');
$rows = $stmt->fetchAll();
foreach ($rows as $row) {
    // Do something with the row
}


// Prepare a statement
$stmt = $db->prepare('SELECT * FROM users WHERE username = ?');
$stmt->bindValue(1, $username, PDO::PARAM_STR);
$stmt->execute();
while ($row = $stmt->fetch()) {
    // Do something with the row
}

$stmt = $db->prepare('SELECT * FROM users WHERE username = :username');
$stmt->bindValue(':username', $username, PDO::PARAM_STR);
$stmt->execute();
while ($row = $stmt->fetch()) {
    // Do something with the row
}
```

## SQL Injection

SQL injection là một kiểu tấn công mạng cho phép kẻ tấn công thực thi các câu lệnh SQL độc hại đối với cơ sở dữ liệu.
Những câu lệnh này có thể được sử dụng để thao túng dữ liệu hoặc để có quyền truy cập trái phép vào dữ liệu nhạy cảm.

Một cuộc tấn công SQL injection thường được khởi chạy bằng cách gửi một đầu vào độc hại đến một ứng dụng web, sau đó
được chuyển đến cơ sở dữ liệu như một phần của truy vấn SQL. Nếu cơ sở dữ liệu không được bảo mật đúng cách, kẻ tấn công
có thể chèn mã độc hại vào truy vấn được thực thi bởi cơ sở dữ liệu, cho phép chúng thao túng dữ liệu hoặc truy cập trái
phép vào thông tin nhạy cảm.

Các cuộc tấn công SQL injection có thể rất nguy hiểm vì chúng có thể được sử dụng để đánh cắp dữ liệu nhạy cảm như thông
tin đăng nhập, số thẻ tín dụng và thông tin cá nhân khác. Điều quan trọng là phải thực hiện các bước để ngăn chặn các
cuộc tấn công SQL injection bằng cách làm sạch đúng cách đầu vào của người dùng và sử dụng các câu lệnh đã chuẩn bị khi
tương tác với cơ sở dữ liệu.

Ví dụ:

```sql
SELECT *
FROM books
WHERE title LIKE '%'
   OR 1 = 1 -- %';
```

'`OR 1=1 --` ' là một phần của cụm từ tìm kiếm được hiểu là điều kiện bổ sung trong mệnh đề WHERE, điều này luôn đúng.
Kết quả là truy vấn sẽ trả về tất cả các hàng trong bảng sách, bất kể giá trị của cột tiêu đề.

```sql
SELECT *
FROM users
WHERE username = 'admin';
DROP TABLE users; --' AND password = 'whatever password was entered';
```

'`DROP TABLE users; --` ' là một phần của mệnh đề WHERE, điều này sẽ xóa bảng người dùng. Kết quả là bảng người dùng sẽ
bị xóa và tất cả dữ liệu sẽ bị mất, vô hiệu hóa hoàn toàn chức năng đăng nhâp của ứng dụng.

Một số cách để ngăn chặn SQL injection:

- Sử dụng các câu lệnh đã chuẩn bị thay vì truyền tham số trực tiếp vào câu lệnh SQL.

    ```php
    $stmt = $conn->prepare("SELECT * FROM users WHERE username = ? AND password = ?");
    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();
    $result = $stmt->get_result();
    ```

- Xác thực kiểu dữ liệu của đầu vào của người dùng và chuyển đổi nó thành kiểu dữ liệu mong muốn.

    ```php
    $username = mysqli_real_escape_string($conn, $username);
    $password = mysqli_real_escape_string($conn, $password);
    ```

- Sử dụng prepared statements:

    ```php
    $stmt = $conn->prepare("SELECT * FROM users WHERE username = ? AND password = ?");
    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();
    $result = $stmt->get_result();
    ```

- Luôn cập nhật cơ sở dữ liệu và ứng dụng web của bạn để sử dụng phiên bản mới nhất của các công cụ và thư viện.

- Phân quyền người dùng cơ sở dữ liệu để hạn chế các quyền truy cập của người dùng.

- Sử dụng các công cụ để phát hiện các cuộc tấn công SQL injection như SQLMap, Burp Suite, Acunetix, ...

# Outline

## <strong>Subquery</strong> vs <strong>Inner Join</strong>

<strong>Subquery</strong> là một truy vấn được lồng bên trong một truy vấn khác. Nó được sử dụng để trả về dữ liệu sẽ
được sử dụng trong truy vấn bên ngoài làm điều kiện để truy vấn chính thực thi.

<strong>Inner Join</strong> là một kiểu nối chỉ trả về những hàng từ cả hai bảng thỏa mãn điều kiện nối. Nó được sử dụng
để kết hợp các hàng từ hai hoặc nhiều bảng dựa trên một cột có liên quan giữa chúng.

<table>
 <thead>
    <tr>
     <th></th>
     <th><strong>Subquery</strong></th>
     <th><strong>Inner Join</strong></th>
    </tr>
 </thead>
 <tbody>
    <tr>
        <td>Điểm mạnh</td>
        <td>
            - Có thể được sử dụng để trả về một giá trị hoặc nhiều giá trị <br>
            - Có thể được sử dụng trong các mệnh đề khác nhau như mệnh đề SELECT, FROM, WHERE và HAVING<br>
            - Có thể được sử dụng để thực hiện nhiều hoạt động khác nhau, bao gồm lọc, tổng hợp và thao tác dữ liệu<br>
        </td>
        <td>
            - Có thể được sử dụng để kết hợp các hàng từ hai hoặc nhiều bảng dựa trên một cột có liên quan giữa chúng<br>
            - Hiệu quả hơn, dễ đọc và dễ hiểu hơn <strong>Subquery</strong><br>
            - Có thể được sử dụng để trả về một số lượng lớn các hàng một cách nhanh chóng và hiệu quả<br>
        </td>
    </tr>
    <tr>
        <td>Điểm yếu</td>
        <td>
            - Có thể thực thi chậm hơn các loại truy vấn khác <br>
            - Có thể khó đọc và bảo trì hơn vì chúng được lồng trong truy vấn chính <br>
            - Một số cơ sở dữ liệu có giới hạn về số truy vấn con có thể được lồng trong một truy vấn <br>
        </td>
        <td>
            - Chỉ có thể được sử dụng để kết hợp các hàng từ hai bảng <br>
            - Có thể không phù hợp với các trường hợp có nhiều giá trị NULL trong các cột đã nối <br>
            - Có thể không phải là cách hiệu quả nhất để kết hợp dữ liệu từ nhiều hơn hai bảng <br>
        </td>
    </tr>
 </tbody>
</table>


Nhìn chung, <strong>Inner Join</strong> trong hiệu quả hơn và hoạt động tốt hơn <strong>Subquery</strong> vì chúng được
thực hiện nhanh hơn, dễ đọc và dễ hiểu hơn. Điều này là do các kết nối bên trong không được lồng trong truy vấn chính,
vì vậy chúng dễ dàng hơn cho công cụ cơ sở dữ liệu thực thi.

Mặt khác, các truy vấn phụ có thể thực thi chậm hơn vì chúng được lồng trong truy vấn chính và yêu cầu công cụ cơ sở dữ
liệu thực hiện truy vấn bên trong trước khi có thể thực hiện truy vấn bên ngoài. Các <strong>Subquery</strong> cũng có
thể khó đọc và khó bảo trì hơn vì chúng được lồng trong truy vấn chính, điều này có thể khiến chúng khó khắc phục sự cố
và gỡ lỗi hơn.

## Indexing

### Indexing mechanism

Giả sử bạn có một bảng gồm 1000 bản ghi chứa các tên người: "Phong", "Dung", "Hải",... Bạn cần tìm người tên "Nam". Vậy
cơ chế lập chỉ mục sẽ hoạt động như thế nào trong trường hợp này?
Nếu bạn có một chỉ mục trên cột tên của bảng, DBMS có thể sử dụng chỉ mục này để tìm hàng có chứa tên "Nam" hiệu quả
hơn.

Đây là cách cơ chế lập chỉ mục có thể hoạt động trong trường hợp này:

- DBMS nhận được truy vấn yêu cầu hàng có tên "Nam".
- DBMS xem xét chỉ mục trên cột tên để xem liệu nó có thể được sử dụng để thực hiện truy vấn hay không.
- DBMS quét chỉ mục và tìm mục có giá trị "Nam".
- Nếu mục nhập chỉ mục được tìm thấy, DBMS sẽ truy xuất hàng tương ứng từ bảng và trả lại cho người dùng.
- Nếu mục nhập chỉ mục không được tìm thấy, DBMS sẽ trả về một tập hợp kết quả trống cho người dùng.

Trong trường hợp này, việc sử dụng một chỉ mục sẽ cho phép DBMS tìm hàng có tên "Nam" hiệu quả hơn mà không cần phải
quét qua toàn bộ bảng. Điều này có thể đặc biệt hữu ích nếu bảng lớn và chỉ mục nhỏ, vì DBMS có thể sử dụng chỉ mục để
nhanh chóng định vị hàng mong muốn mà không cần phải quét qua một số lượng lớn hàng.

Cần lưu ý rằng các bước và thuật toán cụ thể được DBMS sử dụng để thực hiện truy vấn có chỉ mục có thể khác nhau tùy
thuộc vào DBMS và truy vấn cụ thể đang được thực thi.

### Indexing algorithm

Khi một truy vấn được thực thi trong SQL, hệ thống quản lý cơ sở dữ liệu (DBMS) sẽ tìm kiếm một cách hiệu quả để thực
hiện truy vấn. Nếu một chỉ mục có sẵn trên (các) cột đang được truy vấn, thì DBMS có thể sử dụng chỉ mục đó để tăng tốc
độ thực hiện truy vấn.

Có một số thuật toán mà DBMS có thể sử dụng khi thực hiện truy vấn với chỉ mục, bao gồm:

* <strong>Index scan</strong>: Quét chỉ mục đọc toàn bộ chỉ mục từ đầu đến cuối để tìm các hàng khớp với truy vấn. Điều
  này có thể hiệu quả nếu chỉ mục nhỏ hoặc nếu truy vấn đang tìm kiếm một tỷ lệ phần trăm lớn các hàng trong bảng.
* <strong>Index seek</strong>: Tìm kiếm chỉ mục chỉ đọc các mục nhập chỉ mục cụ thể cần thiết để đáp ứng truy vấn. Điều
  này có thể hiệu quả hơn so với quét chỉ mục nếu chỉ mục lớn và truy vấn chỉ tìm kiếm một tỷ lệ phần trăm nhỏ các hàng
  trong bảng.
* <strong>Range scan</strong>: Quét phạm vi đọc qua chỉ mục để tìm tất cả các hàng khớp với một phạm vi giá trị được chỉ
  định trong truy vấn. Ví dụ: nếu truy vấn đang tìm kiếm tất cả các hàng có giá trị của cột nằm trong khoảng từ 10 đến
  20, thì quét theo phạm vi sẽ đọc qua chỉ mục và trả về tất cả các hàng khớp với phạm vi này.

Thuật toán cụ thể được sử dụng bởi DBMS sẽ phụ thuộc vào truy vấn được thực hiện và cấu trúc cũng như kích thước của chỉ
mục. DBMS sẽ chọn thuật toán mà nó mong đợi sẽ hiệu quả nhất dựa trên các thuật toán tối ưu hóa bên trong của nó.

## Single indexing vs B-tree indexing

### Single indexing

Single indexing là một cấu trúc chỉ mục đơn giản, nó chỉ lưu trữ các giá trị của cột được chỉ mục và các chỉ số của hàng
tương ứng trong bảng. Ví dụ, nếu bảng có 100 hàng, thì chỉ mục sẽ lưu trữ 100 giá trị của cột được chỉ mục và các chỉ số
của hàng tương ứng trong bảng. Điều này có thể hiệu quả nếu chỉ mục nhỏ hoặc nếu truy vấn đang tìm kiếm một tỷ lệ phần
trăm lớn các hàng trong bảng.

### B-tree indexing

B-tree indexing là một cấu trúc chỉ mục phức tạp hơn, nó lưu trữ các giá trị của cột được chỉ mục và các chỉ số của hàng
tương ứng trong bảng theo một cấu trúc cây. Ví dụ, nếu bảng có 100 hàng, thì chỉ mục sẽ lưu trữ 100 giá trị của cột được
chỉ mục và các chỉ số của hàng tương ứng trong bảng theo một cấu trúc cây. Điều này có thể hiệu quả hơn so với chỉ mục
đơn nếu chỉ mục lớn và truy vấn chỉ tìm kiếm một tỷ lệ phần trăm nhỏ các hàng trong bảng. B-tree có khẳ năng tự cân bằng
để cấu trúc của B-tree luôn trong trạng thái cân bằng kể cả khi có dữ liệu được thêm vào hoặc xóa khỏi chỉ mục.

### Comparing

Để so sánh hai cấu trúc chỉ mục này, hãy xem xét một bảng có 100 hàng và một cột được chỉ mục có 100 giá trị khác nhau.
Giả sử rằng chúng ta muốn tìm kiếm tất cả các hàng có giá trị của cột được chỉ mục nằm trong khoảng từ 10 đến 20. Để tìm
kiếm tất cả các hàng khớp với phạm vi này, chúng ta sẽ sử dụng một trong hai cấu trúc chỉ mục này.

Đối với chỉ mục đơn, chúng ta sẽ duyệt qua 100 giá trị của cột được chỉ mục và tìm kiếm các giá trị nằm trong khoảng từ
10 đến 20. Điều này có thể hiệu quả nếu chỉ mục nhỏ hoặc nếu truy vấn đang tìm kiếm một tỷ lệ phần trăm lớn các hàng
trong bảng.

Đối với chỉ mục B-tree, chúng ta sẽ duyệt qua các nút lá của cây và tìm kiếm các giá trị nằm trong khoảng từ 10 đến 20.
Điều này có thể hiệu quả hơn so với chỉ mục đơn nếu chỉ mục lớn và truy vấn chỉ tìm kiếm một tỷ lệ phần trăm nhỏ các
hàng trong bảng.

* <strong>Cấu trúc</strong>: chỉ mục đơn sử dụng một cột duy nhất để chỉ mục dữ liệu trong bảng, trong khi chỉ mục
  B-tree sử dụng cấu trúc dữ liệu cây cân bằng để lưu trữ dữ liệu được chỉ mục.

* <strong>Hiệu quả</strong>: chỉ mục đơn có thể hiệu quả hơn đối với các tập dữ liệu nhỏ, trong khi chỉ mục B-tree có
  thể hiệu quả hơn đối với các tập dữ liệu lớn và cho các truy vấn cần tìm kiếm các giá trị hoặc phạm vi giá trị cụ thể.

* <strong>Độ phức tạp</strong>: chỉ mục đơn thường dễ thực hiện và dễ hiểu hơn so với chỉ mục B-tree, có thể phức tạp
  hơn do cấu trúc dữ liệu cây.

* <strong>Tính linh hoạt</strong>: chỉ mục B-tree có thể được sử dụng trên một cột hoặc trên nhiều cột, trong khi chỉ
  mục đơn chỉ có thể được sử dụng trên một cột.