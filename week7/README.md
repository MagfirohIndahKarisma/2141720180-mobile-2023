# JOBSHEET 7 : Layout dan Navigasi

### NIM : 2141720180

### NAMA : Magfiroh Indah Karisma

## Soal 1
Selesaikan Praktikum 1 sampai 4, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!

### Praktikum 1: Membangun Layout di Flutter
#### Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.

#### Langkah 2: Buka file lib/main.dart
Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.
![7](docs/1.png)

#### Langkah 3: Identifikasi layout diagram
Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:

- Identifikasi baris dan kolom.
- Apakah tata letaknya menyertakan kisi-kisi (grid)?
- Apakah ada elemen yang tumpang tindih?
- Apakah UI memerlukan tab?
- Perhatikan area yang memerlukan alignment, padding, atau borders.
Pertama, identifikasi elemen yang lebih besar. Dalam contoh ini, empat elemen disusun menjadi sebuah kolom: sebuah gambar, dua baris, dan satu blok teks.

Selanjutnya, buat diagram setiap baris. Baris pertama, disebut bagian Judul, memiliki 3 anak: kolom teks, ikon bintang, dan angka. Anak pertamanya, kolom, berisi 2 baris teks. Kolom pertama itu memakan banyak ruang, sehingga harus dibungkus dengan widget yang Diperluas.

Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.

Setelah tata letak telah dibuat diagramnya, cara termudah adalah dengan menerapkan pendekatan bottom-up. Untuk meminimalkan kebingungan visual dari kode tata letak yang banyak bertumpuk, tempatkan beberapa implementasi dalam variabel dan fungsi.

#### Langkah 4: Implementasi title row
Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:

/* soal 1 */ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

/* soal 2 */ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

/* soal 3 */ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:
![7](docs/2.png)


### Praktikum 2: Implementasi Button Row
#### Langkah 1: Buat method Column _buildButtonColumn
Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.
![7](docs/3.png)

#### Langkah 2: Buat widget buttonSection
Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():
![7](docs/4.png)

#### Langkah 3: Tambah button section ke body
Tambahkan variabel buttonSection ke dalam body seperti berikut:
![7](docs/5.png)

### Praktikum 3: Implementasi Text Section
#### Langkah 1: Buat widget textSection
Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:
![7](docs/6.png)
Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.

#### Langkah 2: Tambahkan variabel text section ke body
Tambahkan widget variabel textSection ke dalam body seperti berikut:
![7](docs/7.png)

### Praktikum 4: Implementasi Image Section
#### Langkah 1: Siapkan aset gambar
Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml seperti berikut:
![7](docs/8.png)


#### Langkah 2: Tambahkan gambar ke body
Tambahkan aset gambar ke dalam body seperti berikut:
![7](docs/9.png)
BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya.
![7](docs/10.png)

#### Langkah 3: Terakhir, ubah menjadi ListView
Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.
![7](docs/11.png)

## Soal 2
Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics

## Basic Flutter layout concepts

### Row and Column classes
Row and Column are classes that contain and lay out widgets. Widgets inside of a Row or Column are called children, and Row and Column are referred to as parents. Row lays out its widgets horizontally, and Column lays out its widgets vertically.

#### Example: Creating a Column
The following example displays the differences between a Row and Column.

1. Click the Run button.
![7](docs/12.png)

2. In the code, change the Row to a Column, and run again.
![7](docs/13.png)


### Axis size and alignment

#### Example: Modifying axis size
The following example explicitly sets mainAxisSize to its default value, MainAxisSize.max.

1. Click the Run button.
![7](docs/14.png)

2. Change MainAxisSize.max to MainAxisSize.min, and run again.
![7](docs/15.png)

#### Example: Modifying main axis alignment
The following example explicitly sets mainAxisAlignment to its default value, MainAxisAlignment.start.

1. Click the Run button.
![7](docs/16.png)

2. Change MainAxisAlignment.start to MainAxisAlignment.end, and run again.
![7](docs/17.png)

#### Example: Modifying cross axis alignment
The following example explicitly sets crossAxisAlignment to its default value, CrossAxisAlignment.center.

To demonstrate cross axis alignment, mainAxisAlignment is set to MainAxisAlignment.spaceAround, and Row now contains a BiggerBlueBox widget that is taller than the BlueBox widgets.

1. Click the Run button.
![7](docs/18.png)

2. Change CrossAxisAlignment.center to CrossAxisAlignment.start, and run again.
![7](docs/19.png)


### Flexible widget

#### Example: Changing fit properties
The following example demonstrates the fit property, which can have one of two values:
- FlexFit.loose : The widget’s preferred size is used. (Default)
- FlexFit.tight : Forces the widget to fill all of its extra space.


In this example, change the fit properties to make the Flexible widgets fill the extra space.

1. Click the Run button.
![7](docs/20.png)

2. Change both fit values to FlexFit.tight, and run again.
![7](docs/21.png)

#### Example: Testing flex values
In the following example, Row contains one BlueBox widget and two Flexible widgets that wrap two BlueBox widgets. The Flexible widgets contain flex properties with flex values set to 1 (the default value).

When flex properties are compared against one another, the ratio between their flex values determines what fraction of the total remaining space each Flexible widget receives.


  remainingSpace * (flex / totalOfAllFlexValues)


In this example, the sum of the flex values (2), determines that both Flexible widgets receive half of the total remaining space. The BlueBox widget (or fixed-size widget) remains the same size.
![7](docs/22.png)


### Expanded widget

#### Example: Filling extra space
The following example demonstrates how the Expanded widget forces its child widget to fill extra space.

1. Click the Run button.

2. Wrap the second BlueBox widget in an Expanded widget.

For example:


  Expanded(child: BlueBox(),),


3. Select the Format button to properly format the code, and run again.
![7](docs/23.png)

### SizedBox widget

#### Example: Resizing a widget
The following example wraps the middle BlueBox widget inside of a SizedBox widget and sets the BlueBox’s width to 100 logical pixels.

1. Click the Run button.
![7](docs/24.png)

2. Add a height property equal to 100 logical pixels inside the SizedBox widget, and run again.
![7](docs/25.png)

#### Example: Creating space
The following example contains three BlueBox widgets and one SizedBox widget that separates the first and second BlueBox widgets. The SizedBox widget contains a width property equal to 50 logical pixels.

1. Click the Run button.
![7](docs/26.png)

2. Create more space by adding another SizedBox widget (25 logical pixels wide) between the second and third BlueBox widgets, and run again.
![7](docs/27.png)

### Spacer widget

#### Example: Creating more space
The following example separates the first two BlueBox widgets using a Spacer widget with a flex value of 1.

1. Click the Run button.
![7](docs/28.png)

2. Add another Spacer widget (also with a flex value of 1) between the second and third BlueBox widgets.
![7](docs/29.png)


### Text widget

#### Example: Aligning text
The following example displays “Hey!” three times, but at different font sizes and in different colors. Row specifies the crossAxisAlignment and textBaseline properties.

1. Click the Run button.
![7](docs/30.png)

2. Change CrossAxisAlignment.center to CrossAxisAlignment.baseline, and run again.
![7](docs/31.png)

### Icon widget

#### Example: Creating an Icon
The following example displays the widget Icons.widget from the Material Icon library in red and blue.

1. Click the Run button.
![7](docs/32.png)

2. Add another Icon from the Material Icon library with a size of 50.
![7](docs/33.png)

3. Give the Icon a color of Colors.amber from the Material Color palette, and run again.
![7](docs/34.png)

### Image widget

#### Example: Displaying an image
The following example displays an image that’s stored remotely on GitHub. The Image.network method takes a string parameter that contains an image’s URL.

In this example, Image.network contains a non-working URL.

1. Click the Run button.
![7](docs/35.png)

2. Change the non-working URL to the actual URL:

https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic1.jpg
![7](docs/36.png)

3. Then change pic1.jpg to pic2.jpg or pic3.jpg, and run again.
![7](docs/37.png)
![7](docs/38.png)

### Putting it all together

#### Part 1
Exercise: Create the name and title
Implement a Column that contains two text widgets:

- The first Text widget has the name Flutter McFlutter and the style property set to Theme.of(context).textTheme.headlineSmall.

- The second Text widget contains the title Experienced App Developer.

For the Column, set mainAxisSize to MainAxisSize.min and crossAxisAlignment to CrossAxisAlignment.start.

##### Exercise: Wrap the Column in a Row
Wrap the Column you implemented in a Row that contains the following widgets:

- An Icon widget set to Icons.account_circle and with a size of 50 pixels.

- A Padding widget that creates a space of 8 pixels around the Icon widget.

To do this, you can specify const EdgeInsets.all(8) for the padding property.

#### Part 2
##### Exercise: Tweak the layout
Wrap the Row in a Column that has a mainAxisSize property set to MainAxisSize.min and a crossAxisAlignment property set to CrossAxisAlignment.stretch. The Column contains the following widgets:

- A SizedBox widget with a height of 8.

- An empty Row where you’ll add the contact information in a later step.

- A second SizedBox widget with a height of 16.

- A second empty Row where you’ll add four icons (Part 3).

The Column’s list of widgets should be formatted as follows, so the contact information and icons are displayed below the name and title:

##### Exercise: Enter contact information
Enter two Text widgets inside the first empty Row :

- The first Text widget contains the address 123 Main Street.

- The second Text widget contains the phone number (415) 555-0198.

For the first empty Row, set the mainAxisAlignment property to MainAxisAlignment.spaceBetween.

#### Part 3
##### Exercise: Add four icons
Enter the following Icon widgets inside the second empty Row:

- Icons.accessibility
- Icons.timer
- Icons.phone_android
- Icons.phone_iphone

For the second empty Row, set the mainAxisAlignment property to MainAxisAlignment.spaceAround.

Hasil akhir:
![7](docs/39.png)


![7](docs/40.png)
