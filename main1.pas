program SistemPeminjamanBuku;
uses crt;

var
  nama, judul, jenis: string;
  jumlahBuku, i, lamaPinjam, totalDenda, denda, hariTerlambat: integer;

begin
  clrscr;
  totalDenda := 0;

  writeln('=== SISTEM PEMINJAMAN BUKU ===');
  write('Masukkan nama peminjam : ');
  readln(nama);

  repeat
    write('Masukkan jumlah buku yang ingin dipinjam : ');
    readln(jumlahBuku);
    if jumlahBuku <= 0 then
      writeln('Jumlah buku harus lebih dari 0! Silakan input ulang.');
  until jumlahBuku > 0;

  writeln;

  for i := 1 to jumlahBuku do
  begin
    writeln('Data buku ke-', i);
    write('Judul buku : ');
    readln(judul);

    repeat
      write('Jenis buku (F=Fiksi, N=Nonfiksi, R=Referensi): ');
      readln(jenis);
      jenis := upcase(jenis);

      if not (jenis = 'F') and not (jenis = 'N') and not (jenis = 'R') then
        writeln('Input jenis buku tidak valid! Masukkan F, N, atau R.');
    until (jenis = 'F') or (jenis = 'N') or (jenis = 'R');

    repeat
      write('Lama peminjaman (hari): ');
      readln(lamaPinjam);
      if lamaPinjam <= 0 then
        writeln('Lama peminjaman minimal 1 hari!');
    until lamaPinjam > 0;

    // Pesan berdasarkan jenis buku 
    case jenis of
      'F': writeln('Selamat membaca kisah yang menarik!');
      'N': writeln('Semoga bermanfaat menambah wawasan!');
      'R': writeln('Jaga dengan baik, tidak boleh dibawa pulang!');
    end;

    // Hitung denda jika lewat dari 7 hari 
    if lamaPinjam > 7 then
    begin
      hariTerlambat := lamaPinjam - 7;
      denda := hariTerlambat * 1000;
      totalDenda := totalDenda + denda;
      writeln('Terlambat ', hariTerlambat, ' hari. Denda Rp', denda);
    end;

    writeln;
  end;

  writeln('==============================');
  writeln('Total estimasi denda : Rp', totalDenda);
  writeln('Terima kasih ', nama, ' telah menggunakan sistem ini.');
  writeln('==============================');
end.
