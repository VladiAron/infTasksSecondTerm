Program ZadachiL1;
const n = 10;
type mass = array [1..n] of integer;
var x, evenNums:mass;
count:integer; 
 
procedure vvodO(var a:mass; num:integer);
	var i:integer;
	begin
		for i:=1 to num do
			a[i]:=(100 - random(200));
	end;

procedure vivodO(a:mass; num:integer);
	var i:integer;
	begin
		writeln();
		for i:=1 to num do
			write(a[i]:4);
	end;

procedure countAllEvenElts(var b:mass; a:mass; var count:integer);
var i:integer;
begin
	for i:=1 to n do
		if(a[i] mod 2 = 0)then
		begin
			count:=count+1;
			b[count]:=i;
		end;
end;

begin
	randomize;
	vvodO(x,n);
	writeln('Данн массив');
	vivodO(x,n);
	countAllEvenElts(evenNums,x,count);
	writeln();
	writeln('Номера четных эллементов массива');
	vivodO(evenNums, count);
	writeln();
end.
