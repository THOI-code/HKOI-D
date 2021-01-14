program D205;
uses sysutils;
var
	tempn, n, i : longint;
	ans : string;
begin
	readln(n);
	ans := inttostr(n) + '=';
	i := 2;
	tempn := n;
	while i * i <= n do
		begin
			while tempn mod i = 0 do
				begin
					ans := ans + inttostr(i) + '*';
					tempn := tempn div i;
				end;
			inc(i);
		end;
	if tempn > 1 then
		ans := ans + inttostr(tempn);
	if ans[length(ans)] = '*' then
		delete(ans, length(ans), 1);
	writeln(ans);
end.