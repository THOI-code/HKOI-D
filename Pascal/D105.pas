program D105;
var
	y1, m1, d1, y2, m2, d2 : integer;
begin
	readln(y1, m1, d1);
	readln(y2, m2, d2);
	if (y1 < y2) or (y1 = y2) and (m1 < m2) or (y1 = y2) and (m1 = m2) and (d1 < d2) then writeln('Before')
	else if (y1 = y2) and (m1 = m2) and (d1 = d2) then writeln('Same')
	else writeln('After');
end.