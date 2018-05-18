Program ZadachiSix10;
const n = 20;
type mass = array [1..n] of Real;
var b,c:mass;
i:integer;

 
 
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
			writeln(a[i]);
	end;

function maximum(a:Real):Real;
	var x,func:Real;
	begin
		maximum := -32000;
		x:=-2;
		repeat
			func:=2*exp(a*x-5*sqr(x));
			x:=x+0.1;
			if(func > maximum) then
				maximum:=func;
		until x <> 2;
	end;

begin
	randomize;
	vvodO(b);
	writeln('Массив b');
	vivodO(b);
	writeln();
	for i:=1 to n do
		c[i]:=maximum(b[i]);
	writeln('Максимумы функции');
	vivodO(c);
	writeln();
end.
