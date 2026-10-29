program TesAray;
uses crt;
var 
    kursi : array[1..5] of integer;

begin
    clrscr;
    kursi[1] := 10;
    kursi[2] := 120;
    kursi[3] := 13;
    kursi[4] := 14;
    kursi[5] := 115;

    writeln(kursi[1]);
    writeln(kursi[2]);
    writeln(kursi[3]);
    writeln(kursi[4]);
    writeln(kursi[5]);
end.
