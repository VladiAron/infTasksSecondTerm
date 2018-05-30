Program ZadachiSix12;
const n = 20;
const m = 20;
type table = array [1..n,1..m] of integer;
type mass = array [1..n] of integer;
var y:mass;
x:table;
 
 
procedure vvodO(var a:mass);
	var i:integer;
	begin
		for i:=1 to n do
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

procedure vivodO(a:mass);
	var i:integer;
	begin
		for i:=1 to n do
			write(a[i]:4);
	end;

procedure countOfPol(a:table; var b:mass);
	var i,j:integer;
	begin
		for j:=1 to n do
		begin
			b[j]:=0;
			for i:=1 to n do
				if (a[i][j] > 0 ) then
					b[j]:=b[j] + 1; 
		end;
	end;


begin
	randomize;
	vvodD(x);
	writeln();
	writeln('Данна матрица ');
	vivodD(x);
	countOfPol(x,y);
	writeln();
	writeln('Количество положительных элементров в столбцах ');
	vivodO(y);
	writeln();

end.
