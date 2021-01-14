program D801;
uses strutils;
const
	mxSize = 100000;
var
	n, q, i, query : longint;
	a : array[1..mxSize] of longint;
function ifthen(b : boolean; s1, s2 : string) : string;
begin
	if b then 
		ifthen := s1
	else
		ifthen := s2;
end;
function b_search(query : longint) : boolean;
var
	l, r, m : longint;
begin
	l := 1;
	r := n;
	while r >= l do
		begin
			m := l + (r - l) div 2;
			if a[m] = query then
				begin
					b_search := true;
					exit;
				end
			else if a[m] < query then
				l := m + 1
			else
				r := m - 1;
		end;
	b_search := false;
end;
begin
	readln(n, q);
	for i := 1 to n do
		read(a[i]);
	for i := 1 to q do 
		begin
			read(query);
			writeln(Ifthen(b_search(query), 'Yes', 'No'));
		end;
end.