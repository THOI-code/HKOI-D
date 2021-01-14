program D307;
var
	mat : array[0..2, 0..2] of char;
	i, j : integer;
	t : string;
	full : boolean;
begin
	full := true;
	for i := 0 to 2 do
		begin
				readln(t);
			for j := 0 to 2 do
				begin
					mat[i, j] := t[j + 1];
					if t[j + 1] = '.' then full := false;
				end;
		end;
	if (mat[0][0] = mat[1][1]) and (mat[1][1] = mat[2][2]) and (mat[0][0] <> '.') then
		writeln(mat[0][0], ' wins')
	else if (mat[2][0] = mat[1][1]) and (mat[1][1] = mat[0][2]) and (mat[2][0] <> '.') then
		writeln(mat[2][0], ' wins')
	else if (mat[0][0] = mat[0][1]) and (mat[0][1] = mat[0][2]) and (mat[0][0] <> '.') then
		writeln(mat[0][0], ' wins')
	else if (mat[1][0] = mat[1][1]) and (mat[1][1] = mat[1][2]) and (mat[1][0] <> '.') then
		writeln(mat[1][0], ' wins')
	else if (mat[2][0] = mat[2][1]) and (mat[2][1] = mat[2][2]) and (mat[2][0] <> '.') then
		writeln(mat[2][0], ' wins')
	else if (mat[0][0] = mat[1][0]) and (mat[1][0] = mat[2][0]) and (mat[0][0] <> '.') then
		writeln(mat[0][0], ' wins')
	else if (mat[0][1] = mat[1][1]) and (mat[1][1] = mat[2][1]) and (mat[0][1] <> '.') then
		writeln(mat[0][1], ' wins')
	else if (mat[0][2] = mat[1][2]) and (mat[1][2] = mat[2][2]) and (mat[0][2] <> '.') then
		writeln(mat[0][2], ' wins')
	else
		if full then
			writeln('Draw')
		else
			writeln('Not ended');
	readln;
end.