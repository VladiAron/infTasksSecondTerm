Program ZadachiSix6;
const n = 10;
const m = 20;
type table = array [1..n,1..m] of integer;
type mass = array [1..n] of integer;
var x:table;
i:integer;
 
 
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
				write(a[i,j]:5);
		end;
	end;

procedure vivodO(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to n do
			writeln(a[i]);
	end;

function average(a:table; j:integer):Real;
	var i,count:integer;
	begin
	average:=0;
	count:=0;
	for i:=1 to n do
		if a[i,j] > 0 then
		begin
			average := average + a[i,j];
			count:=count + 1;
		end;
	average:= average/count;
	end;

begin
	randomize;
	vvodD(x);
	write('Дан массив');
	vivodD(x);
	writeln();
	writeln('Среднее арифметическое каждого столбца');
	for i:=1 to m do
		writeln(average(x,i):5);
	writeln();
end.


