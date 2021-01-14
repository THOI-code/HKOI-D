program D108;
var
	a, b, c : integer;
	op1, op2, sp : char;
begin
	readln(a, sp, op1, sp, b, sp, op2, sp, c);
	case op1 of 
		'+' : begin
			case op2 of 
				'+' : begin
					writeln(a + b + c);
				end;
				'-' : begin
					writeln(a + b - c);
				end;
				'*' : begin
					writeln(a + b * c);
				end;
			end;
		end;
		'-' : begin
			case op2 of 
				'+' : begin
					writeln(a - b + c);
				end;
				'-' : begin
					writeln(a - b - c);
				end;
				'*' : begin
					writeln(a - b * c);
				end;
			end;
		end;
		'*' : begin
			case op2 of 
				'+' : begin
					writeln(a * b + c);
				end;
				'-' : begin
					writeln(a * b - c);
				end;
				'*' : begin
					writeln(a * b * c);
				end;
			end;
		end;
	end;
end.