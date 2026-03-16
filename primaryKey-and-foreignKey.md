# Birincil Anahtar ve Yabancı Anahtar (PRIMARY KEY ve FOREIGN KEY)

## PRIMARY KEY
**PRIMARY KEY** bir tabloda bulunan veri sıralarını birbirinden ayırmamızı sağlayan bir kısıtlama (constraint) yapısıdır. O tabloda bulunan veri sıralarına ait bir "benzersiz tanımlayıcıdır".
- Benzersiz (Unique) olmalıdır. 
- NULL değerine sahip olamaz.
- **Bir tabloda en fazla 1 tane PRIMARY KEY constraint** bulunur.
- Ancak bu `PRIMARY KEY birden fazla kolondan oluşabilir` → buna *composite key* denir.


<img width="512" height="319" alt="image" src="https://github.com/user-attachments/assets/5c844493-da39-4892-bf7f-92c490e76333" />

Yukarıda bulunan görselimizde de gördüğünüz gibi STUDENT tablosunda bulunan **StudentId** sütunu PRIMARY KEY yapısındadır ve her satırı (veri kaydını) diğer satırlardan ayırmamızı sağlar.

## FOREIGN KEY
FOREIGN KEY, bir tablodaki bir kolonun başka bir tablodaki PRIMARY KEY’e bağlanmasını sağlar.

Bu ilişki sayesinde veritabanı tutarlılığı (referential integrity) korunur.

Primary key ile foreign key arasindaki iliskiyi kurmak icin **REFERENCES <table_name>** keywords kullanilir. 

```sql
CREATE TABLE book (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  page_number INTEGER NOT NULL,
  author_id INTEGER REFERENCES author(id) --> author tablosundaki (id) sutununa reference vermek demektir.
);
```
---

**FOREIGN KEY** bir tabloda bulunan herhangi bir sütundaki verilerin genelde başka bir tablo sütununa referans vermesi durumudur, tablolar arası ilişki kurulmasını sağlar.


<img width="1024" height="672" alt="image" src="https://github.com/user-attachments/assets/a2efb7cb-1bd6-457c-90b7-f3d6c3f3bb90" />

Yukarıda bulunan görselimizde de gördüğünüz gibi STUDENT tablosunda bulunan **courseId** sütunu FOREIGN KEY yapısındadır ve başka bir tablo olan "Course" tablosundaki **courseId** sütununa referans verir.

## PK–FK İlişkisi Nasıl Kurulur?
### Önce PRIMARY KEY olan tablo oluşturulur
```sql
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);
```
### Sonra FOREIGN KEY içeren tablo oluşturulur

```sql
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);
```

### Veri ekleme sırası önemlidir
Önce PK tablosuna veri eklenir:

```sql
INSERT INTO Departments VALUES (1, 'IT');
INSERT INTO Departments VALUES (2, 'HR');
```
### Sonra FK tablosuna:
```sql
INSERT INTO Employees VALUES (101, 'Ahmet', 1);
INSERT INTO Employees VALUES (102, 'Ayşe', 2);
```

###  ON DELETE / ON UPDATE CASCADE
Bu, FOREIGN KEY’in davranışını belirler.
#### ON DELETE CASCADE
Ana tabloda bir kayıt silinirse, bağlı tüm kayıtlar da silinir.
```sql
FOREIGN KEY (DeptID)
REFERENCES Departments(DeptID)
ON DELETE CASCADE
```

### ON UPDATE CASCADE
Ana tablodaki PK değeri değişirse, bağlı tablodaki FK değerleri de otomatik güncellenir.

#### ON UPDATE CASCADE
```sql
ON UPDATE CASCADE
```

> Diğer seçenekler
- RESTRICT → Silmeye/güncellemeye izin vermez
- SET NULL → FK kolonunu NULL yapar
- SET DEFAULT → FK kolonunu default değere çeker


### Ornek Kullanim

**JOIN = İki tabloyu PK–FK ilişkisine göre birleştirmek**

Hem book tablosundan hemde author tablosundan bilgi istersek **JOIN <table_name> ON <table_name.sutun_name> = <table_name.sutun_name** yapmamiz gerekir

<img width="1442" height="268" alt="image" src="https://github.com/user-attachments/assets/87c7fddb-6774-43ab-a44d-f0d8076a1d0b" />

```sql
SELECT * FROM book
JOIN author ON author.id = book.author_id;
```

---

## REFERENCES

1. [W3Schools PRIMARY KEY](https://www.w3schools.com/sql/sql_primarykey.asp)
2. [W3Schools FOREIGN KEY](https://www.w3schools.com/sql/sql_foreignkey.asp)
