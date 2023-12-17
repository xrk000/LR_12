Program pascal_file_text3;
var
   filetext : text;
   s : string;
begin
assign(filetext,'C:\Users\nikar\OneDrive\Рабочий стол\lab\text3.txt');
append(filetext);
writeln('Введите строку: ');
readln(s);
write(filetext, s);
close(filetext);
end.