program QuizNo3;

var
  tugas, kuis, uts, uas, rata: array[1..5] of real;
  n, i: integer;

begin
  write('Masukkan jumlah mahasiswa (1-5): ');
  readln(n);

  if (n < 1) or (n > 5) then
    writeln('Jumlah mahasiswa tidak sesuai.')
  else
  begin
    for i := 1 to n do
    begin
      writeln;
      writeln('Mahasiswa ke-', i);

      write('Masukkan nilai tugas: ');
      readln(tugas[i]);

      write('Masukkan nilai kuis: ');
      readln(kuis[i]);

      write('Masukkan nilai UTS: ');
      readln(uts[i]);

      write('Masukkan nilai UAS: ');
      readln(uas[i]);

      rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
    end;

    writeln;
    writeln('=== HASIL NILAI MAHASISWA ===');

    for i := 1 to n do
    begin
      writeln;
      writeln('Mahasiswa ke-', i);
      writeln('Nilai tugas  : ', tugas[i]:0:2);
      writeln('Nilai kuis   : ', kuis[i]:0:2);
      writeln('Nilai UTS    : ', uts[i]:0:2);
      writeln('Nilai UAS    : ', uas[i]:0:2);
      writeln('Rata-rata    : ', rata[i]:0:2);

      if rata[i] >= 70 then
        writeln('Keterangan   : LULUS')
      else
        writeln('Keterangan   : TIDAK LULUS');
    end;
  end;
end.
