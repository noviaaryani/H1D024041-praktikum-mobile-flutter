# Praktikum Pemrograman Mobile Menggunakan Flutter

### Nama       : Novia Rizky Aryani <br>
### NIM        : H1D024041 <br>
### Shift KRS  : C <br>
### Shift Baru : F <br>
<br>

## Pertemuan 1 - Dart Dasar
### Implementasi Struktur Data *Queue* (Studi Kasus: Antrian Loket Tiket Bioskop)

<p>
<i><strong>Queue</strong></i> adalah struktur data linear yang menyusun data berdasarkan prinsip <strong>FIFO (First In, First Out)</strong>, yang berarti elemen yang pertama kali dimasukkan ke dalam antrian akan menjadi elemen yang pertama kali dikeluarkan.
</p>

### Penjelasan Metode pada *Queue*:
1. **`enqueue(item)`**: Menambahkan data pembeli baru ke antrian pada posisi paling belakang (*rear*).
2. **`dequeue()`**: Mengeluarkan dan memanggil data pembeli yang berada di posisi paling depan (*front*) untuk dilayani.
3. **`peek()`**: Melihat data pembeli yang berada di urutan pertama tanpa mengeluarkannya dari antrian.
4. **`isEmpty`**: Memeriksa apakah antrian saat ini sedang kosong atau tidak.
5. **`length`**: Menghitung jumlah pembeli yang sedang menunggu di antrian.
6. **`cetakAntrian()`**: Menampilkan daftar seluruh pembeli dalam antrian secara berurutan.

---

### Cara Menjalankan Program
Pastikan Dart SDK telah terpasang di perangkat Anda, lalu jalankan perintah berikut di terminal:
```bash
dart run queue.dart
```

---

### Hasil Output Program
```text
==========================================================
       SIMULASI SISTEM ANTRIAN LOKET TIKET BIOSKOP        
==========================================================

>>> 1. Pembeli mengambil antrian di loket:
[+] Masuk antrian : Novia Rizky - Pengabdi Setan 2
[+] Masuk antrian : Dimas Anggara - Oppenheimer
[+] Masuk antrian : Clarissa Putri - Barbie

--- Daftar Antrian Loket Bioskop (Total: 3 Orang) ---
  1. Novia Rizky - Pengabdi Setan 2
  2. Dimas Anggara - Oppenheimer
  3. Clarissa Putri - Barbie
----------------------------------------------------------

>>> 2. Cek pembeli giliran terdepan (Peek):
Giliran selanjutnya: Novia Rizky - Pengabdi Setan 2

>>> 3. Petugas loket melayani pembeli pertama (Dequeue):
Sedang dilayani di loket: Novia Rizky - Pengabdi Setan 2

--- Daftar Antrian Loket Bioskop (Total: 2 Orang) ---
  1. Dimas Anggara - Oppenheimer
  2. Clarissa Putri - Barbie
----------------------------------------------------------

>>> 4. Pembeli baru datang ke antrian (Enqueue):
[+] Masuk antrian : Fauzan Pratama - Spider-Man

--- Daftar Antrian Loket Bioskop (Total: 3 Orang) ---
  1. Dimas Anggara - Oppenheimer
  2. Clarissa Putri - Barbie
  3. Fauzan Pratama - Spider-Man
----------------------------------------------------------

>>> 5. Petugas loket melayani pembeli berikutnya (Dequeue):
Sedang dilayani di loket: Dimas Anggara - Oppenheimer

--- Daftar Antrian Loket Bioskop (Total: 2 Orang) ---
  1. Clarissa Putri - Barbie
  2. Fauzan Pratama - Spider-Man
----------------------------------------------------------
```
