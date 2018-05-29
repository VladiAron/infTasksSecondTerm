Program ZadachiSix16;
const n = 15;
const m = 20;
type table = array [1..n,1..m] of integer;
type mass = array [1..m] of integer;
var a:table;
b,c:mass;

 
 
procedure vvodO(var a:mass; num:integer);
	var i:integer;
	begin
		for i:=1 to num do
			a[i]:=(100 - random(200));
	end;

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

procedure vivodO(a:mass; num:integer);
	var i:integer;
	begin
		writeln();
		for i:=1 to num do
		begin
			write(a[i]);
			write(' ');
		end;
	end;

procedure job(a:table; b:mass; var c:mass);
var i,j:integer;
begin
	for i:=1 to n do
		for j:=1 to m do
			c[i]:=c[i] + a[i,j]*b[j];
end;

begin
	randomize;
	vvodO(b, m);
	vvodD(a);
	writeln('Даны матрицы');
	writeln('А');
	vivodD(a);
	writeln();
	writeln('B');
	job(a,b,c);
	vivodO(b,m);
	writeln();
	writeln('Результат');
	vivodO(c,n);
end.
