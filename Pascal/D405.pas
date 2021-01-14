program D405;
const 
	mxSize = 21;
var
	n, m, i, j, r, c : integer;
	s : string;
	maze : array[1..mxSize, 1..mxSize] of char; 	 
begin
	readln(n, m);
	for i := 1 to n do
		begin
			readln(s);
			for j := 1 to m do
				maze[i, j] := s[j];
		end;
	maze[n, m + 1] := 'E';
	for i := n downto 1 do
		for j := m downto 1 do	
			begin
				if maze[i, j] = '#' then
					continue;
				if (maze[i + 1, j] = 'E') or (maze[i + 1, j] = 'S') then
					maze[i, j] := 'S';
				if (maze[i, j + 1] = 'E') or (maze[i, j + 1] = 'S') then
					maze[i, j] := 'E';
			end;
	r := 1;
	c := 1;
	for i := 1 to n + m - 2 do
		begin
			write(maze[r, c]);
			if maze[r, c] = 'S' then
				inc(r)
			else
				inc(c);
		end;
end.