program ProjectLog4D;

uses
  Vcl.Forms,
  TConfiguratorUnit, {需要引用该单元}
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  doPropertiesConfiguration('log4delphi.properties'); { 初始化，读取属性 }
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
