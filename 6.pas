Program ZadachiSix17;
const n = 100;
const m = 20;
type mass = array [1..n] of integer;
var a:mass;
match,disp:Real;
i:integer;
 
 
procedure vvodO(var a:mass);
	var i:integer;
	begin
		for i:=1 to n do
			a[i]:=(100 - random(200));
	end;

procedure vivodO(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to n do
			write(a[i]:4);
		writeln();
	end;

procedure matchWt(a:mass; var m:Real);
var i:integer;
begin
	for i:=1 to n do
		m:=m+a[i];
	m:=m/100;
end;

procedure dispercion(a:mass; m:Real; var d:Real);
	var i:integer;
begin
	for i:=1 to n do
		d:=d+sqr(a[i]-m);
	d:=d/100;
end;

begin
	randomize;
	for i:=1 to 3 do
	begin
		vvodO(a);
		write(i);
		writeln('-й массив');
		vivodO(a);
		matchWt(a,match);
		dispercion(a,match,disp);
		write('Математическое ожидание ');
		writeln(match);
		write('Дисперсия ');
		writeln(disp);
		writeln();
	end;
end.
