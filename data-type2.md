# Veri Tipleri II

## Karakter Veri Tipleri
PostgreSQL’de karakter veri tipleri üç ana gruba ayrılır:
- CHAR(n) → Sabit uzunluk
- VARCHAR(n) → Değişken uzunluk
- TEXT → Sınırsız uzunluk

Sınırlı sayıda karekter kullanımı için VARCHAR veya CHAR veri tipleri kullanılır. VARCHAR veri tipi doldurulmayan karakterleri yok sayar, CHAR veri tipi ise doldurulmayan karakterler için boşluk bırakır. Sınırsız karekter kullanımı için ise TEXT veri tipi kullanılır.

- **CHAR** sabit uzunluklu bir veri tipidir; belirlenen uzunluktan daha kısa veri girilirse kalan kısım boşluk ile doldurulur. Bu nedenle genellikle sabit uzunluk gerektiren kodlar (ülke kodu, ürün kodu vb.) için tercih edilir.
- Sabit uzunluklu bir veri tipidir.
- Belirlenen uzunluktan daha kısa veri girilirse kalan kısım boşluk ile doldurulur.
- Genellikle sabit uzunluk gerektiren kodlar (ülke kodu, ürün kodu, ISO kodları vb.) için uygundur.

<img width="525" height="167" alt="image" src="https://github.com/user-attachments/assets/18ac54ae-197a-4732-8ab6-5c337449834d" />


**VARCHAR** değişken uzunluklu bir veri tipidir; sadece kullanılan karakter kadar alan kaplar. CHAR’dan farkı, gereksiz boşluk doldurma yapmaması ve depolama açısından daha esnek olmasıdır.

- Değişken uzunluklu bir veri tipidir.
- Sadece kullanılan karakter kadar alan kaplar.
- CHAR’dan farkı: gereksiz boşluk doldurma yapmaz, depolama açısından daha esnektir.

VARCHAR belirli bir maksimum uzunlukla sınırlandırılabilirken **TEXT** çok daha büyük metinleri saklamak için kullanılır. Performans açısından çoğu modern PostgreSQL sürümünde fark minimaldir, ancak TEXT genellikle uzun açıklamalar veya serbest metin alanları için tercih edilir.”
- Çok büyük metinleri saklamak için kullanılır.
- Modern PostgreSQL sürümlerinde VARCHAR ile performans farkı minimaldir.
- Uzun açıklamalar, yorumlar, log kayıtları gibi serbest metin alanları için idealdir.

<img width="1707" height="516" alt="image" src="https://github.com/user-attachments/assets/cbddb347-8f12-4420-8233-55eaea6c87ad" />


```sql
CHARACTER TYPES
-- SELECT ('Lorem': : CHAR(10));
-- SELECT ('Lorem ipsum dolor sit amet' :: CHAR(10)); 
-- SELECT ('Lorem' : : VARCHAR(10));
-- SELECT ('Lorem ipsum dolor sit amet' :: VARCHAR(10));
-- SELECT ('Lorem' : : TEXT);
-- SELECT ('Lorem ipsum dolor sit amet' :: TEXT);

-- CHAR
SELECT ('Lorem'::CHAR(10));
SELECT ('Lorem ipsum dolor sit amet'::CHAR(10));

-- VARCHAR
SELECT ('Lorem'::VARCHAR(10));
SELECT ('Lorem ipsum dolor sit amet'::VARCHAR(10));

-- TEXT
SELECT ('Lorem'::TEXT);
SELECT ('Lorem ipsum dolor sit amet'::TEXT);

```

## Boolean Veri Tipleri

TRUE, FALSE veya NULL (Bilinmeyen) değerlerini alabilirler.

Assagidaki durumlarda boolean degeri true ve false dondurur.

- TRUE: true, yes, on, ,t, 1
- FALSE: false, no, off, f, 0

```sql
BOOLEAN TYPES

-- SELECT (true, 'yes', 't', 1) TRUE
-- SELECT (false, 'no', 'f', 0) FALSE
-- SELECT('no' :: BOOLEAN);
-- SELECT(1 :: BOOLEAN);
-- SELECT('f' :: BOOLEAN);
-- SELECT(true :: BOOLEAN);
-- SELECT(NULL :: BOOLEAN);

```



## Zaman / Tarih Veri Tipleri
tarih veri tipleri **yil-ay-gun** seklinde yazilir postgressql de.

<img width="655" height="293" alt="image" src="https://github.com/user-attachments/assets/5f39cda0-a7d7-42ab-9969-9cb657cb752a" />

```sql

DATE TIME TYPES

-- SELECT ('1980-12-03' :: DATE);
-- SELECT ('DEC-03-1980' :: DATE);
-- SELECT ('DEC 03 1980':: DATE);
-- SELECT ('1980 December 03'); -> veri tipi olarak text gorunur, bu yuzden :: DATE olarak tanimlamak gerekir date gormek istersek.!  TEXT olarak görünür, DATE'e cast etmek gerekir -> SELECT ('1980 December 03'::DATE);

-- SELECT ('03:44' :: TIME); -> 03:44:00 boyle gozukur kendi midnight after atar 
-- SELECT ('03:44 AM' :: TIME);
-- SELECT ('03:44 PM' :: TIME);
-- SELECT ('03:44:11' :: TIME);
-- SELECT ('02:16' :: TIME WITH TIME ZONE);
-- SELECT ('1980 December 03 02:16:07' :: TIMESTAMP); -> zaman ve tarihi bir arada gostermek istersek TIMESTAMP kullaniriz.!
```

- DATE → Sadece tarih
- TIME → Sadece saat
- TIME WITH TIME ZONE → Saat + zaman dilimi
- TIMESTAMP → Tarih + saat
- TIMESTAMP WITH TIME ZONE → Tarih + saat + zaman dilimi


<img width="519" height="422" alt="image" src="https://github.com/user-attachments/assets/32546eff-ddfa-4fa5-8c71-5542324212a7" />

---

## REFERENCES

1. [PostgreSQL 13 Veri Tipleri](https://www.postgresql.org/docs/current/datatype.html)
