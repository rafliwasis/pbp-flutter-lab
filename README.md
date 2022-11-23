# TUGAS 7 - Rafli Wasis Anggito / 2106751442


## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
-> _Stateless widget_ adalah _widget_ yang memiliki sifat statis atau tidak dapat berubah selama aplikasi sedang berjalan. Maksud yang tidak dapat berubah pada widget ini, seperti dalam variabel, ikon, tombol, maupun pada saat pengambilan data.

-> _Stateful widget_ adalah _widget_ yang memiliki sifat dinamis atau dapat berubah. _Widget_ ini dapat merubah tampilan dari suatu aplikasi, variabel, warna, ikon, tombol, dan lain lain. Widget ini akan melakukan perubahan sesuai dengan yang dibutuhkan oleh _developer_ saat menjalankan suatu aplikasi. Salah satu _method_ pada _widget_ ini ialah setState().

-> Perbedaan _stateless widget_ dan _stateful widget_ terletak pada sifatnya, ada yang bersifat statis dan juga ada yang bersifat dinamis. Dengan demikian, penggunaan kedua _widget_ tersebut juga harus sesuai dengan aplikasi yang mungkin membutuhkan perubahan atau tidak membutuhkan perubahan. 

## Sebutkan widget apa saja yang kamu pakai diproyek kali ini dan jelaskan fungsinya
-> TextStyle: berfungsi untuk memberikan styling pada text

-> Text: untuk menampilkan text pada aplikasi yang dibuat

-> Column: berfungsi untuk mengatur posisi letak widget

-> MaterialApp: merupakan parent yang akan menerapkan style material design pada sesuatu yang diapitnya

-> Scaffold: untuk mengatur struktur visual layout yang diimplementasikan melalui material design

-> Center: untuk meletakkan widget ke bagian tengah

-> FloatingActionButton: untuk membuat suatu tombol

-> Padding : membuat layout pada tampilan aplikasi untuk masing-masing widget

## Apa fungsi dari setState() ? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() berfungsi untuk memberitahu suatu framework bahwa terdapat perubahan object pada State yang kemudian akan melakukan build ulang pada widget tersebut. Variabel yang terdapat pada setState() ialah variabel yang memiliki sifat dapat berubah atau dinamis dan juga variabel yang terdeklarasi secara global pada sebuah class.

## Jelaskan perbedaan antara const dengan final
Perbedaan antara const dengan final terletak pada saat pemberian nilai pada suatu variabel. const akan mengharuskan suatu variabel diinisiasi pada saat kompilasi, sehingga nilainya bersifat konstan dan secara langsung sudah memiliki nilai ketika dikompilasi. Sebaliknya, final tidak mengharuskan suatu variabel memiliki nilai secara langsung ketika dikompilasi. Jadi pada final, deklarasi variabel yang nilainya sudah ataupun belum diketahui pada saat waktu kompilasi berjalan.

## Jelaskan cara kamu mengimplementasikan checklist diatas
1) Hal yang pertama saya lakukan dengan adalah dengan membuat aplikasi counter_7 dengan menggunakan perintah flutter create counter_7
2) Membuat variabel counter pada class _MyHomePageState untuk menginisiasi angka 0
3) Lalu juga menambahkan variabel statusNum dan diset awalnya berupa GENAP
4) Selanjutnya, kita membuat method _decrementCounter(), dalam method ini akan melakukan pengurangan counter. Apabila counter yang dikurangi menghasilkan hasil yang sama dengan -1, maka counter tersebut akan diset menjadi 0. Pada proses ini dilakukan dalam fungsi setState()
5) Kemudian, kita membuat method _checkNum() yang akan melakukan pengecekan pada angka. Method ini akan melihat apakah angka tersebut berupa ganjil atau genap, dilihat melalui counter yang berubah-ubah nilainya. Ketika counter tersebut menunjukkan angka ganjil, maka statusNum tersebut di set menjadi ganjil, begitupun sebaliknya
6) Selanjutnya kita juga membuat method showText() yang mana berfungsi untuk menampilkan teks dan juga warna teks
7) Menambahkan widget FloatingActionButton lalu memasukkan fungsi atau method yang sudah kita buat sebelumnya pada onPress. Jadi ketika diklik maka akan menjalankan method tersebut.


# TUGAS 8 - Rafli Wasis Anggito / 2106751442


## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
- Navigator.pushReplacement : Suatu navigator routing yang berguna untuk menghapus page paling atas, lalu navigator ini akan menambahkan page untuk routing nantinya sehingga kaan mengganti page pada urutan top of stack menjadi page yang baru di route (intinya page yang baru akan menjadi top of stack)
- Navigator.push : navigator routing akan menambahkan page pada bagian top of stack

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
-> TextStyle: berfungsi untuk memberikan styling pada text

-> Text: untuk menampilkan text pada aplikasi yang dibuat

-> Column: berfungsi untuk mengatur posisi letak widget

-> MaterialApp: merupakan parent yang akan menerapkan style material design pada sesuatu yang diapitnya

-> Center: untuk meletakkan widget ke bagian tengah

-> Card : berfungsi untuk menampilkan card

-> Drawer : berfungsi untuk memberikan navbar pada aplikasi

-> DropdownButton: berfungsi sebagai sebuah dropdown, TextFormField : berfungsi sebagai form dari text

-> SizedBox : berfungsi untuk membuat box sehingga juga digunakan untuk menambah jarak

-> Container : berfungsi sebagai pembungkus widget lainnya

-> ListView.builder : berfungsi untuk menampilkan list of children yang dapat di scroll

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed
- onChanged
- onSaved
- onClick
- onTap
- onHover

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator pada aplikasi Flutter akan melakukan penggatian halaman dengan menggunakan prinsip stack. Page tersebut akan dimuat karena dipush pada top of stack, sedangkan apabila ingin berpindah ke page sebelumnya, navigator akan melakukan pop pada stack. Dengan demikian, page yang dilihat sekarang akan dihapus dari stack dan tampilan user akan berganti ke halaman sebelumnya

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Hal pertama yang saya lakukan adalah dengan membuat file drawer yang berisi route sehingga menjadi navbar pada seluruh page.
2. Membuat file myBudget pada folder Model lalu memiliki atribut judul, budget, dan jenis budget. Fungsi class ini adalah sebagai penampung data budget pengguna
3. Lalu membuat class databudget.dart untuk menampilkan data dari database, lalu membuat class form.dart yang menjadi form untuk menambahkan budget user
4. Lalu kita buat sesuai dengan spesifikasi dari soal


# TUGAS 9 - Rafli Wasis Anggito / 2106751442


## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pada pengambilan data JSON, kita dapat melakukan pengambilan data dalam bentuk http respone yang melalui bentuk raw data sehingga tidak perlu membuat model terlebih dahulu. Namun, demi kemudahan dalam pengaksesan data, kita disarankan untuk membuat model terlebih dahulu untuk menampung data JSON sehingga bisa mempermudah developer untuk melakukan operasi data.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
-> TextStyle: berfungsi untuk memberikan styling pada text

-> Text: untuk menampilkan text pada aplikasi yang dibuat

-> Column: berfungsi untuk mengatur posisi letak widget

-> MaterialApp: merupakan parent yang akan menerapkan style material design pada sesuatu yang diapitnya

-> Center: untuk meletakkan widget ke bagian tengah

-> Card : berfungsi untuk menampilkan card

-> Drawer : berfungsi untuk memberikan navbar pada aplikasi

-> ListView.builder : berfungsi untuk menampilkan list of children yang dapat di scroll

-> SizedBox : berfungsi untuk membuat box sehingga juga digunakan untuk menambah jarak

-> Container : berfungsi sebagai pembungkus widget lainnya

-> TextSpan : text ini memiliki teks dan juga bisa memiliki turunan anak teks yang dapat diatur sendiri

-> FloatingActionButton: untuk membuat suatu tombol

-> Padding : membuat layout pada tampilan aplikasi untuk masing-masing widget

-> Scaffold: untuk mengatur struktur visual layout yang diimplementasikan melalui material design

-> FutureBuilder : berfungsi untuk fetching data

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
1. Membuat folder model beserta class untuk menginisiasikan data dari JSON
2. Membuat method dengan http yang direfactor menjadi file baru
3. Response pada http tersebut akan diubah menjadi menjadi object Dart
4. Data dapat memanfaatkan FutureWidget untuk mendisplay data tersebut, widget ini digunakan karena menggunakan future yang memberikan delay pada pengambilan data
5. Melakukan loop pada data yang terdapat pada database untuk menampilkan data

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Langkah pertama yang saya lakukan adalah dengan membuat class mywatchlist.dart yang menjadi model untuk menampung data json
2. Lalu kita tambahkan page route drawer agar dapat dilakukan route ke datawatchlist
3. Membuat method dengan http yang direfactor menjadi file baru
4. Selanjutnya, kita membuat page yaitu pada class datawatchlist untuk menshow atau menampilkan list movie serta menambahkan page detail untuk menampilkan detail dari movie yang terdapat dalam databases
5. Lalu kita atur sesuai dengan spesifikasi soal. 
