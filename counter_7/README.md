# LAB 6 counter_7
Symphony Cellis Zaana Saraaya - 2106752060 - PBP E

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- Stateless widget adalah widget yang tidak akan berubah, sedangkan stateful widget adalah widget yang dapat berubah (dapat mengupdate tampilan).

Perbedaan :
- Proses pembuatan stateless widget : constructor -> build
- Proses pembuatan stateful widget : constructor -> internal state -> build

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Source : https://www.anbidev.com/flutter-widget/

- MaterialApp = membuat app yang menerapkan Material Design
- Scaffold = membuat landasan halaman
- AppBar = membuat judul halaman
- Text = membuat teks
- Center = Membuat semua widget ke tengah
- Column = Membuat fleksibel layout secara vertikal
- Container = Membuat elemen kotak
- Wrap = Merapikan widget secara horizontal dan vertikal

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() untuk membuat suatu update ke suatu state object. Variabel yang terbampak adalah _counter

## Jelaskan perbedaan antara const dengan final.
Source : https://belajarflutter.com/perbedaan-final-dan-const-pada-dart-dan-flutter/

Final diinisialisasikan pada saat pertama kali (diketahui saat run-time), sedangkan const nilainya bersifat konstan dan sudah diketahui saaat compile-time (sudah diberikan value langsung.

Contoh :

final waktu = new DateTime.now();

const umur = 21;

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Menjalankan `flutter create counter_7` di cmd
- Menambahkan fungsi void _descrementCounter di class _MyHomePageState
- Menambahkan fungsi text ganjil dan genap dengan memanfaatkan modulo dan if else
- Menambahkan teks angka _counter
- Membuat dua button menggunakan Wrap dan Countainer. Button minus hanya akan muncul apabila angka lebih dari 0 dan ketika dipencet akan berkurang, sedangkan button plus sebaliknya.


# LAB 7 Flutter form

##  Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
- Untuk push jika user back maka akan kembali ke halaman sebelumnya (home)
- Untuk pushReplacement jika user back maka akan menampilkan halaman sebelum saat ini (home) jika ada, jika tidak maka aplikasi ditutup

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- DropDownButton : membuat dropdown
- Card : menyajikan dalam bentuk card
- Container : menyimpan komponen
- Column : untuk memposisikan

## Sebutkan jenis-jenis event yang ada pada Flutter.
- onPressed()
- onSaved()
- onChanged()

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
- Navigator menyimpan stack of route
- Stack memiliki bentuk LIFO (Last In First Out)
- Push menambahkan screen ke atas stack
- Pop remove screen dari stack paling atas

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat file `drawer.dart`
- Melakukan routing ke halaman counter, tambah budget, dan data budget
- Membuat `form.dart` agar user bisa memasukkan input judul, nominal, dan jenis
- Membuat `objectBudget.dart` untuk membuat object budget
- Membuat `showDataBudget.dart`untuk menunjukan data yang sudah diinput user
