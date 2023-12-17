Program pascal_file_text5;
var
   file1, file2 : text;
   max, min, s : int64;
begin
  assign(file1,'C:\Users\nikar\OneDrive\Рабочий стол\lab\input.txt');
  reset(file1);
  assign(file2,'C:\Users\nikar\OneDrive\Рабочий стол\lab\output.txt');
  rewrite(file2);
  readln(file1, max);
  min:=max;
  while not eof(file1) do begin
    readln(file1, s);
    if s > max then max:=s;
    if s < min then min:=s;
  end;
  writeln(file2, 'Максимум:');
  writeln(file2, max);
  writeln(file2, 'Минимум:');
  writeln(file2, min);
  close(file1);
  close(file2);
end.