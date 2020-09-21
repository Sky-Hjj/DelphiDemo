program ProjectExtends1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Extends in 'Extends.pas';

var
  bigdog: Dog;

begin
  bigdog := Dog.Create;
  // Writeln(bigdog.Age);
  // bigdog.getName;
  bigdog.CreateClass;
  Readln;

end.
