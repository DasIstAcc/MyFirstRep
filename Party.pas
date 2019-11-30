uses GraphABC;
var
  a, c: integer;

begin
  for var j := 1 to 10000 do 
  begin
    for var i := 1 to 360 do
    begin
      a := Trunc((150 * Sin(-i * 10 / Pi)));
      c := Trunc((150 * Cos(-i * 10 / Pi)));
      Circle(300 + c, 300 + a, Random(100));
      a := Trunc((100 * Sin(i / Pi)));
      c := Trunc((100 * Cos(i / Pi)));
      Circle(600 - c, 400 - a, Random(100));
      a := Trunc((65 * Sin(-i / Pi)));
      c := Trunc((65 * Cos(-i / Pi)));
      Circle(800 - (c + i), 200 - (a - i), Random(100));
      a := Trunc((55 * Sin(i / Pi)));
      c := Trunc((55 * Cos(i / Pi)));
      Circle(900 - (c * 2), 500 - (a * 2), Random(100));
      a := Trunc((65 * Sin(i * i / Pi / 100)));
      c := Trunc((65 * Cos(i * i / Pi / 100)));
      Circle(800 - (c + 5), 200 - (a - 5), Random(100));
      //if (i < 10) then Circle(500 + c,500 + a,60)
      //else Circle(100,100,100);
      //RoundRect(500,350,500,100,i * i,i * i);
      SetBrushColor(RGB((Random(100)) * 54, (i + j) * 1, (i + j) * 32));
      SetPenColor(RGB((i + j) * 5, (i + j) * 10, (Random(100)) * 54));
      Sleep(55);
      if i mod 1 = 0 then
        ClearWindow();
      //RoundRect(1000,350,900,100,i * i * i,i * i);
      SetBrushColor(RGB((i + j) * 7, (i + j) * 35, (i + j) * 41));
      SetPenColor(RGB((i + j) * 77, (i + j) * 13, (i + j) * 21));
    end;
    Sleep(100);
    a := 0;
    c := 0;
    //ClearWindow();
  end;
end.
