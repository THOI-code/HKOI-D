program D101;
var
	s : string;
begin
	readln(s);
	case s[1] of
		'2', '3' : writeln('Fixed');
		'5', '6', '9' : writeln('Mobile');
	end;
end.