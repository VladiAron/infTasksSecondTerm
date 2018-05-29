Program ZadachiSix19;
const n = 5;
const m = 10;
type table = array [1..n,1..m] of integer;
type mass = array [1..n] of integer;
var a:table;
y:mass;
x:integer;
 
 
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

procedure polinom(a:table; x:integer; var b:mass);
var i,j:integer;
begin
	for i:=1 to n do
	begin
		b[i]:=0;
		for j:=1 to m do
			b[i]:=b[i]*x+a[i,j];
		write('Значение полинома ');
		writeln(b[i]);
	end;
end;

begin
	randomize;
	x := random(100);
	vvodD(a);
	write('Массив коэффициентов');
	vivodD(a);
	writeln();
	write('x = ');
	writeln(x);
	polinom(a,x,y);
	writeln();
end.
