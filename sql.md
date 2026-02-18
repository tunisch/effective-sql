# SQL (Structured Query Language) Nedir?

Sql , `declarative` bir programlama dilidir. **- Structered Query Language**
**Bir Programlama dili olarak SQL**

SQL üzerine konuşulurken ilk olarak şu soru akla gelir. SQL bir programlama dili midir? Evet, SQL ilişkisel veritabanı yönetim sistemleri ile ilişki kurmamızı sağlayan bir `declarative` **bildirimsel** bir programlama dilidir.

**Bildirimsel Yaklaşım**
Aşağıdaki örnek bir SQL sorgusu bulabilirsiniz.

```sql
SELECT title FROM book
WHERE page_number > 200;
```



**peki declarative programlama dili nedir?**

Yukarıdaki sorgumuzda, veritabanındaki book tablosundan sayfa sayısı 200 den daha fazla olan kitapları görmek istiyoruz. Burada biz işin sonuç kısmıyla ilgileniyoruz. SQL, DBMS ile nasıl çalışır, arka tarafta yapılan işlemin bizim açımızdan önemi yoktur. Bundan dolayı SQL declarative yani bildirimsel, beyan edici bir yaklaşıma sahiptir.


🧠 Declarative Programlama Nedir?
Declarative programlama, geliştiricinin nasıl yapılacağını değil, ne yapılacağını tanımladığı programlama yaklaşımıdır.
- Nasıl yapılacağı → Engine, runtime veya framework tarafından belirlenir.
- Ne yapılacağı → Geliştirici tarafından ifade edilir.
Bu yaklaşım, özellikle veri işleme, UI tanımlama ve kurallara dayalı sistemlerde büyük avantaj sağlar.


| Yaklaşım       | Geliştirici Ne Yapar?                     | Kontrol Akışı            | Avantajlar                         | Örnek Diller                 |
|----------------|--------------------------------------------|---------------------------|-------------------------------------|------------------------------|
| Declarative    | Ne yapılacağını söyler                     | Engine belirler           | Daha az kod, daha az hata           | SQL, HTML, CSS, GraphQL, Prolog |
| Imperative     | Nasıl yapılacağını adım adım tarif eder    | Döngü, koşul, state yönetimi | Tam kontrol, algoritmik esneklik | Java, Python, C#, Go         |



Imperative örnek:
“Listeyi dolaş, filtrele, eşleşenleri topla.”
Declarative örnek:
“Şu koşula uyan kayıtları getir.”


## Dördüncü Nesil Programlama Dili
SQL daha az kod yazarak ve daha çok belirli şablonlar kullanan bir programlama dili olarak dördüncü nesil bir programlama dilidir. Yapılması istenen işlemin her basamağının ayrıca kodlanmasına gerek duyulmaz.

---
## References

1. [W3SchoolsSQL](https://www.w3schools.com/sql/)
