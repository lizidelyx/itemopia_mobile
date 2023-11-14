1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

    Perbedaan utama antara StatelessWidget dan StatefulWidget dalam konteks pengembangan aplikasi Flutter adalah keterbatasan kemampuan perubahan data dan keadaan. Berikut adalah poin-poin perbedaan utama:

    Immutability vs. Mutability:
        StatelessWidget: Tidak dapat mengubah (immutable). Widget ini memiliki data yang bersifat tetap selama masa hidupnya. Jika kita ingin mengubah tampilan, kita perlu membuat widget baru.
        StatefulWidget: Dapat mengubah (mutable). Widget ini memiliki objek State yang dapat diubah selama masa hidupnya, sehingga dapat diperbarui untuk mencerminkan perubahan dalam keadaan aplikasi.

    Keadaan (State):
        StatelessWidget: Tidak memiliki objek State. Data yang diberikan ke widget saat pembuatan tetap tidak berubah selama siklus hidup widget.
        StatefulWidget: Memiliki objek State yang dapat berubah. Objek State memungkinkan widget untuk memperbarui tampilannya berdasarkan perubahan data atau keadaan.

    Pembaharuan Tampilan:
        StatelessWidget: Tampilan tidak dapat diperbarui setelah widget dibuat. Jika data berubah, kita perlu membuat widget baru.
        StatefulWidget: Tampilan dapat diperbarui secara dinamis selama siklus hidup widget menggunakan objek State. Ini memungkinkan perubahan data untuk memicu pembaharuan tampilan.

    Keadaan Inisial:
        StatelessWidget: Data yang diberikan ke widget bersifat konstan sepanjang siklus hidup widget.
        StatefulWidget: Data dapat berubah selama siklus hidup widget, tergantung pada perubahan dalam objek State.

    Contoh Penggunaan:
        StatelessWidget: Digunakan ketika tampilan widget tidak bergantung pada keadaan atau data yang berubah.
        StatefulWidget: Digunakan ketika tampilan widget perlu diperbarui berdasarkan perubahan keadaan atau data.

Pemilihan antara StatelessWidget dan StatefulWidget tergantung pada kebutuhan aplikasi. Pada umumnya, jika kita memiliki bagian UI yang memerlukan pembaruan berdasarkan perubahan keadaan atau data, kita akan memilih StatefulWidget. Jika tampilan kita statis atau tetap sepanjang waktu, kita bisa menggunakan StatelessWidget.

2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

    1. Pada ShopFormPage:

    Scaffold: Membuat struktur dasar halaman.
    AppBar: Menampilkan AppBar di bagian atas halaman.
    Form: Mengelompokkan elemen formulir dan menyediakan fungsi validasi.
    TextFormField: Input field untuk mengumpulkan data dari pengguna.
    SingleChildScrollView: Membungkus elemen-elemen yang dapat di-scroll secara vertikal.
    Column: Menyusun widget-child secara vertikal.
    Padding: Menambahkan padding ke elemen-elemen di dalamnya.
    ElevatedButton: Tombol dengan latar belakang yang terangkat saat ditekan.
    AlertDialog: Jendela dialog pop-up.
    Text: Menampilkan teks.
    Align: Memposisikan widget-child.

2. Pada ProductTablePage:

    Scaffold: Membuat struktur dasar halaman.
    AppBar: Menampilkan AppBar di bagian atas halaman.
    DataTable: Menampilkan data dalam bentuk tabel.
    DataColumn: Menentukan kolom dalam tabel.
    DataRow: Merepresentasikan satu baris dalam tabel.
    DataCell: Menunjukkan sel data dalam tabel.

3. Pada LeftDrawer:

    Drawer: Menyediakan tata letak untuk menu navigasi samping.
    ListView: Menyusun daftar item dalam tata letak vertikal.
    DrawerHeader: Bagian header dari Drawer.
    ListTile: Menunjukkan item dalam daftar.

    4. Pada MyHomePage:

    Scaffold: Membuat struktur dasar halaman.
    AppBar: Menampilkan AppBar di bagian atas halaman.
    Text: Menampilkan teks pada judul.
    Drawer: Menampilkan navigasi samping (left drawer).
    SingleChildScrollView: Membungkus elemen-elemen yang dapat di-scroll secara vertikal.
    Padding: Menambahkan padding ke elemen-elemen di dalamnya.
    Column: Menyusun widget-child secara vertikal.
    GridView.count: Menampilkan elemen-elemen dalam grid dengan jumlah kolom tertentu.
    FloatingActionButton: Tombol aksi mengambang untuk tindakan tambahan.

    5. Pada ShopCard:

        Material: Mengaplikasikan gaya Material Design pada widget-child.
        InkWell: Menyediakan efek splash saat ditekan.
        Container: Wadah untuk mengatur padding dan mengatur warna latar belakang.
        Icon: Menampilkan ikon.
        Padding: Menambahkan padding ke elemen-elemen di dalamnya.
        Text: Menampilkan teks.
        SnackBar: Menampilkan notifikasi kecil di bagian bawah layar.

    6. Kelas Tambahan:

        LeftDrawer: Membuat navigasi samping (left drawer) dengan daftar item dan header.

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)