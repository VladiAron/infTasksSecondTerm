Program ZadachiSix5;
const n = 20;
type mass = array [1..n] of integer;
var x:mass;
i:integer;
 
 

procedure vvod(var a:mass);
	var i:integer;
	begin
		for i:=1 to n do
		while (a[i] = 0) do
			a[i]:= (100 - random(200));
	end;

procedure vivod(a:mass);
	var i:integer;
	begin
		writeln();
		for i:=1 to n do
			write(a[i]:4);
		writeln();
	end;


procedure sort(var a:mass);
	var i,j,trnsfr,imax:integer;
	begin
		
		for j:=1 to n-1 do
		begin
			imax:=j;
			for i:=j to n do
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
