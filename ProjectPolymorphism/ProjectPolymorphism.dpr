program ProjectPolymorphism;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

var
  animals: animal;

begin
  // ����ת��
  animals := Cat.Create;
  animals.Run;
  //animals.Eat;
  Readln;

end.
