
program PenjumlahanMatriks;

var
  A, B, C: array[1..5, 1..5] of integer;
  barisA, kolomA, barisB, kolomB: integer;
  i, j: integer;

begin
  writeln('=== PENJUMLAHAN MATRIKS ===');

  write('Masukkan jumlah baris matriks A: ');
  readln(barisA);
  write('Masukkan jumlah kolom matriks A: ');
  readln(kolomA);

  write('Masukkan jumlah baris matriks B: ');
  readln(barisB);
  write('Masukkan jumlah kolom matriks B: ');
  readln(kolomB);

  if (barisA < 1) or (barisA > 5) or
     (kolomA < 1) or (kolomA > 5) or
     (barisB < 1) or (barisB > 5) or
     (kolomB < 1) or (kolomB > 5) then
  begin
    writeln('Ukuran matriks harus antara 1 sampai 5!');
  end
  else
  begin
    if (barisA <> barisB) or (kolomA <> kolomB) then
    begin
      writeln('Kedua matriks tidak dapat dijumlahkan.');
    end
    else
    begin
      writeln('Masukkan elemen matriks A:');
      for i := 1 to barisA do
        for j := 1 to kolomA do
        begin
          write('A[', i, ',', j, '] = ');
          readln(A[i,j]);
        end;

      writeln('Masukkan elemen matriks B:');
      for i := 1 to barisB do
        for j := 1 to kolomB do
        begin
          write('B[', i, ',', j, '] = ');
          readln(B[i,j]);
        end;

      for i := 1 to barisA do
        for j := 1 to kolomA do
          C[i,j] := A[i,j] + B[i,j];

      writeln('Hasil penjumlahan matriks:');
      for i := 1 to barisA do
      begin
        for j := 1 to kolomA do
          write(C[i,j]:5);
        writeln;
      end;
    end;
  end;
end.
