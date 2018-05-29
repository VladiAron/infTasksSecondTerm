Program ZadachiSix20;
var x:Real; //type here smth
 
procedure minFuncArg(var xmin:Real);
var e,min,x,xmax:Real;
a:integer;
begin
	a:=random(100) - 50;
	e:=0.2;
	x:=0.2;
	xmax:=10;
	min:=a*x-ln(x);
	while (x<=xmax) do
	begin
		if(min > a*x-ln(x)) then
		begin
			min:=a*x-ln(x);
			xmin:=x;
		end;
		x:=x+e;
	end;
	e:=0.01;
	xmax:=xmin+0.2;
	x:=xmin-0.2;
	min:=a*x-ln(x);
	while ((x<=xmax) and (min > a*x-ln(x))) do
	begin
		min:=a*x-ln(x);
		xmin:=x;
		x:=x+e;
	end;
	writeln();
	write('a = ');
	writeln(a);
	
end; 

begin
	randomize;
	minFuncArg(x);
	write('Аргумент при котором функция принимает минимальное значение ');
	writeln(x);
end.
