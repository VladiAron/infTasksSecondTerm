Program ZadachiL2; //Последний отрицательный эллемент массива
const n = 20;
type mass = array [1..n] of integer;
var x:mass;
elem:integer; 
 
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

procedure lastOtr(a:mass; var otr:integer);
var i:integer;
begin
	for i := n downto 1 do
	begin
		if(a[i] < 0) then
		begin
			otr:=a[i];
			break;
		end;
	end;
end;

begin
	randomize;
	vvodO(x,n);
	writeln('Данн массив');
	vivodO(x,n);
	lastOtr(x,elem);
	writeln();
	write('Последний отрицательный эллемент ');
	writeln(elem);
	writeln();
end.
