Program ZadachiSix11;
const n = 20;
const m = 20;
type table = array [1..n,1..m] of integer;
var plus,minus:integer;
mass:table;
 

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

procedure count(a:table; var p,m:integer);
	var i,j:integer;
	begin
		p:=0;
		m:=0;
		for i:=1 to n do
			for j:=1 to n do
			begin
				if(a[i,j] > 0)then
					p:=p+1;

				if (a[i,j] < 0) then
					m:=m+1;
			end;
	end;

begin
	randomize;
	vvodD(mass);
	writeln('Дан массив');
	vivodD(mass);
	count(mass, plus, minus);
	writeln();
	write('Количество положительных элементов в массиве: ');
	writeln(plus);
	write('Количество отрицательных элементов в массиве: ');
	writeln(minus);
	writeln();
end.
