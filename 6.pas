Program ZadachiSix3;
const m = 10;
const n = 4;
type mass = array [1..n] of real;
var matrix:mass;
k:integer;
func:real; 
 

procedure vvod(var a:mass);
	var i:integer;
	begin
		for i:=1 to n do
			a[i]:= (4 - random(8))*pi;
	end;

procedure vivod(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to n do
			write(a[i]:4);
		writeln();
	end;


procedure summ(var a:mass; );
	var j:integer;
	begin
		
		for j:=1 to n-1 do
		begin
			min:=a[j];
			imin:= j;
			for i:=j to n do
				if(a[i]<min) then
				begin
					min := a[i];
					imin := i;
				end;
			buf := a[j];
			a[j]:= min;
			a[imin] := buf;

		end;
	end;

begin
	randomize();
	vvod(matrix);
	writeln('Было:');
	vivod(matrix);
	sort(matrix);
	writeln('Стало:');
	vivod(matrix);
	writeln();
end.
