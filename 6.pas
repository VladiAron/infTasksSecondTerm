Program ZadachiSix4;
const n = 20;
type mass = array [1..n] of Real;
var z,x:mass;
 
 

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


function summ(a:mass):Real;
	var i,k:integer;
	b:mass;
	begin
		summ:=0;
		for i:=1 to n do
		begin
			for k:=1 to n do
				b[i]:=sin(exp(k*(ln(a[i])))/k); 
			summ:=summ+b[i];
		end;
	end;

begin
	randomize();
	vvod(matrix);
	writeln('Было:');
	vivod(matrix);
	summ(matrix);
	writeln('Значение функции: ');
	writeln(summ(matrix):6);
	writeln();
end.
