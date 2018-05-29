
Program ZadachiSix23;
var max,min:Real; //type here smth
 
procedure minFuncArg(var max,min:Real);
var e,x,xmax,xmin:Real;
a,b,c,d:integer;
begin
	a:=random(100);
	c:=random(100);
	b:=random(100)+a+c;
	d:=random(100);
	e:=0.1;
	x:=-10;
	xmax:=10;
	max:=a*sqr(x)+b*sqr(x)+c*x+d;
	min:=a*sqr(x)+b*sqr(x)+c*x+d;
	while (x<=xmax) do
	begin
		if(max < a*sqr(x)+b*sqr(x)+c*x+d) then
		begin
			max:=a*sqr(x)+b*sqr(x)+c*x+d;
			xmax:=x;
		end
		else
		if(min > a*sqr(x)+b*sqr(x)+c*x+d) then
		begin
			min:=a*sqr(x)+b*sqr(x)+c*x+d;
			xmin:=x;
		end;
		x:=x+e;
	end;

	e:=0.01;
	xmax:=xmin+0.1;
	x:=xmin-0.1;
	min:=a*sqr(x)+b*sqr(x)+c*x+d;
	while ((x<=xmax) and (min > a*sqr(x)+b*sqr(x)+c*x+d)) do
	begin
		min:=a*sqr(x)+b*sqr(x)+c*x+d;
	end;
	x:=x+e;
	
	writeln();
	write('a = ');
	writeln(a);
	write('b = ');
	writeln(b);
	write('c = ');
	writeln(c);
	write('d = ');
	writeln(d);	
end; 

begin
	randomize;
	minFuncArg(max,min);
	write('Максимальное значение функции ');
	writeln(max);
	write('Минимальое значение функции ');
	writeln(min);

end.
