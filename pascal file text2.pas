var
   filetext: text;
   a:string;
   n, k:integer;
begin
assign(filetext,'C:\Users\nikar\OneDrive\Рабочий стол\lab\text2.txt');
rewrite(filetext);
writeln('Введите n и k: ');
readln(n, k);
for i:integer:=1 to n do begin
    for j:integer:=1 to k do
      write(filetext, '*');
    writeln(filetext, '');
end;
close(filetext);
end.