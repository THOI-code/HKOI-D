program D306; //This problem sucks :( unclear statement.
var
	s, username, hostname : string;
	i, at, usernamelength, hostnamelength : integer;
begin
	readln(s);
	at := 0;
	for i := 1 to length(s) do
		begin
			if s[i] = '@' then
				inc(at);
		end;
	if at < 1 then
		begin
			writeln('Invalid');
			exit;
		end;
	username := copy(s, 1, pos('@', s) - 1);
	hostname := copy(s, pos('@', s) + 1, length(s) - pos('@', s));
	usernamelength := 0;
	for i := 1 to length(username) do
		begin
			if (ord(username[i]) >= ord('0')) and (ord(username[i]) <= ord('9')) or 
			(ord(username[i]) >= ord('A')) and (ord(username[i]) <= ord('Z')) or 
			(ord(username[i]) >= ord('a')) and (ord(username[i]) <= ord('z')) or 
			(ord(username[i]) = ord('+')) or 
			(ord(username[i]) = ord('.')) then
				inc(usernamelength)
			else
				begin
					writeln('Invalid');
					exit;
				end;
		end;
	hostnamelength := 0;
	for i := 1 to length(hostname) do
	begin
		if (ord(hostname[i]) >= ord('0')) and (ord(hostname[i]) <= ord('9')) or 
		(ord(hostname[i]) >= ord('A')) and (ord(hostname[i]) <= ord('Z')) or 
		(ord(hostname[i]) >= ord('a')) and (ord(hostname[i]) <= ord('z')) or 
		(ord(hostname[i]) = ord('-')) or 
		(ord(hostname[i]) = ord('.')) then
			inc(hostnamelength)
		else
			begin
				writeln('Invalid');
				exit;
			end;
	end;
	if (username[1] = '.') or (username[length(username)] = '.') or (pos('..', username) <> 0) or (usernamelength = 0) then
		begin
			writeln('Invalid');
			exit;
		end;	
	if (pos('-.', hostname) <> 0) or (pos('.-', hostname) <> 0) or (pos('.', hostname) = 0) or (hostname[1] = '.') or (hostname[length(hostname)] = '.') or (pos('..', hostname) <> 0) or (hostnamelength < 3) then
		begin
			writeln('Invalid');
			exit;
		end;
	writeln('Valid');
	readln;
end.	