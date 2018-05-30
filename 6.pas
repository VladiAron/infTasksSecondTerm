Program ZadachiSix13;
const n = 20;
const m = 30;
type table = array [1..n,1..m] of integer;
var max, maxi, maxj:integer;
x:table;

 
procedure vvodD(var a:table);
	var i,j:integer;
	begin
		for i:=1 to n do
			for j:=1 to m do 
				a[i,j]:= (100 - random(200));
	end;

procedure vivodD(a:table);
	var i,j:integer;
	begin
		writeln();
		for i:=1 to n do
		begin
			writeln();
			for j:=1 to m do
				write(a[i,j]:4);
		end;
	end;

procedure maxElem(a:table; var max,maxi,maxj:integer);
var i, j:integer;
begin
	max:=a[1,1];
	maxi:=1;
	maxj:=1;
	for i:=1 to n do
		for j := 1 to m do
			if(a[i,j] > max) then
			begin
				max:=a[i,j];
				maxi:=i;
				maxj:=j;
			end;
end;

begin
	randomize;
	vvodD(x);
	writeln('Данна матрица');
	vivodD(x);
	maxElem(x, max, maxi, maxj);
	writeln();
	write('Максимальный элемент ');
	writeln(max);
	write('Строка ');
	writeln(maxi);
	write('Столбец ');
	writeln(maxj);
	writeln();
end.
