Program ZadachiSix24;
const
	n = 50;

type mass = array[1..n] of Real;
var count:integer;
z:mass;

function func(x:Real; a,b,y,f:integer): Real;
begin
	func:= a*exp(-1*b*x)*sin(x*y+f);
end;
 
procedure maxFunc(var z:mass; var count:integer);
var x:Real;
a,b,y,f:integer;
begin
	a:=random(100);
	b:=random(100);
	y:=random(100);
	f:=random(100);
	count:=0;
	x:=0;
	while( (not ((func(x,a,b,y,f) > func(x+0.1,a,b,y,f)) and (func(x,a,b,y,f) > func(x-0.1,a,b,y,f)))) and (x <= 5) ) do
	 	x:=x+0.1;

	while x <= 5 do
	begin
		if((func(x,a,b,y,f) > func(x+0.1,a,b,y,f)) and (func(x,a,b,y,f) > func(x-0.1,a,b,y,f)) ) then
		begin
			count:=count + 1;
			z[count+1]:=func(x,a,b,y,f);
		end;
		if ((func(x,a,b,y,f) < func(x+0.1,a,b,y,f)) and (func(x,a,b,y,f) < func(x-0.1,a,b,y,f)) ) then
		begin
			count:=count + 1;
			z[count]:=func(x,a,b,y,f);
		end;
		x:=x+0.1;
	end;

end;

procedure vivod(a:mass; num:integer);
	var i:integer;
begin
	for i:=1 to num do
		write(a[i]);
		write(' ');
end;

begin
	randomize;
	maxFunc(z,count);
	writeln('Максимальные значения функции ');
	vivod(z,count);
	writeln();

end.
