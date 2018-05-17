Program ZadachiSix6;
const n = 10;
const m = 20;
type table = array [1..n,1..m] of integer;
type mass = array [1..n] of integer;
var 
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
		writeln();
		for i:=1 to n do
			writeln(a[i]);
	end;

procedure maxSummaElem(a:table);
var
	i,j,imax,max,sum:integer;
	begin
		max:=-32000;
		for i:=1 to n do 
			begin
				sum:=0;
				for j:=1 to m do 
					sum := sum + a[i,j];
				if(sum > max) then
				begin
					max:=sum;
					imax:=i;
				end;
			end;
		write('Номер строки с самой большой суммой элементов: ');
		writeln(imax);
		write('Суммв элементов этой строки: ');
		writeln(max);
	end;

begin
	randomize;
	vvodD(x);
	writeln('Дан массив');
	vivodD(x);
	writeln();
	maxSummaElem(x);
	writeln();
end.
