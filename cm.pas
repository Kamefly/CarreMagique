//ALGORITHME
//
//CONSTANTES:
//maxi = 7
//
//VARIABLES
//cr:tableau [1..maxi,1..maxi] d'entier
//i,j,compteur: ENTIER



program cm;

uses crt;

const
maxi=7;	
var
cr:array[1..maxi,1..maxi] of integer;
i,j,compteur:integer;
	
begin
clrscr;
	for i:=1 to maxi do
	begin
		for j:=1 to maxi do
		begin
			cr[i,j]:=0;
		end;
	end;
i:=(maxi div 2);
j:=(maxi div 2)+1;
cr[i,j]:=1;
	for compteur:=2 to (maxi*maxi) do
	begin
		if j+1>maxi then
			begin
			j:=0;
			end;
		if i-1=0 then
			begin
			i:=maxi+1;
				end;
			i:=i-1;
			j:=j+1;
			if cr[i,j]<>0 then
			begin
				while cr[i,j]<>0 do
					begin
						if j-1=0 then		
							begin
							j:=maxi+1;
							end;
							if i-1=0 then
							begin
							i:=maxi+1;
							end;
							i:=i-1;
							j:=j-1;
					end;
			end;
		cr[i,j]:=compteur;
	end;
	for i:=1 to maxi do
	begin
		for j:=1 to maxi do
			begin
				if cr[i,j]<10 then
					begin
						write('0',cr[i,j],' ');
					end
				else
					begin
						write(cr[i,j],' ');
					end;
			end;
				writeln();
	end;
readln;
end.