# 1) Repoyu Klonladıktan Sonra...!

<p>
  Repoyu local bilgisayarınıza klonladıktan sonra node modüllerini indirmek ve veritabanını oluşturmak için proje dizininde aşağıdaki satırları çalıştırın!
</p>

<code>
  yarn install
  rails assets:precompile
  rails db:create
  rails db:migrate
</code>

<br/>

# 2) Uygulama Nasıl Kullanılır?
<br/>

## 2-1) Verilerin "JsonPlaceholder" dan İndirilmesi

<br/>

<p>
  Uygulama ilk çalıştırıldığında verilerin indirilebilmesi için bir button gösterilecektir. Bu butuna tıkladığında "https://jsonplaceholder.typicode.com" sitesinden kullanıcılar, albümler ve fotoğraf url' leri
  indirilip veri tabanına kaydedilecektir. Bu işlem internet bağlantısı gerektirir ve internet hızına bağlı olarak <strong>30 saniye kadar sürebilir</strong>.Bu istek web socket ile yapıldığından uygulama bloklanmaz. İşlem başladıktan sonra dilenirse uygulama kapatılabilir. İndirme işlemi tamamlandığında veriler otamatik olarak sayfada yüklenecektir.Bu süreç tek seferliktir.
</p>

<p>
  Dilenirse bu veriler indirilmeden de uygulama kullanılabilir. Ancak albüm ekleme özelliği olmadığı için ancak kullanıcı ekleme ve düzenleme özelliği olacaktır.
</p>

<br/>

![Ekran görüntüsü 2024-06-19 004923](https://github.com/mfglr/MyAlbums/assets/79373693/1e3cf0ee-165f-404d-a7bf-b9238b0d7de0)

<br/>


<p>
  Butuna basıldıktan sonra verilerin indirilmeye başlandığına dair bir bildiri gösterilecektir.
</p>

<br/>

![Ekran görüntüsü 2024-06-19 010405](https://github.com/mfglr/MyAlbums/assets/79373693/adde8872-6d23-47bc-821c-7f4a4edafe2d)

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

![Ekran görüntüsü 2024-06-18 124209](https://github.com/mfglr/MyAlbums/assets/79373693/c4484da3-b536-463f-b903-26bc11dd0829)

<br/>

<p>
  Fotoğrafı güncellemek için bir resim seçilmeli aksi halde "Fotağrafı Güncelle" butonu aktif hale gelmeyecektir. Fotoğraf başarılı bir şekilde güncellendikten sonra ekranda
  bildirim gösterilecektir.
</p>

<br/>

![Ekran görüntüsü 2024-06-18 124722](https://github.com/mfglr/MyAlbums/assets/79373693/ad0b15a5-e864-41a5-91de-e59bd1d9757b)

<br/>

![Ekran görüntüsü 2024-06-18 124837](https://github.com/mfglr/MyAlbums/assets/79373693/c875826c-45ec-43ee-9ea1-c816b0e13018)

<br/>

<p>
  Fotoğrafı silmek için aynı modaldaki sil butonu kullanılmalıdır. Bu butona tıkladıktan sonra kullanıcının onayını almak için farklı bir modal açılacaktır.
  Eğer kullanıcı silme işlemini onaylarsa fotoğraf silinecek ve kullanıcıya varsayılan profil fotoğrafı atanacaktır. İptal ederse fotoğraf silinmeyecektir.
</p>

<br/>

![Ekran görüntüsü 2024-06-18 125413](https://github.com/mfglr/MyAlbums/assets/79373693/f31afc0b-ddc8-49a7-a115-bd99af83bb15)

<br/>


![Ekran görüntüsü 2024-06-18 125501](https://github.com/mfglr/MyAlbums/assets/79373693/cf657539-c3a7-45aa-bf51-50ec58dbfc69)

<br/>

![Ekran görüntüsü 2024-06-18 125557](https://github.com/mfglr/MyAlbums/assets/79373693/652eb069-03d2-4da2-ad12-5a0058f70aed)

<br/>

### 2-3-2) Kullanıcı Bilgilerini Düzenleme

<br/>

<p>
  Kullanıcı bilgilerini düzenlemek için kullanıcı kartında yer alan düzenle butonuna tıklanmalıdır. Bu butona tıklanınca kullanıcı bilgilerinin düzenlenebileceği bir modal açılacaktır.
</p>

<br/>

![Ekran görüntüsü 2024-06-18 133007](https://github.com/mfglr/MyAlbums/assets/79373693/9c9ef8ed-6e84-4fab-ac7d-6f13ba516055)

<br/>

![Ekran görüntüsü 2024-06-18 133315](https://github.com/mfglr/MyAlbums/assets/79373693/967f8e9e-5c55-4569-ba9f-a07754146921)

<br/>

<p>
  Kullanıcı oluştumak için gerekli koşullar kullanıcıyı güncellemek için de gereklidir. Kullanıcı adı ve email alanlarının doldurulması zorunludur. Aynı zamanda email ile kullanıcı adı benzersiz olmalıdır.
  Bu şartlar sağlanmazsa kullanıcı güncellenemeyecektir. Eğer kullanıcı başarılı bir şekilde güncellenirse kullanıcının başarılı bir şekilde güncellendiğine dair bir bildirim oluşacaktır.
</p>

<br/>

![Ekran görüntüsü 2024-06-18 133723](https://github.com/mfglr/MyAlbums/assets/79373693/752c39b9-e31b-465a-9575-a9f17aa6895f)

<br/>

![Ekran görüntüsü 2024-06-18 133935](https://github.com/mfglr/MyAlbums/assets/79373693/26a03a36-b185-49a3-b11d-925e8556421f)

<br/>

### 2-3-3) Kullanıcıyı Silmek

<br/>

<p>
  Kullanıcı silmek için kullanıcı kartındaki sil butonuna tıklanmalıdır. Bu butona tıklandığında onay alınması için bir modal açılacaktır. Eğer silme işlemi onaylanırsa kullanıcı silinecek ve
  kullanıcılar sayfası görüntülenecektir.
</p>

<br/>

![Ekran görüntüsü 2024-06-18 134450](https://github.com/mfglr/MyAlbums/assets/79373693/f5e0ad41-8040-45eb-9fbe-168ae818382c)

<br/>

![Ekran görüntüsü 2024-06-18 134751](https://github.com/mfglr/MyAlbums/assets/79373693/c62a6e19-eca5-49ff-be19-416cbe3e2d4e)

<br/>

![Ekran görüntüsü 2024-06-18 134855](https://github.com/mfglr/MyAlbums/assets/79373693/e42fe34e-ecd4-4b01-9f6e-48333753ce60)

<br/>

### 2-3-4) Kullanıcı Bilgilerini Görüntülemek

<br/>

<p>
  Kullanıcı bilgilerini görüntülemek için kullanıcı kartındaki slaytbar kullanılır. Bu bar otomatik değişir ama barın altındaki butonlar kullanılarakta istenilen slide a ulaşılabilir.
</p>

<br/>

![Ekran görüntüsü 2024-06-18 135712](https://github.com/mfglr/MyAlbums/assets/79373693/378790e8-7f6e-419f-8054-c5d551b67cbd)

<br/>

![Ekran görüntüsü 2024-06-18 135810](https://github.com/mfglr/MyAlbums/assets/79373693/4ce836f6-dbaf-41b9-84e1-3c4262b2580f)

<br/>

![Ekran görüntüsü 2024-06-18 135853](https://github.com/mfglr/MyAlbums/assets/79373693/c9e55edf-b0b3-4989-a9bc-e9b11a07ce4b)

<br/>

### 2-3-5) Albüm Detaylarını Görüntülemek

<br/>

<p>
  Albüm detaylarını görüntüleyebilmek için albüm kartındaki göz ikonuna tıklanmalıdır. Bu ikona tıklandıktan sonra albümün başlığını, fotoğraflarını ve fotoğraf başlıklarını içeren bir modal açılacaktır.
  Diğer fotoğrafları görüntülemek için fotoğrafların sağında ve solunda bulunan oklar kullanılır.
</p>

<br/>

![Ekran görüntüsü 2024-06-18 141041](https://github.com/mfglr/MyAlbums/assets/79373693/2bc54267-07bb-4f95-aae8-71bcb1f5af71)

<br/>

![Ekran görüntüsü 2024-06-18 141153](https://github.com/mfglr/MyAlbums/assets/79373693/748e8454-f2d6-4ff9-bab2-007c7e3bf990)

<br/>

# 3) Uygulamanın Farklı Çözünürlüklerdeki Ekran Görüntüleri

<br/>

![Ekran görüntüsü 2024-06-18 143459](https://github.com/mfglr/MyAlbums/assets/79373693/a719ad06-7d5f-4cff-bbcd-0b997a1da22b)

<br/>

![Ekran görüntüsü 2024-06-18 143523](https://github.com/mfglr/MyAlbums/assets/79373693/5c413473-a763-40dd-ad07-51558f304293)

<br/>

![Ekran görüntüsü 2024-06-18 143541](https://github.com/mfglr/MyAlbums/assets/79373693/f0a8cd14-0ec4-4b9f-9999-a006ff241c13)

<br/>

![Ekran görüntüsü 2024-06-18 143558](https://github.com/mfglr/MyAlbums/assets/79373693/76cdd138-608f-4f2b-801c-8ce6225db53b)

<br/>


![Ekran görüntüsü 2024-06-18 143617](https://github.com/mfglr/MyAlbums/assets/79373693/c1003bc3-8084-4b7d-9de6-6b2b69af8954)

<br/>

![Ekran görüntüsü 2024-06-18 143638](https://github.com/mfglr/MyAlbums/assets/79373693/dcdce358-d2c6-4ff8-b233-aa842bd4f10f)

<br/>


![Ekran görüntüsü 2024-06-18 143654](https://github.com/mfglr/MyAlbums/assets/79373693/a6121569-5ceb-4693-abef-be1b7099bfe7)

<br/>


![Ekran görüntüsü 2024-06-18 143707](https://github.com/mfglr/MyAlbums/assets/79373693/4a7e5a3d-e68c-473e-883e-ccf7c9bdd105)
