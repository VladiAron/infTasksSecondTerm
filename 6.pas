Program ZadachiSix15;
const n = 20;
type mass = array [1..n] of integer;
var a:mass;
z:Real;
 
 
procedure vvodO(var a:mass);
	var i:integer;
	begin
		for i:=1 to n do
			a[i]:=(100 - random(200));
	end;

procedure vivodO(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to n do
			write(a[i]:4);
	end;

procedure func(a:mass; var z:Real);
var i,j:integer;
b,pr:Real;
begin
	z:=0;
	b:=0;
	pr:=1;
	for i:=1 to n do
	begin
		pr:=1;
		for j := 0 to 10 do
		begin
			pr:=pr*((a[i]+b)/2);
			b:=b+0.1;
		end;
		z:=z+a[i]*pr;
	end;
end;

begin
	randomize;
	vvodO(a);
	writeln('Массив для рассчетов');
	vivodO(a);
	func(a,z);
	writeln();
	write('Значение функции ');
	writeln(z:5);
	writeln();
end.
