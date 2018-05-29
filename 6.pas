Program ZadachiSix18;
const n = 10;
const m = 15;
type table = array [1..n,1..m] of integer;
type mass = array [1..n] of integer;
var x:table;
b:mass;
c:integer;
 
 
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

procedure vivodO(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to n do
			write(a[i]:4);
	end;

procedure biggerthenc(a:table; c:integer; var b:mass);
var i,j:integer;
begin
	for i:=1 to n do
	begin
		b[i]:=0;
		for j:=1 to m do
			if(a[i,j] > c) then
			begin
				b[i]:=a[i,j];
				break;
			end;
	end;
end;

begin
	randomize;
	c:=random(100);
	vvodD(x);
	writeln('Дан массив');
	vivodD(x);
	biggerthenc(x,c,b);
	writeln();
	write('Первые числа каждой строки большие ');
	writeln(c);
	vivodO(b);
	writeln();
end.
