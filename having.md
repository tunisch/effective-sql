# HAVING

**HAVING** anahtar kelimesi sayesinde gruplandırılmış verilere koşullar ekleyebiliriz. Hemen aklımıza **WHERE** anahtar kelimesi geldi değil mi? Ancak WHERE anahtar kelimesi ile biz satır bazlı koşullar verebiliyoruz.

Şöyle bir senaryomuz olsun. Her bir rental_rate oranına karşılık gelen film sayısını bulalım. Bunu GROUP BY ile gerçekleştirebiliriz. Ancak bu kez 1 adım öteye gidip şöyle bir koşul ekleyelim toplam film sayısı 325 ten fazla olan rental_rate oranlarını görelim. Bu durumda GROUP BY ile elde ettiğimiz toplam film sayılarına koşul eklememiz gerekir.Bu kosul ekleme olayinida **WHERE ile degil** , **HAVING ile** yapariz.!!⚠️

## HAVING Soz dizimi (SYNTAX):
```sql
SELECT sütun1, sütun2, AGGREGATE_FONKSIYON(sütun)
FROM tablo
WHERE koşul          -- satır filtresi
GROUP BY sütun1, sütun2
HAVING aggregate_koşulu   -- grup filtresi
ORDER BY sütun;
```

> 🧠 Mantığı
- WHERE → satırları filtreler (GROUP BY’den önce çalışır)
- HAVING → grupları filtreler (GROUP BY’den sonra çalışır)
Bu ayrım SQL’in en önemli noktalarından biri.

## 🔥 Aggregate ile HAVING Kullanımi
```sql
HAVING SUM(amount) > 100
HAVING AVG(length) < 80
HAVING MIN(replacement_cost) >= 10
HAVING MAX(rental_rate) = 4.99
```

**HAVING** -> Sutun bazli filtre uygular
```sql
SELECT rental_rate, COUNT(*) FROM film
GROUP BY rental_rate
HAVING COUNT(*) > 325; /*Sutun bazli filtre uygular */ 
```
<img width="357" height="308" alt="Screenshot 2026-02-24 211955" src="https://github.com/user-attachments/assets/b1b49fe3-d87f-438d-a182-dc0dcfcb740a" />

> NOTE
**WHERE** ile de yapabilirdik oda boyle olurdur:

**WHERE** ->  satir bazli filtre uygular 
```sql
SELECT rental_rate, COUNT(*) FROM film
WHERE rental_rate != 2.99  /* satir bazli filtre uygular */
GROUP BY rental_rate;
```
<img width="231" height="220" alt="image" src="https://github.com/user-attachments/assets/c72bbe0e-9172-49bd-a267-d27b9e31999f" />

**Ayni sonucu aldik**

## EXAMPLE
Assgidaki query `Toplam ödeme tutarı 100’ün üzerinde olan müşteriler arasında, en yüksek toplam ödemeyi yapan müşteriyi bular.`

<img width="492" height="501" alt="Screenshot 2026-02-24 212727" src="https://github.com/user-attachments/assets/1338cda3-a502-4ee3-a724-0ca40290e1e4" />

---

## REFERENCES
1. [W3Schools SQL HAVING](https://www.w3schools.com/sql/sql_having.asp)
