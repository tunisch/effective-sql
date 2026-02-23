# LIKE and ILIKE
Aşağıdaki sorgumuzda actor tablomuzda bulunan tüm sütunlardaki verileri first_name sütununda ki değeri 'Penelope' olmak üzere getiriyoruz.

```sql
SELECT *
FROM actor
WHERE first_name = 'Penelope';
```
Ancak bizler bazı durumlarda bu şekilde tam eşleşme değil belirli şablonlara uyan koşulların sağlanmasını isteriz. Örneğin aşağıdaki sorgumuzda first_name sütunun 'Penelope' değerine eşit olmasını değil, ilk harfin 'P' olması koşulunu sağlar. Bunun için LIKE operatörünü kullanırız.

```sql
SELECT *
FROM actor
WHERE first_name LIKE 'P%';
```

Burada kullanılan `%` karakteri **sıfır, bir veya daha fazla karakteri** temsil eder ve **Wildcard** olarak isimlendirilir. Bir diğer wildcard karakteri `_` karakteridir ve **bir karakteri** temsil eder.

**NOTE**
% NEDEN 'M%' ŞEKLİNDE KULLANILIYOR?

*Çünkü:*
- 'M' → ilk harf
- '%' → ondan sonra sıfır, bir veya daha fazla karakter olabilir
Yani 'M%' şu demektir:
> “M ile başlasın, sonrası ne olursa olsun.”
**Örnek eşleşenler:**
- Mary ✔
- Mark ✔
- M ✔ (çünkü % sıfır karakteri de temsil eder)
- Michael ✔

## Wildcard karakteri `_`
Bir karakteri temsil eder.
**Ornegin:**
```sql
WHERE first_name LIKE 'M_';
```
Bu sadece 2 harfli isimleri getirir:
- Mo ✔
- Ma ✔
- Mi ✔
- Mia ❌ (3 harf)
- Mary ❌ (4 harf)
Yani _ → tek karakter
__ → iki karakter
___ → üç karakter

**Örnek 1:**
M ile başlasın, toplam 3 harf olsun:
```sql
WHERE first_name LIKE 'M__';
```
Bu 3 harfli isimleri getirir:
- Max ✔
- Mia ✔
- Mel ✔

**Örnek 2:**
İkinci harfi “a” olan isimler: ⚠️
```sql
WHERE first_name LIKE '_a%';
```

Eşleşenler:
- Mark ✔
- Sara ✔
- David ✔

## 🎯 KISA ÖZET

| Yazım | Anlam |
|------|--------|
| `'M%'` | M ile başlasın, sonrası fark etmez |
| `'M_'` | M + 1 harf |
| `'M__'` | M + 2 harf |
| `'%m%'` | içinde m geçen her şey |
| `ILIKE` | büyük/küçük harf fark etmez |

---

## LIKE Söz Dizimi

```sql
SELECT <sütun_adı>, <sütun_adı>, ...
FROM <tablo_adı>
WHERE <sütun_adı> LIKE <şablon>;
```
**ILIKE operatörü LIKE operatörünün case - insensitive versiyonudur.**
> LIKE → case‑sensitive (büyük/küçük harf duyarlı)
> ILIKE → case‑insensitive (büyük/küçük harf duyarsız)

## REVIEW 

✔️ LIKE kullanınca
Aradığın metnin birebir aynı harf büyüklüğünde olması gerekir.

**Örnek:**
```sql
SELECT * FROM users
WHERE name LIKE 'P%';
```
Bu sadece P ile başlayan kayıtları getirir:
- "Peter" ✔️
- "Paul" ✔️
- "patrick" ❌ (küçük p olduğu için gelmez)

✔️ ILIKE kullanınca
Harf büyüklüğü önemli değildir.
```sql
SELECT * FROM users
WHERE name ILIKE 'p%';
```
Bu hem büyük hem küçük harfle başlayanları getirir
- "Peter" ✔️
- "PAUL" ✔️
- "patrick" ✔️
- "peter" ✔️

Yani ILIKE → P, p, Pa, pa, hepsini eşit görür.


---

## REFERENCES
1.[W3Schools LIKE](https://www.w3schools.com/sql/sql_like.asp)
