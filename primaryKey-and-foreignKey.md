# Birincil Anahtar ve Yabancı Anahtar (PRIMARY KEY ve FOREIGN KEY)

## PRIMARY KEY
**PRIMARY KEY** bir tabloda bulunan veri sıralarını birbirinden ayırmamızı sağlayan bir kısıtlama (constraint) yapısıdır. O tabloda bulunan veri sıralarına ait bir "benzersiz tanımlayıcıdır".
- Benzersiz (Unique) olmalıdır.
- NULL değerine sahip olamaz.
- **Bir tabloda en fazla 1 tane** bulunur.


<img width="512" height="319" alt="image" src="https://github.com/user-attachments/assets/5c844493-da39-4892-bf7f-92c490e76333" />

Yukarıda bulunan görselimizde de gördüğünüz gibi STUDENT tablosunda bulunan **StudentId** sütunu PRIMARY KEY yapısındadır ve her satırı (veri kaydını) diğer satırlardan ayırmamızı sağlar.

## FOREIGN KEY
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

- Bir tabloda birden fazla sütun FK olarak tanımlanabilir.
- Aynı sütunun içerisinde aynı değerler bulunabilir.

<img width="1024" height="672" alt="image" src="https://github.com/user-attachments/assets/a2efb7cb-1bd6-457c-90b7-f3d6c3f3bb90" />

Yukarıda bulunan görselimizde de gördüğünüz gibi STUDENT tablosunda bulunan **courseId** sütunu FOREIGN KEY yapısındadır ve başka bir tablo olan "Course" tablosundaki **courseId** sütununa referans verir.

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
