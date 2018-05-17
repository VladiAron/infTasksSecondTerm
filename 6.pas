Program ZadachiSix6;
const n = 10;
const m = 15;
type table = array [1..m,1..m] of integer;
type mass = array [1..n] of integer;
var x,y:table;//type here smth
 
 
procedure vvodO(var a:mass);
	var i:integer;
	begin
		for i:=1 to n do
			a[i]:=(100 - random(200));
	end;

procedure vvodD(k,z:integer;  var a:table);
	var i,j:integer;
	begin
		for i:=1 to k do
			for j:=1 to z do 
				a[i,j]:= (100 - random(200));
	end;

procedure vivodD(k,z:integer;  a:table);
	var i,j:integer;
	begin
		writeln();
		for i:=1 to k do
		begin
			writeln();
			for j:=1 to z do
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

procedure tvister(a:table; var b:table);
var i,j:integer;
begin
	for i:=1 to n do
		for j:=1 to m do
			b[j,i]:=a[i,j];
end;

begin
	randomize;
	vvodD(n,m,x);
	write('Дан массив');
	vivodD(n,m,x);
	writeln();
	tvister(x,y);
	write('Получился массив');
	vivodD(m,n,y);
	writeln();

end.
