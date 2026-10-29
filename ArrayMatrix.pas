program TesAray;
uses crt;

var 
matrix: array[1..3,2..3] of integer;
i, j: integer;

begin
    clrscr;
    for i := 1 to 3 do
    begin
        for j := 1 to 3 do
        begin
            write('Matrix ',i,': ');
            readln(matrix[i,j]);
        end;
    end;
    writeln;

    for i := 1 to 3 do
    begin
        for j := 1 to 3 do
        begin
            write(matrix[i,j], ' ');
        end;
        writeln;
    end;
end.
