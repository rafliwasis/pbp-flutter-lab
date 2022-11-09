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
