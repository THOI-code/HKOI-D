program D202;
var
	factors : array [0..10000] of longint; 
	n : longint;
	i, cnt : integer;
begin
	readln(n);
	i := 1;
	cnt := 0;
	while i * i <= n do
		begin
			if n mod i = 0 then
				begin
					factors[cnt] := i;
					inc(cnt);
				end;
			inc(i);
		end;
	for i := 0 to cnt - 1 do writeln(factors[i], ' ');
	for i := cnt - 1 downto 0 do if factors[i] * factors[i] <> n then writeln(n div factors[i]);
end.