unit Unit1;

interface

uses
  // TLoggerUnit��Ҫ����õ�Ԫ
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, TLoggerUnit,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  log: TLogger;
begin
  log := TLogger.GetInstance; { ��ȡTLoggerʵ�� }
  log.Debug('Debug��ť1������');
  log.Info('Info��ť1������');
  log.Warn('Warn��ť1������');
  log.Error('Error��ť1������');
end;

end.
