program ProjectLog4D;

uses
  Vcl.Forms,
  TConfiguratorUnit, {��Ҫ���øõ�Ԫ}
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  doPropertiesConfiguration('log4delphi.properties'); { ��ʼ������ȡ���� }
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
