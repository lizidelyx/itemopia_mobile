1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

    Navigator.push(): Metode ini digunakan untuk menambahkan rute baru ke tumpukan rute, sehingga pengguna dapat kembali ke rute sebelumnya menggunakan tombol kembali. Ini berguna ketika Anda ingin menambahkan rute baru di atas rute saat ini.

    Contoh Penggunaan:

        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyNewPage()),
        );

    Navigator.pushReplacement(): Metode ini juga menambahkan rute baru ke tumpukan rute, tetapi dengan menggantikan rute saat ini. Ini berarti rute saat ini akan dihapus dari tumpukan, dan pengguna tidak dapat kembali ke rute tersebut menggunakan tombol kembali.

    Contoh Penggunaan:

        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyNewPage()),
        );

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
    Container: Mengatur tata letak dan dekorasi dasar, sering digunakan sebagai wadah untuk widget lain.

    Row dan Column: Mengatur widget-child secara horizontal (Row) atau vertikal (Column).

    ListView dan GridView: Menyusun widget-child secara dinamis dalam daftar atau grid.

    Stack: Menumpuk widget-child di atas satu sama lain.

    Expanded dan Flexible: Digunakan dalam Row atau Column untuk mengatur bagaimana anak-anak mereka berbagi ruang.

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
        TextFormField: Digunakan untuk input teks seperti nama produk, jumlah, dan deskripsi. Ini memberikan pengguna umpan balik langsung dan memungkinkan validasi.

        ElevatedButton: Digunakan sebagai tombol "Save" pada form. Ini memicu aksi simpan ketika ditekan.

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
    Clean Architecture adalah konsep pengembangan perangkat lunak yang memisahkan aplikasi ke dalam lapisan-lapisan dengan tanggung jawab tertentu. Dalam konteks Flutter:

    Domain Layer: Berisi logika bisnis dan aturan aplikasi.

    Data Layer: Menangani akses ke sumber data eksternal seperti database atau API.

    Presentation Layer: Menangani UI dan tampilan pengguna.

Penerapan Clean Architecture pada Flutter melibatkan pembagian kode ke dalam paket-paket yang sesuai dengan lapisan-lapisan tersebut. Terapkan prinsip dependensi terbalik sehingga lapisan yang lebih dalam (domain dan data) tidak bergantung pada lapisan yang lebih luar (presentation).gunakan elemen input tersebut karena mereka menyediakan kontrol dan fleksibilitas yang diperlukan dalam pengumpulan dan validasi data pengguna. TextFormField membantu dalam pengumpulan data teks, sedangkan ElevatedButton memberikan pengguna cara untuk memicu tindakan simpan.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)