program ProjectArray1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  StaticArray = array [0 .. 10] of Char; // ����һ����̬����
  DynamicArray = array of string; // ����һ����̬����

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
  Writeln('�����±�=', Low(SArray), ';�����ϱ���', High(SArray), ';���鳤����',
    Length(SArray));
end;

procedure DynamicArrayDemo();
begin
  DArray := DynamicArray.CREATE('Sky', 'Hjj');
  DArray1 := ['�ο���', '�y��'];

  Writeln('for����------------------------------------');
  for i := Low(DArray) to High(DArray) do
  begin
    Writeln(DArray[i]);
  end;

  Writeln('forin����------------------------------------');
  for name in DArray do
  begin
    Writeln(name);
  end;

  Writeln('concatƴ��------------------------------------');
  //����һ�������飬ƴ����������
  DateArray := concat(DArray + DArray1);
  for name in DateArray do
  begin
    Writeln(name);
  end;

  // �������飬��ͷ����β
  Writeln('copy����------------------------------------');
  //���������飬��ʼλ�ã�����λ��
  CopyArray := Copy(DArray, Low(DArray), High(DArray));
  for name in CopyArray do
  begin
    Writeln(name);
  end;

  Writeln('insert����------------------------------------');
  InsertArray := DynamicArray.CREATE('111', '222');
  insert(InsertArray, DArray, 0);
  for name in DArray do
  begin
    Writeln(name);
  end;

  Writeln('deleteɾ��------------------------------------');
  Delete(DArray, low(DArray) + 2, High(DArray));
  for name in DArray do
  begin
    Writeln(name);
  end;

  // Writeln('�����±�=', Low(DArray), ';�����ϱ���', High(DArray), ';���鳤����',
  // Length(DArray));
end;

begin
  Writeln('��̬����=======================================');
  StaticArrayDemo;
  Writeln('��̬����=======================================');
  DynamicArrayDemo;
  Readln;

end.