# 1) Repoyu Klonladıktan Sonra...!

<p>
  Repoyu local bilgisayarınıza klonladıktan sonra node modülleri indirmek için proje dizininde aşağıdaki satırları çalıştırın!
</p>

<code>
  yarn install
  rails assets:precompile
</code>

<br/>

# 2) Uygulama Nasıl Kullanılır?
<br/>

## 2-1) Verilerin "JsonPlaceholder" dan İndirilmesi

<br/>

<p>
  Uygulama ilk çalıştırıldığında verilerin indirilebilmesi için bir button gösterilecektir. Bu butuna tıkladığında "https://jsonplaceholder.typicode.com" sitesinden kullanıcılar, albümler ve fotoğraf url' leri
  indirilip veri tabanına kaydedilecektir. Bu işlem internet bağlantısı gerektirir ve internet hızına bağlı olarak <strong>30 saniye kadar sürebilir</strong>. Bu süreç tek seferliktir.
</p>

<br/>

![Screenshot 2024-06-17 224911](https://github.com/mfglr/MyAlbums/assets/79373693/2d61ae1e-3cee-45f3-8edb-81af24ec0773)

<br/>


<p>
  Butuna basıldıktan sonra verilerin indirilmeye başlandığına dair bir bildiri gösterilecektir.
</p>

<br/>

![Screenshot 2024-06-17 225754](https://github.com/mfglr/MyAlbums/assets/79373693/ba19e183-4637-4d55-9efd-64f6a75f185c)

<br/>

<p>
  Veriler başarılı bir şekilde indirildikten sonra kullanıcıların listelendiğini göreceksiniz.
</p>

![Screenshot 2024-06-17 225649](https://github.com/mfglr/MyAlbums/assets/79373693/74cfffa0-cbda-4714-901d-db60d5b9dca7)

<br/>

## 2-2) Kullanıcılar Sayfası
<br/>
  
<p>
  
</p>
  Kullanıcılar sayfasında, kullanıcılar listelenir; kullanıcı aranır ve kullanıcı oluşturulabilir.
<br/>
  
### 2-2-1) Kullanıcı Arama

<br/>

<p>
  Kullanıcıları aramak için kullanıclar sayfasında üst kısımda bulunan arama kutusu kullanılır. 
</p>

<br/>

![Screenshot 2024-06-17 230910](https://github.com/mfglr/MyAlbums/assets/79373693/2a55a681-1549-46f1-b021-3d5727b7805d)

<br/>

<p>
  Aramanın tekiklenmesi için bir butona basmaya gerek yoktur. Arama kutusunun içeriği değiştikçe arama tetiklenecektir. Aramalar büyük küçük harf duyarlı değildir.
</p>

<br/>

![Screenshot 2024-06-17 231133](https://github.com/mfglr/MyAlbums/assets/79373693/375d8b50-5410-404e-953c-898ff350eeb8)

<br/>

![Screenshot 2024-06-17 231402](https://github.com/mfglr/MyAlbums/assets/79373693/c30279a4-41f1-42f6-91c2-7bb9b1cb8402)

<br/>

<p>
  Arama sonucunda herhangi bir kullanıcı bulunamazsa "Kullanıcı Yok" metni ekranda gözükecektir.
</p>

<br/>

![Screenshot 2024-06-17 231850](https://github.com/mfglr/MyAlbums/assets/79373693/ba362e5c-48cc-42cd-a7b4-4206a00edff3)

<br/>

<p>
  Arama kutusundaki karakterleri silmek için klavye ya da arama kutusundaki "x" ikonu kullanılabilir. Arama kutunda bir karakter kalmazsa bu ikon tekrar karakter girilinceye kadar kaybolacaktır ve
  tüm kullanıcılar yeniden listelenecektir.
</p>

<br/>

![Screenshot 2024-06-17 232439](https://github.com/mfglr/MyAlbums/assets/79373693/9b9169c7-50c5-4d11-ba3d-3bf65f9ec100)

<br/>

<p>
  "x" ikonuna tıklandıktan sonra:
</p>

<br/>

![Screenshot 2024-06-17 232612](https://github.com/mfglr/MyAlbums/assets/79373693/9a59079b-c7c1-4710-a000-60d822e1106f)

<br/>

### 2-2-2) Kullanıcı Oluşturma

<br/>

<p>
  Kullanıcı oluşturmak için kullanıcılar sayfasında altta bulunan sabit siyah buton kullanılır. Bu butona tıklandığında bir form içeren modal açılacaktır.
</p>

<br/>

![Screenshot 2024-06-17 233028](https://github.com/mfglr/MyAlbums/assets/79373693/f11ddcf8-d9c5-4044-ba2b-093d7264898a)

<br/>

![Screenshot 2024-06-18 014753](https://github.com/mfglr/MyAlbums/assets/79373693/3e32abf3-b3c6-4319-8ec1-b79123c40310)

<br/>

<p>
  Bu formda isim, kullanıcı adı ve email alanlarının doldurulması zorunludur. Aynı zamanda email ile kullanıcı adı benzersiz olmalıdır. Bu şartlar sağlanmadığında kullanıcı oluşturulamayacak ve
  kullanıcının oluşturulamadığını belirten bir bildiri ekranda gözükecektir.
</p>

<br/>

![Screenshot 2024-06-18 015336](https://github.com/mfglr/MyAlbums/assets/79373693/5636da75-d9eb-47bc-8d0a-c0bc1824eab9)

<br/>

![Screenshot 2024-06-18 020118](https://github.com/mfglr/MyAlbums/assets/79373693/1e28e7a0-aa44-4a86-acf3-0d1fde269a2c)

<br/>

<p>
  Kullanıcı başarılı bir şekilde oluştuğunda kullanıcının sayfasına yönlendirilecek ve kullanıcının başarıyla oluştuğuna dair bir bildiri gösterilecektir.
</p>

<br/>

![Screenshot 2024-06-18 020431](https://github.com/mfglr/MyAlbums/assets/79373693/b32c5694-d745-4db3-b105-7b931b69351f)

<br/>

![Screenshot 2024-06-18 021300](https://github.com/mfglr/MyAlbums/assets/79373693/e93dca1f-10df-4b49-a2b8-c90d5f87a564)

<br/>

![Screenshot 2024-06-18 021347](https://github.com/mfglr/MyAlbums/assets/79373693/2b53ab89-99b7-471e-b5ba-f3932a8dea12)

<br/>

### 2-2-3) Kullanıcılar Sayfasından Bir Kullanıcının Sayfasına Gitmek 

<br/>

<p>
  Kullanıcılar sayfasından bir kullanıcının sayfasına uaşmak için kullanıcının özet bilgilerinin gösterildiği kartın sağındaki ikona tıklanmalıdır.
</p>

<br/>

![Screenshot 2024-06-18 120329](https://github.com/mfglr/MyAlbums/assets/79373693/29467234-93e5-4908-ba36-bb29edbeea6a)

<br/>

## 2-3) Kullanıcı Sayfası

<br/>

<p>
  Kullanıcı sayfasında kullanıcının detay bilgileri ve kullanıcıya ait albümlerin özetleri listelenir, kullanıcı bilgileri düzenlenebilir veya kullanıcı silinebilir. Albümlerin detayları görüntülenebilir.
</p>

<br/>

![Screenshot 2024-06-18 122734](https://github.com/mfglr/MyAlbums/assets/79373693/44fd6077-3ec4-4e0e-a40c-bff83188c156)

<br/>

### 2-3-1) Kullanıcı Fotoğrafını Düzenleme

<br/>

<p>
  Kullanıcı fotoğrafını düzenleyebilmek için kullanıcı bilgileri kısmında bulunan kullanıcı fotoğrafının üzerindeki kamera ikonuna tıklanmalıdır. Bu ikona tıklandıktan sonra bir modal açılacaktır.
</p>

<br/>

![Screenshot 2024-06-18 123218](https://github.com/mfglr/MyAlbums/assets/79373693/89ef41bf-1071-41c9-a9cf-83b9dd3ac824)

<br/>

![Screenshot 2024-06-18 123302](https://github.com/mfglr/MyAlbums/assets/79373693/c929a728-aa0f-4f8a-8b90-a592fc78de1b)

<br/>

