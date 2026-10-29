program TesAray2;
uses crt;
var 

kursi: array[1..1000] of integer;
i, n: integer;

begin
clrscr;
    write('Masukkan batas index: ');
    readln(n);
    for i := 1 to n do
    begin
        write('Masukkan index ke-', i, ': ');
        readln(kursi[i]);
    end;

    for i := 1 to n do
    begin
        write(kursi[i], ' ');
    end;
    writeln;

    for i := n downto 1 do
    begin
        write(kursi[i], ' ');
    end;
end.
