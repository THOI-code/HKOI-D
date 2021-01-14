program D308;
var
	s, s1, t : string;
	ans2, ans1 : integer;
begin
	readln(s1);
	readln(t);
	ans1 := 0;
	ans2 := 0;
	s := s1;
	while pos(t, s) <> 0 do
		begin
			delete(s, 1, pos(t, s));
			inc(ans1);
		end;
	s := s1;
	while pos(t, s) <> 0 do
		begin
			delete(s, 1, pos(t, s) + length(t) - 1);
			inc(ans2);
		end;
	writeln(ans1);
	writeln(ans2);	
end.