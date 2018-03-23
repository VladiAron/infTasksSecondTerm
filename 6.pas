Program ZadachiSix2;
const n = 10;
type mass = array [1..n] of integer;
var matrix:mass; 
 

procedure vvod(var a:mass);
	var i:integer;
	begin
		for i:=1 to n do
			a[i]:=50 - random(100);
	end;

procedure vivod(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to n do
			write(a[i]:4);
		writeln();
	end;


procedure sort(var a:mass);
	var i,j,imin,min,buf:integer;
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
