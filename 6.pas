Program ZadachiSix1;
const n = 10; 
const m = 10;
type mass = array [1..n,1..m] of integer;
var matrix:mass; 
j,summ:integer; 

procedure vvod(var a:mass);
	var i,j:integer;
	begin
		for i:=1 to n do
			for j:=1 to m do
				a[i][j]:=50 - random(100);
	end;

procedure vivod(a:mass);
	var i,j:integer;
	begin
		for i:=1 to n do
		begin
			writeln();
			for j:=1 to m do
			write(a[i][j]:4);
		end;
	end;

procedure summa(a:mass; str:integer; var s:integer);
	var i:integer;
	begin
		s := 0;
		for i:=1 to m do
			if(a[str][i]>0) then
				s := s + a[str][i];
	end;

begin
	randomize();
	vvod(matrix);
	vivod(matrix);
	for j:=1 to n do
		begin
			writeln();
			write('Сумма элементов строки № ');
			write(j);
			write(' ');
			summa(matrix,j,summ);
			write(summ);
		end;
		writeln();
end.
