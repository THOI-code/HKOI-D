program D701;
var
	q : array[1..1000] of longint;
	head, tail : integer;
	s : string;
	n, i, flag : integer;
	operand : longint;
begin
	readln(n);
	head := 1;
	tail := 0;
	for i := 1 to n do
		begin
			readln(s);
			if s[2] = 'U' then //push
				begin
					val(copy(s, 6, length(s) - 5), operand, flag);
					inc(tail);
					q[tail] := operand;
				end
			else if s[2] = 'I' then //size
				begin
					writeln(tail - head + 1);
				end
			else if s[2] = 'R' then // front
				begin
					if tail - head + 1 = 0 then
						writeln('Empty')
					else
						writeln(q[head]);
				end
			else
				begin
					if tail - head + 1 = 0 then
						writeln('Cannot pop')
					else
						inc(head);
				end;
		end;
end.