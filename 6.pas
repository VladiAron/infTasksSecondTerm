Program ZadachiSix14;
const n = 10;
const m = 15;
type table = array [1..n,1..m] of integer;
var x:table;
 
 
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

procedure job(var a:table);
var i,j,max,maxi,maxj:integer;
begin
	max:=a[1,1];
	maxi:=1;
	maxj:=1;
	for i:=1 to n do
		for j:=1 to n do
			if a[i,j]>max then
			begin
				max:=a[i,j];
				maxi:=i;
				maxj:=j;
			end;
	for i:=1 to n do
		a[i,maxj]:=0;
	for j:=1 to m do
		a[maxi,j]:=0;

end;

begin
	randomize;
	vvodD(x);
	writeln('Данна матрица ');
	vivodD(x);
	writeln();
	job(x);
	writeln('Матрица после изменений ');
	vivodD(x);
	writeln();
end.
