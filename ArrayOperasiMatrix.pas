program matriks;
uses crt;

var
    a, b, c : array[1..3, 1..3] of integer;
    i, j : integer;
    operasi : char;
    bagiNol : boolean;

begin
clrscr;

{ input matriks A }
writeln('=== Matriks A ===');
for i := 1 to 3 do
begin
    for j := 1 to 3 do
    begin
        write('A[', i, ',', j, '] : ');
        readln(a[i,j]);
    end;
end;

{ input matriks B }
writeln;
writeln('=== Matriks B ===');
for i := 1 to 3 do
begin
    for j := 1 to 3 do
    begin
        write('B[', i, ',', j, '] : ');
        readln(b[i,j]);
    end;
end;


{ pilih operasi }
writeln;
  write('Operasi yang ingin digunakan (+, -, *, /) : ');
    readln(operasi);

    if not (operasi in ['+', '-', '*', '/']) then
    writeln('Operasi tidak dikenal!')
    else
    begin
        bagiNol := false;

    for i := 1 to 3 do
      for j := 1 to 3 do
        case operasi of
          '+' : c[i,j] := a[i,j] + b[i,j];
          '-' : c[i,j] := a[i,j] - b[i,j];
          '*' : c[i,j] := a[i,j] * b[i,j];
          '/' : if b[i,j] = 0 then
                  bagiNol := true
                else
                  c[i,j] := a[i,j] div b[i,j];
        end;

    writeln;
    if bagiNol then
      writeln('Tidak bisa dibagi: ada elemen matriks B yang bernilai 0.')
    else
    begin
      writeln('Hasil A ', operasi, ' B :');
      for i := 1 to 3 do
      begin
        for j := 1 to 3 do
          write(c[i,j]:6);
        writeln;
      end;
    end;
  end;

  readln;
end.
