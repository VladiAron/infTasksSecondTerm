Program ZadachiSix3;
const m = 10;
const n = 4;
type mass = array [1..m] of real;
var matrix:mass;
 
 

procedure vvod(var a:mass);
	var i:integer;
	begin
		for i:=1 to m do
			
			a[i]:= (random(8))*pi;
	end;

procedure vivod(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to m do
			write(a[i]:4);
		writeln();
	end;


function summ(a:mass):real;
	var i,k:integer;
	b:mass;
	begin
		summ:=0;
		for i:=1 to m do
		begin
			for k:=1 to n do
				b[i]:=sin((a[i]*k)/k); 
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
