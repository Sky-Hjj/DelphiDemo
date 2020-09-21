program ProjectJSON;

uses
  Vcl.Forms,
  UFrom in 'UFrom.pas' {FMain},
  UStudent in 'UStudent.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
