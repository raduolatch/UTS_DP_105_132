
uses crt;

var
(* deklarasikan variabel yang diperlukan *)

begin

    clrscr;

    writeln('=== SISTEM PEMINJAMAN BUKU ===');
    writeln;

    (* Input nama peminjam *)

    (* Validasi jumlah buku (tidak boleh nol atau negatif) menggunakan perulangan *)

    (* Gunakan perulangan untuk meminta data setiap buku yang dipinjam *)
        (* Input judul buku *)
        (* Input jenis buku (F=Fiksi, N=Nonfiksi, R=Referensi) dengan validasi agar hanya huruf tersebut yang diterima *)
        (* Input lama peminjaman (hari), dengan validasi agar minimal 1 hari *)
        (* Tampilkan pesan berbeda tergantung jenis buku menggunakan operasi kondisi *)
        (* Jika hari peminjaman lebih dari 7, hitung denda dan tambahkan ke total denda *)

    writeln;
    writeln('==============================');
    (* Tampilkan total estimasi denda dan ucapan terima kasih kepada peminjam *)
    writeln('Total estimasi denda : Rp', );
    writeln('Terima kasih ', nama, ' telah menggunakan sistem ini.');
    writeln('==============================');
end.