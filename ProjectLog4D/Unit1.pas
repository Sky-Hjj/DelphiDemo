unit Unit1;

interface

uses
  // TLoggerUnit需要引入该单元
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
  log := TLogger.GetInstance; { 获取TLogger实例 }
  log.Debug('Debug按钮1被点了');
  log.Info('Info按钮1被点了');
  log.Warn('Warn按钮1被点了');
  log.Error('Error按钮1被点了');
end;

end.
