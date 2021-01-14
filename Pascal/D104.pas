program D104;
var
	a, b, c : integer;
begin
	readln(a, b, c);
	if b * b - 4 * a * c < 0 then writeln('None');
	if b * b - 4 * a * c = 0 then writeln(-b / 2 / a:0:3);
	if b * b - 4 * a * c > 0 then 
		if a > 0 then writeln((- b - sqrt(b * b - 4 * a * c)) / 2 / a:0:3, ' ', (- b + sqrt(b * b - 4 * a * c)) / 2 / a:0:3)
		else writeln((- b + sqrt(b * b - 4 * a * c)) / 2 / a:0:3, ' ', (- b - sqrt(b * b - 4 * a * c)) / 2 / a:0:3);
	readln;
end.