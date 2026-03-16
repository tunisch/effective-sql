# Veri Tipleri I

## Temel Veri Tipleri


- Sayısal Veri Tipleri
- Karakter Veri Tipleri
- Boolean Veri Tipleri0
 - Date / Time Veri Tipleri

1. Sayısal Veri Tipleri

PostgreSQL’de sayısal veri tipleri iki ana kategoriye ayrılır:
- Tam sayı (integer) veri tipleri
- Ondalıklı (floating / exact numeric) veri tipleri
Aşağıdaki tablolar PostgreSQL’in tüm sayısal veri tiplerini ve kullanım amaçlarını özetler.


<img width="895" height="458" alt="image" src="https://github.com/user-attachments/assets/a08b7787-4def-4977-a4ca-66b93e84a98f" />

Bu üç veri tipi arasındaki tek fark kapladıkları alan ve alabilecekleri değer aralığıdır.

Performans açısından genellikle aynıdır. Gereksiz büyük veri tipi seçmek depolama maliyetini artırır.


**Not:**
- REAL ve DOUBLE PRECISION kayan noktalı veri tipleridir.Bu nedenle matematiksel işlemlerde yuvarlama hataları oluşabilir.
- Finansal hesaplamalarda önerilmez.


<img width="530" height="436" alt="image" src="https://github.com/user-attachments/assets/fee8740f-1162-44e1-9341-fb8036160989" />

### Veri Tipi Dönüştürme (Casting)
PostgreSQL’de veri tipini dönüştürmek için `::` operatörü kullanılır.

```sql
SELECT (10.0::INTEGER);
```

Bu ifade 10.0 değerini tam sayıya dönüştürür.

📌 Özet
- Tam sayılar için → SMALLINT, INTEGER, BIGINT
- Ondalıklı ama yaklaşık değerler için → REAL(FLOAT4), DOUBLE PRECISION(FLOAT8)
- Kesin ondalıklı değerler (para, finans) için → NUMERIC, DECIMAL

<img width="553" height="725" alt="image" src="https://github.com/user-attachments/assets/290dd7a1-d68e-4f36-bc80-8d71112757c8" />


<img width="468" height="535" alt="image" src="https://github.com/user-attachments/assets/7aba89e0-8400-4472-a53d-009b91a301e6" />

- Sayisal ifadelerde **tam rakam** icin **integer** veri tipini kullaniriz.
- Sayisal ifadeler de  **ondalik rakam** icin **numeric** veri tipini kullaniriz

## REFERENCES

1. [PostgreSQL 13 Veri Tipleri](https://www.postgresql.org/docs/current/datatype.html)
