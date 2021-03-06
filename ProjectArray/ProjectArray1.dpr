program ProjectArray1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  StaticArray = array [0 .. 10] of Char; // 声明一个静态数组
  DynamicArray = array of string; // 声明一个动态数组

var
  SArray: StaticArray;
  DArray, DArray1, DateArray, CopyArray, InsertArray: DynamicArray;
  i: Integer;
  name: string;

procedure StaticArrayDemo();
begin
  SArray[0] := 'A';
  SArray[1] := 'B';
  for i := Low(SArray) to High(SArray) do
  begin
    Writeln(SArray[i]);
  end;
  Writeln('数组下标=', Low(SArray), ';数组上标是', High(SArray), ';数组长度是',
    Length(SArray));
end;

procedure DynamicArrayDemo();
begin
  DArray := DynamicArray.CREATE('Sky', 'Hjj');
  DArray1 := ['何俊杰', '儁傑'];

  Writeln('for遍历------------------------------------');
  for i := Low(DArray) to High(DArray) do
  begin
    Writeln(DArray[i]);
  end;

  Writeln('forin遍历------------------------------------');
  for name in DArray do
  begin
    Writeln(name);
  end;

  Writeln('concat拼接------------------------------------');
  //定义一个新数组，拼接两个数组
  DateArray := concat(DArray + DArray1);
  for name in DateArray do
  begin
    Writeln(name);
  end;

  // 拷贝数组，含头不含尾
  Writeln('copy拷贝------------------------------------');
  //参数：数组，开始位置，结束位置
  CopyArray := Copy(DArray, Low(DArray), High(DArray));
  for name in CopyArray do
  begin
    Writeln(name);
  end;

  Writeln('insert插入------------------------------------');
  InsertArray := DynamicArray.CREATE('111', '222');
  insert(InsertArray, DArray, 0);
  for name in DArray do
  begin
    Writeln(name);
  end;

  Writeln('delete删除------------------------------------');
  Delete(DArray, low(DArray) + 2, High(DArray));
  for name in DArray do
  begin
    Writeln(name);
  end;

  // Writeln('数组下标=', Low(DArray), ';数组上标是', High(DArray), ';数组长度是',
  // Length(DArray));
end;

begin
  Writeln('静态数组=======================================');
  StaticArrayDemo;
  Writeln('动态数组=======================================');
  DynamicArrayDemo;
  Readln;

end.
