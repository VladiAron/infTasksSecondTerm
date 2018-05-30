Program ZadachiL2; //Вставить 100 перед 5-м эл-том массива
const n = 20;
type mass = array [1..n] of integer;
var x:mass;
num:integer;
procedure vvodO(var a:mass; num:integer);
	var i:integer;
	begin
		for i:=1 to num do
			a[i]:=random(10);
	end;

procedure vivodO(a:mass; num:integer);
	var i:integer;
	begin
		writeln();
		for i:=1 to num do
			write(a[i]:4);
	end;

procedure moveFrom(var a:mass; k:integer);
var i:integer;
begin
	for i:=n downto k do
		a[i]:=a[i-1];
end;

procedure input(var a:mass; inp:integer);
var i,count:integer;
begin
	count:=1;
	for i:=1 to n do
		if(a[i] mod 3 = 0) then
		begin
			moveFrom(a,i+1+count);
			a[i+count]:=inp;
		end;
end;


begin
	randomize;
	writeln('Введите число');
	readln(num);
	vvodO(x,n);
	writeln('Данн массив');
	vivodO(x,n);
	input(x,num);
	writeln();
	writeln('После вставки');
	vivodO(x,n);
	writeln();
end.
