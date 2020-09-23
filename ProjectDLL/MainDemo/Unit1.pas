unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

  // Dll导出的函数
function Addition(X, Y: Integer): Integer; stdcall; external 'ProjectDll.dll';

var
  Form1: TForm1;

implementation

{$R *.dfm}

// 静态加载
procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(Addition(10, 20).ToString);
end;

// 动态加载
procedure TForm1.Button2Click(Sender: TObject);
var
  Addition: function(X, Y: Integer): Integer; stdcall;
  Hand: System.Cardinal;
begin
  // 加载Dll
  Hand := LoadLibrary('ProjectDll.dll');
  if Hand <> 0 then
  begin
    Addition := GetProcAddress(Hand, 'Addition'); // 编译在一个文件夹不要写路径
    ShowMessage(Addition(10, 20).ToString);
    // 释放
    FreeLibrary(Hand);
  end;
end;

end.
