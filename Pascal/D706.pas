program D701;
const
	mxSize = 10000;
var
	q : array[1..mxSize] of longint;
	head, tail : integer;
	s : string;
	n, i, flag, operand, count : longint;
begin
	readln(n);
	head := 1;
	tail := 0;
	count := 0;
	for i := 1 to n do
		begin
			readln(s);
			if s[2] = 'U' then //push
				begin
					val(copy(s, 6, length(s) - 5), operand, flag);
					tail := tail mod mxSize + 1;
					q[tail] := operand;
					inc(count);
				end
			else if s[2] = 'I' then //size
				begin
					writeln(count);
				end
			else if s[2] = 'R' then // front
				begin
					if count = 0 then
						writeln('Empty')
					else
						writeln(q[head]);
				end
			else
				begin
					if count = 0 then
						writeln('Cannot pop')
					else
						begin
							head := head mod mxSize + 1;
							dec(count);
						end;
				end;
		end;
end.