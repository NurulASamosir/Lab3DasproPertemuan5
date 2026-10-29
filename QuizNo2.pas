program QuizNo2;

var
  nilai: array[1..10] of real;
  n, i, j: integer;

begin
  write('Masukkan jumlah mahasiswa (1-10): ');
  readln(n);

  if (n < 1) or (n > 10) then
    writeln('Jumlah mahasiswa tidak valid.')
  else
  begin
    for i := 1 to n do
    begin
      write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
      readln(nilai[i]);
    end;

    for i := 1 to n - 1 do
      for j := 1 to n - i do
        if nilai[j] > nilai[j + 1] then
        begin
          nilai[j] := nilai[j] + nilai[j + 1];
          nilai[j + 1] := nilai[j] - nilai[j + 1];
          nilai[j] := nilai[j] - nilai[j + 1];
        end;

    writeln;
    writeln('Nilai UAS dari terendah ke tertinggi:');

    for i := 1 to n do
      writeln(nilai[i]:0:2);
  end;
end.
