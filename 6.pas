Program ZadachiSix21;
var x:Real; //type here smth
 
procedure minFuncArg(var maxx:Real);
var e,max,x,xmax:Real;
a,b,c:integer;
begin
	a:=random(100);
	b:=random(100);
	c:=random(100);
	e:=0.1;
	x:=-2;
	xmax:=2;
	max:=a*exp(b*x+c*sqr(x));
	while (x<=xmax) do
	begin
		if(max < a*exp(b*x+c*sqr(x))) then
		begin
			max:=a*exp(b*x+c*sqr(x));
			maxx:=x;
		end;
		x:=x+e;
	end;
	e:=0.005;
	xmax:=maxx+0.2;
	x:=maxx-0.2;
	max:=a*exp(b*x+c*sqr(x));
	while ((x<=xmax) and (max > a*exp(b*x+c*sqr(x)))) do
	begin
		if(max < a*exp(b*x+c*sqr(x))) then
		begin
			max:=a*exp(b*x+c*sqr(x));
			maxx:=x;
		end;
		x:=x+e;
	end;
	writeln();
	write('a = ');
	writeln(a);
	write('b = ');
	writeln(b);
	write('c = ');
	writeln(c);
	
end; 

begin
	randomize;
	minFuncArg(x);
	write('Аргумент при котором функция принимает максимальное значение ');
	writeln(x:4);
end.
