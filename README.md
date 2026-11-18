# Toko API - RESTful API CodeIgniter 4

## Identitas Mahasiswa
*   **Nama:** Nafisah Sekar Ayu
*   **NIM:** H1D024087
*   **Shift Awal:** H
*   **Shift Akhir:** D

---

## 📝 Deskripsi Proyek
Repositori ini berisi RESTful API berbasis **CodeIgniter 4** dan database **MySQL** yang digunakan sebagai backend penyedia layanan data untuk aplikasi mobile Flutter (**Toko Kita**).

🔗 **[Repository Frontend Flutter (Toko Kita)](https://github.com/Nafisah528/H1D024087-NafisahSekarAyu-FlutterBagian1)**

API ini menangani:
1.  **Registrasi Member**: Pendaftaran akun dengan password yang dienkripsi menggunakan `password_hash` (`bcrypt`).
2.  **Autentikasi & Login**: Validasi akun dan pembuatan token autentikasi 100 karakter acak yang disimpan ke tabel `member_token`.
3.  **CRUD Produk**: Endpoint lengkap untuk Create, Read (List & Detail), Update, dan Delete data produk toko.

---

## 🗄️ Database
*   **Nama Database:** `toko_api`
*   Skema database dan sample data tersedia pada file: **`toko_api.sql`**.

### Struktur Tabel:
1.  **`member`**: `id`, `nama`, `email`, `password`
2.  **`member_token`**: `id`, `member_id`, `auth_key` (Foreign Key ke `member.id`)
3.  **`produk`**: `id`, `kode_produk`, `nama_produk`, `harga`

---

## 🌐 Daftar Endpoint REST API
Base URL: `http://localhost/toko-api/public/`

| No | Modul | Endpoint | Method | Format Request Body | Keterangan |
|---|---|---|---|---|---|
| 1 | Registrasi | `/registrasi` | `POST` | JSON (`nama`, `email`, `password`) | Mendaftarkan member baru |
| 2 | Login | `/login` | `POST` | JSON (`email`, `password`) | Autentikasi & generate token |
| 3 | Produk | `/produk` | `POST` | JSON (`kode_produk`, `nama_produk`, `harga`) | Menambahkan produk baru |
| 4 | Produk | `/produk` | `GET` | - | Menampilkan daftar seluruh produk |
| 5 | Produk | `/produk/{id}` | `GET` | - | Menampilkan detail produk by ID |
| 6 | Produk | `/produk/{id}` | `PUT` | JSON (`kode_produk`, `nama_produk`, `harga`) | Memperbarui data produk by ID |
| 7 | Produk | `/produk/{id}` | `DELETE` | - | Menghapus produk by ID |

*Catatan: Koleksi pengujian Postman siap pakai tersedia di file `toko_api_postman_collection.json`.*

---

## 🚀 Cara Menjalankan di Lokal (XAMPP)
1. Letakkan folder ini di dalam direktori `C:\xampp\htdocs\toko-api`.
2. Buka **XAMPP Control Panel**, lalu aktifkan modul **Apache** dan **MySQL** (klik *Start*).
3. Buat database baru bernama `toko_api` di phpMyAdmin (`http://localhost/phpmyadmin`), kemudian import file `toko_api.sql`.
4. Buka aplikasi **Postman**, lalu import file `toko_api_postman_collection.json` untuk menguji endpoint.
