Program pascal_file_text6;
var
   file1, file2 : text;
   s : string;
   key, i : integer;
begin
  assign(file1,'C:\Users\nikar\OneDrive\Рабочий стол\lab\text6.1.txt');
  reset(file1);
  assign(file2,'C:\Users\nikar\OneDrive\Рабочий стол\lab\text6.2.txt');
  rewrite(file2);
  while not eof(file1) do begin
    readln(file1, s);
    if s <> '' then writeln(file2, s);
  end;
  close(file1);
  Erase(file1);
  close(file2);
  rename(file2, 'C:\Users\nikar\OneDrive\Рабочий стол\lab\text6.1.txt');
end.