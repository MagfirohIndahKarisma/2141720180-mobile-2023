# JOBSHEET 11 : DASAR STATE MANAGEMENT

### NIM : 2141720180

### NAMA : Magfiroh Indah Karisma

## TUGAS PRAKTIKUM 1: DASAR STATE DENGAN MODEL VIEW
### SOAL 1
Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md!
## Praktikum 1: Dasar State dengan Model-View
### Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama master_plan di folder src week-11 repository GitHub Anda. Lalu buatlah susunan folder dalam project seperti gambar berikut ini.

![11-1](docs/1.png)

### Langkah 2: Membuat model task.dart
Praktik terbaik untuk memulai adalah pada lapisan data (data layer). Ini akan memberi Anda gambaran yang jelas tentang aplikasi Anda, tanpa masuk ke detail antarmuka pengguna Anda. Di folder model, buat file bernama task.dart dan buat class Task. Class ini memiliki atribut description dengan tipe data String dan complete dengan tipe data Boolean, serta ada konstruktor. Kelas ini akan menyimpan data tugas untuk aplikasi kita. Tambahkan kode berikut:
![11-2](docs/2.png)


### Langkah 3: Buat file plan.dart
Kita juga perlu sebuah List untuk menyimpan daftar rencana dalam aplikasi to-do ini. Buat file plan.dart di dalam folder models dan isi kode seperti berikut.
![11-3](docs/3.png)

### Langkah 4: Buat file data_layer.dart
Kita dapat membungkus beberapa data layer ke dalam sebuah file yang nanti akan mengekspor kedua model tersebut. Dengan begitu, proses impor akan lebih ringkas seiring berkembangnya aplikasi. Buat file bernama data_layer.dart di folder models. Kodenya hanya berisi export seperti berikut.
![11-4](docs/4.png)

### Langkah 5: Pindah ke file main.dart
Ubah isi kode main.dart sebagai berikut.
![11-5](docs/5.png)

### Langkah 6: buat plan_screen.dart
Pada folder views, buatlah sebuah file plan_screen.dart dan gunakan templat StatefulWidget untuk membuat class PlanScreen. Isi kodenya adalah sebagai berikut. Gantilah teks ‘Namaku' dengan nama panggilan Anda pada title AppBar.
![11-6](docs/6.png)

### Langkah 7: buat method _buildAddTaskButton()
Anda akan melihat beberapa error di langkah 6, karena method yang belum dibuat. Ayo kita buat mulai dari yang paling mudah yaitu tombol Tambah Rencana. Tambah kode berikut di bawah method build di dalam class _PlanScreenState.
![11-7](docs/7.png)

### Langkah 8: buat widget _buildList()
Kita akan buat widget berupa List yang dapat dilakukan scroll, yaitu ListView.builder. Buat widget ListView seperti kode berikut ini.
![11-8](docs/8.png)

### Langkah 9: buat widget _buildTaskTile
Dari langkah 8, kita butuh ListTile untuk menampilkan setiap nilai dari plan.tasks. Kita buat dinamis untuk setiap index data, sehingga membuat view menjadi lebih mudah. Tambahkan kode berikut ini.
![11-9](docs/9.png)

Run atau tekan F5 untuk melihat hasil aplikasi yang Anda telah buat. Capture hasilnya untuk soal praktikum nomor 4.
|      Screenshot     |    Screen record    |
|---------------------|---------------------|
| ![11-01](docs/01.png) | ![11-01](docs/1.gif) |
(Using emulator)


### Langkah 10: Tambah Scroll Controller
Anda dapat menambah tugas sebanyak-banyaknya, menandainya jika sudah beres, dan melakukan scroll jika sudah semakin banyak isinya. Namun, ada salah satu fitur tertentu di iOS perlu kita tambahkan. Ketika keyboard tampil, Anda akan kesulitan untuk mengisi yang paling bawah. Untuk mengatasi itu, Anda dapat menggunakan ScrollController untuk menghapus focus dari semua TextField selama event scroll dilakukan. Pada file plan_screen.dart, tambahkan variabel scroll controller di class State tepat setelah variabel plan.
![11-10](docs/10.png)

### Langkah 11: Tambah Scroll Listener
Tambahkan method initState() setelah deklarasi variabel scrollController seperti kode berikut.

### Langkah 12: Tambah controller dan keyboard behavior
Tambahkan controller dan keyboard behavior pada ListView di method _buildList seperti kode berikut ini.
![11-12](docs/12.png)

### Langkah 13: Terakhir, tambah method dispose()
Terakhir, tambahkan method dispose() berguna ketika widget sudah tidak digunakan lagi.
![11-13](docs/13.png)

### Langkah 14: Hasil
Lakukan Hot restart (bukan hot reload) pada aplikasi Flutter Anda. Anda akan melihat tampilan akhir seperti gambar berikut. Jika masih terdapat error, silakan diperbaiki hingga bisa running.
|      Screenshot     |    Screen record    |
|---------------------|---------------------|
| ![11-02](docs/02.jpg) | ![11-02](docs/02.gif) |
(Using my phone)

### SOAL 2
Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
#### Langkah ini bertujuan untuk memisahkan definisi kelas Plan dan Task ke dalam file terpisah dalam folder models dan kemudian mengekspor keduanya dari file data_layer.dart. Ini merupakan praktik yang baik dalam organisasi proyek karena memungkinkan untuk menyimpan kelas-kelas yang berkaitan dalam satu direktori dan mengelompokkannya berdasarkan fungsionalitas atau jenisnya.

### SOAL 3
Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
#### Variabel plan yang dideklarasikan sebagai konstanta pada langkah tersebut digunakan untuk menyimpan informasi rencana atau tugas yang akan ditampilkan di layar. Penggunaan const pada inisialisasi Plan() mengindikasikan bahwa objek Plan yang dibuat merupakan konstan, artinya nilainya tidak dapat diubah setelah diberi nilai awal.
#### Dalam kasus ini, variabel plan mungkin dideklarasikan sebagai konstan karena pada tahap awal pembuatan layar PlanScreen, kita ingin menampilkan rencana atau tugas default yang tidak akan berubah pada saat aplikasi dijalankan. Kemudian, melalui interaksi pengguna, seperti menambahkan tugas baru, akan ada perubahan pada data plan yang di-handle melalui perubahan State.

### SOAL 4
Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

### SOAL 5 
Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
#### Metode initState() dan dispose() adalah bagian kunci dari siklus hidup (lifecycle) Stateful Widget di Flutter. Ketika sebuah Stateful Widget dibuat, metode initState() dipanggil sekali untuk melakukan inisialisasi, seperti menetapkan data awal atau mengatur sumber daya yang diperlukan. Dalam contoh yang diberikan, initState() digunakan untuk menambahkan listener pada scrollController agar saat pengguna menggulir layar, fokus dari inputan teks dihapus.

#### Sementara itu, metode dispose() dipanggil saat Stateful Widget dihapus dari pohon widget. Fungsinya adalah membersihkan atau melepas sumber daya yang telah digunakan oleh widget, seperti menghentikan listener atau menghapus controller. Dalam langkah 13, dispose() digunakan untuk menghentikan listener yang sebelumnya ditambahkan pada scrollController, mencegah potensi memory leaks atau masalah performa saat widget tidak lagi digunakan. Dengan mengimplementasikan keduanya, kita dapat memastikan penggunaan sumber daya yang efisien dan pengelolaan siklus hidup yang tepat pada aplikasi Flutter.

### SOAL 6
Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke spreadsheet yang telah disediakan!


## TUGAS PRAKTIKUM 2: InheritedWidget
### SOAL 1
Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md!

## Praktikum 2: Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier
### Langkah 1: Buat file plan_provider.dart
Buat folder baru provider di dalam folder lib, lalu buat file baru dengan nama plan_provider.dart berisi kode seperti berikut.
![11-13](docs/2-1.png)

### Langkah 2: Edit main.dart
Gantilah pada bagian atribut home dengan PlanProvider seperti berikut. Jangan lupa sesuaikan bagian impor jika dibutuhkan.
![11-13](docs/2-2.png)

### Langkah 3: Tambah method pada model plan.dart
Tambahkan dua method di dalam model class Plan seperti kode berikut.
![11-13](docs/2-3.png)

### Langkah 4: Pindah ke PlanScreen
Edit PlanScreen agar menggunakan data dari PlanProvider. Hapus deklarasi variabel plan (ini akan membuat error). Kita akan perbaiki pada langkah 5 berikut ini.

### Langkah 5: Edit method _buildAddTaskButton
Tambahkan BuildContext sebagai parameter dan gunakan PlanProvider sebagai sumber datanya. Edit bagian kode seperti berikut.
![11-13](docs/2-4.png)

### Langkah 6: Edit method _buildTaskTile
Tambahkan parameter BuildContext, gunakan PlanProvider sebagai sumber data. Ganti TextField menjadi TextFormField untuk membuat inisial data provider menjadi lebih mudah.
![11-13](docs/2-5.png)

### Langkah 7: Edit _buildList
Sesuaikan parameter pada bagian _buildTaskTile seperti kode berikut.
![11-13](docs/2-6.png)

### Langkah 8: Tetap di class PlanScreen
Edit method build sehingga bisa tampil progress pada bagian bawah (footer). Caranya, bungkus (wrap) _buildList dengan widget Expanded dan masukkan ke dalam widget Column seperti kode pada Langkah 9.

### Langkah 9: Tambah widget SafeArea
Terakhir, tambahkan widget SafeArea dengan berisi completenessMessage pada akhir widget Column. Perhatikan kode berikut ini.
![11-13](docs/2-9.png)

Akhirnya, run atau tekan F5 jika aplikasi belum running. Tidak akan terlihat perubahan pada UI, namun dengan melakukan langkah-langkah di atas, Anda telah menerapkan cara memisahkan dengan baik antara view dan model. Ini merupakan hal terpenting dalam mengelola state di aplikasi Anda.
|      Screenshot     |    Screen record    |
|---------------------|---------------------|
| ![11-02](docs/03.jpg) | ![11-02](docs/03.gif) |

### SOAL 2
Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
#### Pada langkah 1, kita menggunakan InheritedNotifier, yang merupakan turunan dari InheritedWidget yang juga membungkus ValueNotifier<<Plan>Plan>. InheritedNotifier menggabungkan kemampuan warisan dari InheritedWidget dengan manfaat dari ValueNotifier.

#### Menggunakan InheritedNotifier memungkinkan kita untuk menyebarkan notifikasi ke widget-widget yang menggunakan .of(context) saat ada perubahan pada ValueNotifier<<Plan>Plan>. Jadi, ketika ada perubahan pada ValueNotifier<<Plan>Plan>, widget yang menggunakan PlanProvider.of(context) akan diperbarui secara otomatis. Ini mempermudah manajemen state pada aplikasi Flutter.

### SOAL 3
Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
#### Dua method yang ditambahkan pada langkah 3 memungkinkan untuk menghitung jumlah tugas yang telah selesai dan juga untuk memberikan pesan tentang kelengkapan tugas dengan lebih mudah dan singkat. Dengan menggunakan completedCount, kita dapat langsung mendapatkan jumlah tugas yang telah selesai, sementara completenessMessage memberikan pesan tentang jumlah tugas yang telah selesai dari total tugas yang ada dalam model Plan. Dengan demikian, hal ini membuat pengelolaan data menjadi lebih mudah dan ringkas dalam model Plan.

### SOAL 4
Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
#### Hasil capture sudah dilampirkan diatas
#### Sistem yang dibuat adalah sistem planning yang dilengkapi informasi berupa jumlah plan yang telah dipenuhi berdasarkan jumlah checkbox yang telah dicentang.
#### Praktikum ini bertujuan untuk menunjukkan cara menggunakan InheritedNotifier (melalui PlanProvider) untuk menyediakan data Plan ke dalam widget-tree dan memperbarui UI aplikasi berdasarkan perubahan data tersebut.


### SOAL 5
Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke spreadsheet yang telah disediakan!


## TUGAS PRAKTIKUM 3: STATE DI MULTIPLE SCREENS
### SOAL 1
Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md!
## Praktikum 3: Membuat State di Multiple Screens
### Langkah 1: Edit PlanProvider
Perhatikan kode berikut, edit class PlanProvider sehingga dapat menangani List Plan.
![11-13](docs/3-1.png)

### Langkah 2: Edit main.dart
Langkah sebelumnya dapat menyebabkan error pada main.dart dan plan_screen.dart. Pada method build, gantilah menjadi kode seperti ini.
![11-13](docs/3-2.png)

### Langkah 3: Edit plan_screen.dart
Tambahkan variabel plan dan atribut pada constructor-nya seperti berikut.
![11-13](docs/3-3.png)

### Langkah 4: Error
Itu akan terjadi error setiap kali memanggil PlanProvider.of(context). Itu terjadi karena screen saat ini hanya menerima tugas-tugas untuk satu kelompok Plan, tapi sekarang PlanProvider menjadi list dari objek plan tersebut.

### Langkah 5: Tambah getter Plan
Tambahkan getter pada _PlanScreenState seperti kode berikut.
![11-13](docs/3-5.png)

### Langkah 6: Method initState()
Pada bagian ini kode tetap seperti berikut.
![11-13](docs/3-6.png)

### Langkah 7: Widget build
Pastikan Anda telah merubah ke List dan mengubah nilai pada currentPlan seperti kode berikut ini.
![11-13](docs/3-7.png)

### Langkah 8: Edit _buildTaskTile
Pastikan ubah ke List dan variabel planNotifier seperti kode berikut ini.
![11-13](docs/3-8.png)

### Langkah 9: Buat screen baru
Pada folder view, buatlah file baru dengan nama plan_creator_screen.dart dan deklarasikan dengan StatefulWidget bernama PlanCreatorScreen. Gantilah di main.dart pada atribut home menjadi seperti berikut.

### Langkah 10: Pindah ke class _PlanCreatorScreenState
Kita perlu tambahkan variabel TextEditingController sehingga bisa membuat TextField sederhana untuk menambah Plan baru. Jangan lupa tambahkan dispose ketika widget unmounted seperti kode berikut.
![11-13](docs/3-10.png)

### Langkah 11: Pindah ke method build
Letakkan method Widget build berikut di atas void dispose. Gantilah ‘Namaku' dengan nama panggilan Anda.
![11-13](docs/3-11.png)

### Langkah 12: Buat widget _buildListCreator
Buatlah widget berikut setelah widget build.
![11-13](docs/3-12.png)

### Langkah 13: Buat void addPlan()
Tambahkan method berikut untuk menerima inputan dari user berupa text plan.
![11-13](docs/3-13.png)

### Langkah 14: Buat widget _buildMasterPlans()
Tambahkan widget seperti kode berikut.
![11-13](docs/3-14.png)

Terakhir, run atau tekan F5 untuk melihat hasilnya jika memang belum running. Bisa juga lakukan hot restart jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini.
|      Screenshot     |    Screen record    |
|---------------------|---------------------|
| ![11-02](docs/04.jpg) | ![11-02](docs/04.gif) |

### SOAL 2
Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!
![11-13](docs/32.png)
#### Diagram yang diberikan menggambarkan struktur hierarkis dari widget dalam Flutter, yang mewakili tampilan dan perilaku dari aplikasi. Setiap elemen dalam diagram ini adalah objek yang menentukan tampilan serta interaksi UI. Widget tree ini menentukan bagaimana tata letak dan penampilan aplikasi tersebut. Dalam struktur ini, terdapat tiga widget turunan dari widget MaterialApp, yaitu PlanProvider, PlanCreatorScreen, dan PlanScreen.

#### PlanProvider merupakan widget yang menggunakan paket Provider untuk mengelola status atau data terkait rencana yang dibuat oleh pengguna. Ini memungkinkan akses dan pembaruan data terkait rencana yang dimiliki oleh widget lain. Sementara itu, PlanCreatorScreen dan PlanScreen adalah widget yang merepresentasikan layar-layar berbeda dalam aplikasi. PlanCreatorScreen merupakan layar di mana pengguna dapat membuat paket baru dengan memasukkan detail dan memilih opsi tertentu. Sedangkan, PlanScreen adalah layar di mana pengguna dapat melihat detail dari paket yang ada dan melakukan pengeditan atau penghapusan.

#### Dalam diagram tersebut, metode Navigator.push digunakan untuk berpindah dari PlanCreatorScreen ke PlanScreen ketika pengguna melakukan klik pada kartu rencana. Selain itu, metode Navigator.pop digunakan untuk kembali dari PlanScreen ke PlanCreatorScreen ketika pengguna mengetuk tombol kembali. Ini menggambarkan navigasi antar layar dalam aplikasi tersebut.

### SOAL 3
Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
#### Hasil capture sudah dilampirkan diatas
#### Sistem yang dihasilkan adalah sistem planning yang masing-masing plannya dapat memiliki sub-plan sehingga mempermudah user untuk melakukan kroscek atas progres dari plan yang sudah dibuat.
### SOAL 4
Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke spreadsheet yang telah disediakan!