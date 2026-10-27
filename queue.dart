// ============================================================
// Praktikum Pemrograman Mobile - Pertemuan 1 (Dart Dasar)
// Implementasi Struktur Data Queue (FIFO)
// Nama  : Novia Rizky Aryani
// NIM   : H1D024041
// Studi Kasus: Sistem Antrian Loket Tiket Bioskop
// ============================================================

// Definisi Node menggunakan generic type <T>
class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}

// Implementasi Struktur Data Queue (First-In, First-Out)
class Queue<T> {
  Node<T>? _front; // Penunjuk elemen terdepan
  Node<T>? _rear;  // Penunjuk elemen paling belakang
  int _length = 0;

  // Cek apakah antrian kosong
  bool get isEmpty => _front == null;

  // Mendapatkan jumlah elemen dalam antrian
  int get length => _length;

  // 1. Enqueue: Menambahkan elemen ke antrian (bagian paling belakang)
  void enqueue(T item) {
    Node<T> newNode = Node(item);

    if (isEmpty) {
      _front = newNode;
      _rear = newNode;
    } else {
      _rear?.next = newNode;
      _rear = newNode;
    }
    _length++;
    print("[+] Masuk antrian : $item");
  }

  // 2. Dequeue: Mengambil dan menghapus elemen dari antrian (bagian paling depan)
  T? dequeue() {
    if (isEmpty) {
      print("[!] Antrian kosong! Tidak ada pembeli yang dapat dilayani.");
      return null;
    }

    T dataTerpanggil = _front!.data;
    _front = _front!.next;
    _length--;

    // Jika setelah dequeue antrian jadi kosong, reset rear ke null
    if (isEmpty) {
      _rear = null;
    }

    return dataTerpanggil;
  }

  // 3. Peek: Melihat elemen terdepan tanpa menghapusnya
  T? peek() {
    if (isEmpty) {
      return null;
    }
    return _front!.data;
  }

  // 4. Menampilkan seluruh elemen antrian saat ini
  void cetakAntrian() {
    if (isEmpty) {
      print("Status Antrian: KOSONG\n");
      return;
    }

    print("--- Daftar Antrian Loket Bioskop (Total: $_length Orang) ---");
    Node<T>? current = _front;
    int nomor = 1;
    while (current != null) {
      print("  $nomor. ${current.data}");
      current = current.next;
      nomor++;
    }
    print("----------------------------------------------------------\n");
  }
}

void main() {
  print("==========================================================");
  print("       SIMULASI SISTEM ANTRIAN LOKET TIKET BIOSKOP        ");
  print("==========================================================\n");

  // Inisialisasi Queue bertipe data String
  Queue<String> antrianBioskop = Queue<String>();

  // Skenario 1: Pembeli mulai berdatangan ke loket
  print(">>> 1. Pembeli mengambil antrian di loket:");
  antrianBioskop.enqueue("Novia Rizky - Pengabdi Setan 2");
  antrianBioskop.enqueue("Dimas Anggara - Oppenheimer");
  antrianBioskop.enqueue("Clarissa Putri - Barbie");

  print("");
  antrianBioskop.cetakAntrian();

  // Skenario 2: Petugas loket melihat siapa antrian nomor satu berikutnya
  print(">>> 2. Cek pembeli giliran terdepan (Peek):");
  print("Giliran selanjutnya: ${antrianBioskop.peek()}\n");

  // Skenario 3: Petugas loket memanggil pembeli pertama untuk membeli tiket
  print(">>> 3. Petugas loket melayani pembeli pertama (Dequeue):");
  var dilayani1 = antrianBioskop.dequeue();
  print("Sedang dilayani di loket: $dilayani1\n");

  antrianBioskop.cetakAntrian();

  // Skenario 4: Pembeli baru datang dan masuk ke barisan belakang
  print(">>> 4. Pembeli baru datang ke antrian (Enqueue):");
  antrianBioskop.enqueue("Fauzan Pratama - Spider-Man");

  print("");
  antrianBioskop.cetakAntrian();

  // Skenario 5: Petugas loket melayani pembeli berikutnya
  print(">>> 5. Petugas loket melayani pembeli berikutnya (Dequeue):");
  print("Sedang dilayani di loket: ${antrianBioskop.dequeue()}\n");

  antrianBioskop.cetakAntrian();
}
