Program ZadachiSix6;
const n = 10;
const m = 20;
type table = array [1..n,1..m] of integer;
type mass = array [1..n] of integer;
var x:table;
y:mass;
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
				write(a[i,j]:4);
		end;
	end;

procedure vivodO(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to n do
			writeln(a[i]);
	end;

function maxElt(a:table; i:integer):integer;
	var j:integer;
	begin
		maxElt:=a[i,1];
		for j:=1 to m do
			if(maxElt < a[i,j]) then
				maxElt:=a[i,j];	
	end;

begin
	randomize();
	vvodD(x);
	write('Дан массив');
	vivodD(x);
	for i:=1 to n do
		y[i]:=maxElt(x,i);
	writeln(); 
	writeln();
	writeln('Максимальные элементы каждой строки');
	vivodO(y);
	writeln();
end.
