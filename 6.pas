Program ZadachiSix4;
const n = 20;
type mass = array [1..n] of Real;
var z,x:mass;
i:integer;
 
 

procedure vvod(var a:mass);
	var i:integer;
	begin
		for i:=1 to n do
		while (a[i] = 0) do
			a[i]:= (100 - random(200));
	end;

procedure vivod(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to n do
		begin
			write(a[i]:4);
			write(' ');
		end;
		writeln();
	end;


function summ(a:mass; i:integer):Real;
	var j:integer;
	begin
		summ:=1;
		for j:=1 to n do
			summ:=summ*(1+1/(exp(j)+a[i])); 
	end;

begin
	randomize();
	vvod(x);
	vivod(x);
	writeln();
	for i:=1 to n do
		z[i]:=summ(x, i);
	writeln('Массив полученных значений');
	vivod(z);
	writeln();
end.
