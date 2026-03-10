# Tablo Oluşturmak ve Silmek (CREATE - DROP)

## Tablo Oluşturmak - CREATE

SQL ile yeni bir tablo oluşturmak için **CREATE** anahtar kelimesi kullanılır. Tablo oluştururken sonrasında daha detaylı konuşacağımız 3 önemli başlık daha vardır.

Sütunlara verilecek isim, sütunların veri tipi ve varsa sütunlarda bulunan kısıtlama yapıları.

## Tablo Oluşturmak - CREATE Söz Dizimi
```sql
CREATE TABLE <tablo_adı> (
    <sütun_adı> <veri_tip> (kısıtlama_adı>,
    <sütun_adı> <veri_tip> (kısıtlama_adı>,
   ....
);
```

## Tablo Oluşturmak - CREATE Örnek Kullanım

**author** isminde bir tablo oluşturalım, id, first_name, last_name, email, birthday sütunları olsun. Veri tipleri ve kısıtlama yapılarıyla ilgili sonrasında detaylı olarak konuşacağız.

```sql
CREATE TABLE author (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100)
  birthday DATE
);
```
## Tablo Silmek - DROP
Oluşturduğumuz tabloları silmek için **DROP** anahtar kelimesi kullanılır.Hata almamak icin **IF EXISTS** yapisiyla beraber yazariz.

### Tablo Silmek - DROP Söz Dizimi
```sql
DROP TABLE (IF EXISTS) <tablo_adı>;
```
Burada **IF EXISTS** yapısını kullanarak yanlış tablo ismi yazımı durumunda hata mesajı almayı önleriz.

### Tablo Silmek - DROP Örnek Kullanım
"test" isimli tablomuzu silmek istersek;
```sql
DROP TABLE IF EXISTS test;
```

## Tabloya veri eklemek - INSERT INTO
Oluşturduğumuz tablolara veri eklemek için **INSERT INTO** anahtar kelimesi kullanılır.

### Tabloya veri eklemek - INSERT INTO Söz Dizimi
```sql
INSERT INTO <tablo_adı> ( id, <sutun_adi> ,<sutun_adi>, <sutun_adi>...) /* id gerek yok cunku id yukarida SERIAL veri tipi ile olusturduk aslinda SERIAL veri tipide integer veri tipidir otomatik artirmaya yarar yazmamiza gerek yoktur */
VALUES
    (<'first_name'>, <'last_name'>, <'email'>, <'year-month-day'>...),
    (<'first_name'>, <'last_name'>, <'email'>, <'year-month-day'>...),
    (<'first_name'>, <'last_name'>, <'email'>, <'year-month-day'>...);


```
### Tabloya veri eklemek - INSERT INTO Örnek Kullanım
```sql
INSERT INTO <tablo_adı> (first_name,last_name,email,birthday)
VALUES
    ('Haluk','Bilginer','halukbilginer@gmail.com','1948-11-07'),
    ('Cevdat','Iner','cevdatiner@gmail.com','1918-01-02'),
    ('Necip','Kisakurek','fazilkisakurek@gmail.com','1921-12-25');
```

## Var olan Tablodan yeni tablo olusturmak - LIKE
Oluşturduğumuz tablodan yeni bir tablo olusturmak ve olusturacagimiz tablonun olustudugumzu tablo ile ayni yapida olmasi icin ama veriler ayni olmaz hatta yeni tabloda veri olmadan olusmus gelir **LIKE** anahtar kelimesi kullanılır.

### Var olan Tablodan(verisi olmadan) yeni tablo olusturmak - LIKE Söz Dizimi
```sql
CREATE TABLE <new_table_name> (LIKE <old_table_name>); 
```

### Var olan Tablodan yeni tablo olusturmak - LIKE Örnek Kullanım
```sql
CREATE TABLE author2 (LIKE author); 
```
## Yeni tabloya eski tablodan veri eklemek (veri kopyalamak) - INSERT INTO SELECT 
Yeni tabloya eski tablodan veri eklemek icin INSERT INTO ve SELECT anahtar kelimleri kullanilir.

```sql
INSERT INTO <new_table_name>
SELECT * FROM <old_table_name>
```
## Var olan Tablodan verilerileriyle beraber yeni tablo olusturmak - CREATE TABLE … AS
Olusturulan tablodan icerisindeki verilerle beraber yeni tablo oluşturmak. Aslinda bunu bir tablonun yedegini olusturmak icin yapariz. **CREATE TABLE <new_table_name> AS** anahtar kelimesi kullanarak yapariz.
✔️ Var olan bir tablonun veya sorgunun sonucunu al
✔️ Yeni bir tablo olarak kaydet. 
 
## Var olan Tablodan verilerileriyle beraber yeni tablo olusturmak - CREATE TABLE … AS Soz Dizimi 
```sql
CREATE TABLE <new_table_name> AS
SELECT * FROM <old_table_name>
```
## Var olan Tablodan verilerileriyle beraber yeni tablo olusturmak - CREATE TABLE … AS Ornek Kullanim

```sql
CREATE TABLE author3 AS
SELECT * FROM author;

```














---
## REFERENCES
1. [W3Schools SQL CREATE](https://www.w3schools.com/sql/sql_create_table.asp)
2. [W3Schools SQL DROP](https://www.w3schools.com/sql/sql_drop_table.asp)
