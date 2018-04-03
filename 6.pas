Program ZadachiSix6;
const n = 10;
m = 20;
type mass = array [1..n,1..m] of integer;
var x:mass;
y:array [1..n] of integer;
i:integer;
 
 

procedure vvod(var a:mass);
	var i,j:integer;
	begin
		for i:=1 to n do
			for j:=1 to m do 
				a[i,j]:= (100 - random(200));
	end;

procedure vivod(a:mass);
	var i,j:integer;
	begin
		writeln();
		for i:=1 to n do
		begin
			writeln();
			for j:=1 to m do
				write(a[i]:4);
		end;
	end;


procedure maxelt(a:mass, i);
	var j,max:integer;
	begin
		
		for j:=1 to m do
		begin
			if(a[imax] < a[i]) then
					imax:=i;
			trnsfr:=a[j];
			a[j]:=a[imax];
			a[imax]:=trnsfr;
		end; 
	end;

begin
	randomize();
	vvod(x);
	writeln('До сортировки');
	vivod(x);
	sort(x);
	writeln('После сортировки');
	vivod(x);
	writeln();
end.
