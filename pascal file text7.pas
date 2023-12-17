Program pascal_file_text7;
var
  input, output : text; 
  sum, count, n : integer;
  c : string;
begin
  assign(input, 'C:\Users\nikar\OneDrive\Рабочий стол\lab\z3.in');
  assign(output, 'C:\Users\nikar\OneDrive\Рабочий стол\lab\z3.out');
  reset(input);
  rewrite(output);
  while not eof(input) do begin
    readln(input, c);
    val(c, n, count);
    sum:=0;
    for i:integer:=1 to n do begin
      count:=0;
      for j:integer:=1 to i do
        if (i mod j) = 0 then inc(count);  
      if count = 5 then 
        sum:=sum+i;
      str(sum, c);
    end;
    writeln(output, c);
  end;
  close(input);
  close(output);
end.