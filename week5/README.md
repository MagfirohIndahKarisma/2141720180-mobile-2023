# JOBSHEET 5 : Flutter Fundamental - Bagian 1

### NIM : 2141720180

### NAMA : Magfiroh Indah Karisma

## Soal 1
Selesaikan Praktikum 1 sampai 4, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!

### Praktikum 1: Membuat Project Flutter Baru
#### Langkah 1:
Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.
#### Langkah 2:
Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.
#### Langkah 3:
Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.
#### Langkah 4:
Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.
![Screenshot hello_world](docs/P1.png)

### Praktikum 2: Membuat Repository GitHub dan Laporan Praktikum
Perhatian: Diasumsikan Anda telah mempunyai akun GitHub dan Anda telah memahami konsep dasar dalam bekerja menggunakan Git pada pertemuan pertama.

Praktikum ini dapat Anda lewati langsung ke langkah 11 jika sudah paham cara membuat laporan praktikum sesuai style yang Anda pilih.
#### Langkah 1:
Login ke akun GitHub Anda, lalu buat repository baru dengan nama "flutter-fundamental-part1"
#### Langkah 2:
Lalu klik tombol "Create repository" lalu akan tampil seperti gambar berikut.
#### Langkah 3:
Kembali ke VS code, project flutter hello_world, buka terminal pada menu Terminal > New Terminal. Lalu ketik perintah 'git init' untuk inisialisasi git pada project Anda.
#### Langkah 4:
Pilih menu Source Control di bagian kiri, lalu lakukan stages (+) pada file .gitignore untuk mengunggah file pertama ke repository GitHub.
#### Langkah 5:
Beri pesan commit "tambah gitignore" lalu klik Commit (✔)
#### Langkah 6:
Lakukan push dengan klik bagian menu titik tiga > Push
#### Langkah 7:
Di pojok kanan bawah akan tampil seperti gambar berikut. Klik "Add Remote"
#### Langkah 8:
Salin tautan repository Anda dari browser ke bagian ini, lalu klik Add remote. Setelah berhasil, tulis remote name dengan "origin"
#### Langkah 9:
Lakukan hal yang sama pada file README.md mulai dari Langkah 4. Setelah berhasil melakukan push, masukkan username GitHub Anda dan password berupa token yang telah dibuat (pengganti password konvensional ketika Anda login di browser GitHub). Reload halaman repository GitHub Anda.
#### Langkah 10:
Lakukan push juga untuk semua file lainnya dengan pilih Stage All Changes. Beri pesan commit "project hello_world". 
#### Langkah 11:
Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project hello_world dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.
![Screenshot hello_world](docs/01.png)
#### Langkah 12:
Silakan screenshot seperti pada Langkah 11, namun teks yang ditampilkan dalam aplikasi berupa nama lengkap Anda. Simpan file screenshot dengan nama 01.png pada folder images (buat folder baru jika belum ada) di project hello_world Anda. Lalu ubah isi README.md seperti berikut, sehingga tampil hasil screenshot pada file README.md. Kemudian push ke repository Anda.
![Screenshot hello_world](docs/02.png)

### Praktikum 3: Menerapkan Widget Dasar
#### Langkah 1: Text Widget
Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.
![Screenshot hello_world](docs/030.png)
Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.
![Screenshot hello_world](docs/031.png)
#### Langkah 2: Image Widget
Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.
![Screenshot hello_world](docs/034.png)
Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.
![Screenshot hello_world](docs/033.png)
Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.
![Screenshot hello_world](docs/032.png)

### Praktikum 4: Menerapkan Widget Material Design dan iOS Cupertino
#### Langkah 1: Cupertino Button dan Loading Bar
Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.
![Screenshot hello_world](docs/041.png)
![Screenshot hello_world](docs/0444.png)

#### Langkah 2: Floating Action Button (FAB)
Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.

Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.
![Screenshot hello_world](docs/042.png)
![Screenshot hello_world](docs/0441.png)

#### Langkah 3: Scaffold Widget
Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

Ubah isi kode main.dart seperti berikut.
![Screenshot hello_world](docs/043.png)

#### Langkah 4: Dialog Widget
Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog.

Ubah isi kode main.dart seperti berikut.
![Screenshot hello_world](docs/044.png)
![Screenshot hello_world](docs/045.png)

#### Langkah 5: Input dan Selection Widget
Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.

Contoh penggunaan TextField widget adalah sebagai berikut:
![Screenshot hello_world](docs/046.png)
![Screenshot hello_world](docs/047.png)
![Screenshot hello_world](docs/048.png)

#### Langkah 6: Date and Time Pickers
Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.
![Screenshot hello_world](docs/049.png)
![Screenshot hello_world](docs/0491.png)
![Screenshot hello_world](docs/0492.png)
![Screenshot hello_world](docs/0493.png)


## Soal 2
Pada praktikum 4 mulai dari Langkah 3 sampai 6, buatlah file widget tersendiri di folder basic_widgets, kemudian pada file main.dart cukup melakukan import widget sesuai masing-masing langkah tersebut!
#### Langkah 3: Scaffold Widget (Increment Counter)
![Screenshot hello_world](docs/IC1.png)
![Screenshot hello_world](docs/IC2.png)

#### Langkah 4: Dialog Widget (Show Alert)
![Screenshot hello_world](docs/A1.png)
![Screenshot hello_world](docs/A2.png)

#### Langkah 5: Input & Selection Widget (Text Field)
![Screenshot hello_world](docs/TF1.png)
![Screenshot hello_world](docs/TF2.png)

#### Langkah 6: Date Picker
![Screenshot hello_world](docs/DP1.png)
![Screenshot hello_world](docs/DP2.png)

## Soal 3
Selesaikan Codelabs: Your first Flutter app, lalu buatlah laporan praktikumnya dan push ke repository GitHub Anda!
### 1. Introduction
![Screenshot hello_world](docs/1.png)
### 2. Set up Flutter environment
![Screenshot hello_world](docs/2.png)
### 3. Create a project
![Screenshot hello_world](docs/3.png)
pubspec.yaml
![Screenshot hello_world](docs/31.png)
analysis_options.yaml
![Screenshot hello_world](docs/32.png)
main.dart
![Screenshot hello_world](docs/33.png)
### 4. Add a button
![Screenshot hello_world](docs/4.png)
Launch the app
![Screenshot hello_world](docs/41.png)
First hot reload
![Screenshot hello_world](docs/42.png)
Adding a button
![Screenshot hello_world](docs/43.png)
Adding onPressed
![Screenshot hello_world](docs/44.png)
![Screenshot hello_world](docs/45.png)
Make new random word pair every the 'Next' button pressed
![Screenshot hello_world](docs/46.png)
![Screenshot hello_world](docs/47.png)
### 5. Make the app prettier
![Screenshot hello_world](docs/5.png)
Extract a widget
![Screenshot hello_world](docs/51.png)
Add a card
![Screenshot hello_world](docs/52.png)
![Screenshot hello_world](docs/53.png)
![Screenshot hello_world](docs/54.png)
![Screenshot hello_world](docs/55.png)
Theme and style
![Screenshot hello_world](docs/56.png)
![Screenshot hello_world](docs/57.png)
![Screenshot hello_world](docs/58.png)
TextTheme
![Screenshot hello_world](docs/59.png)
![Screenshot hello_world](docs/591.png)
Improve accessibility
![Screenshot hello_world](docs/592.png)
![Screenshot hello_world](docs/593.png)
Center the UI
![Screenshot hello_world](docs/594.png)
![Screenshot hello_world](docs/595.png)
![Screenshot hello_world](docs/596.png)
![Screenshot hello_world](docs/597.png)

### 6. Add functionality
![Screenshot hello_world](docs/6.png)
Add the business logic
![Screenshot hello_world](docs/61.png)
![Screenshot hello_world](docs/62.png)
Add the button
![Screenshot hello_world](docs/63.png)
![Screenshot hello_world](docs/64.png)
![Screenshot hello_world](docs/65.png)
![Screenshot hello_world](docs/66.png)
![Screenshot hello_world](docs/67.png)

### 7. Add navigation rail
![Screenshot hello_world](docs/7.png)
![Screenshot hello_world](docs/71.png)
![Screenshot hello_world](docs/72.png)
Stateless versus stateful widgets
![Screenshot hello_world](docs/73.png)
setState
![Screenshot hello_world](docs/74.png)
![Screenshot hello_world](docs/75.png)
![Screenshot hello_world](docs/76.png)
Use selectedIndex
![Screenshot hello_world](docs/77.png)
![Screenshot hello_world](docs/78.png)
![Screenshot hello_world](docs/79.png)
Responsiveness
![Screenshot hello_world](docs/791.png)
![Screenshot hello_world](docs/792.png)
![Screenshot hello_world](docs/793.png)
### 8. Add a new page
![Screenshot hello_world](docs/8.png)
![Screenshot hello_world](docs/794.png)
![Screenshot hello_world](docs/795.png)
![Screenshot hello_world](docs/796.png)
![Screenshot hello_world](docs/797.png)
![Screenshot hello_world](docs/798.png)
### 9. Next steps
![Screenshot hello_world](docs/9.png)
## Soal 4
README.md berisi: capture hasil akhir tiap praktikum (side-by-side, bisa juga berupa file GIF agar terlihat proses perubahan ketika ada aksi dari pengguna) di browser dan perangkat fisik (device) dengan menampilkan NIM dan Nama Anda sebagai ciri pekerjaan Anda. Jika mode developer di perangkat HP Anda belum aktif, silakan cari di internet cara mengaktifkannya!

#### Floating Action Button (FAB)
![Screen record](docs/aa.gif)

#### Date Picker
![Screen record](docs/datepicker.gif)

#### Namer App
![Screen record](docs/namer.gif)

