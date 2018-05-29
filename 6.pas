Program ZadachiSix22;
const n = 10;
const m = 10;
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

procedure perestanovka(var a:table; num,j:integer);
var tr:integer;
begin
	tr:=a[num,num];
	a[num,num]:=a[num,j];
	a[num,j]:=tr;
end;

procedure minp(var a:table);
var i,j,jmin,min:integer;
begin
	for i:=1 to n do 
		begin
			min:=a[i,1];
			jmin:=1;
			for j:=1 to n do
				if(min > a[i,j]) then
				begin
					jmin:=j;
					min:=a[i,j];
				end;
			perestanovka(a,i,jmin);
		end;
end;

begin
	randomize;
	vvodD(x);
	writeln('Данн массив');
	vivodD(x);
	minp(x);
	writeln();
	writeln('После преобразований');
	vivodD(x);
	writeln();
end.
