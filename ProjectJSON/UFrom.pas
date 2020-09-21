unit UFrom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  UStudent, System.JSON.Serializers, System.Generics.Collections;

type
  TFMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.Button1Click(Sender: TObject);
var
  stu: student;
  stuJson: string;
  serializer: TJsonSerializer;
begin
  // 字符串类型JSON数据
  stuJson := '{"FName":"Sky","FAge":"22"}';
  // 创建反序列化对象
  serializer := TJsonSerializer.create();
  stu := serializer.Deserialize<student>(stuJson);
  Memo1.Lines.Add(stu.ToString);
  Memo1.Lines.Add('反序列化:' + stu.Name + ',' + stu.Age.ToString);
end;

procedure TFMain.Button2Click(Sender: TObject);
var
  stu: student;
  serializer: TJsonSerializer;
begin
  // 创建反序列化对象
  stu := student.create;
  stu.Name := 'Hjj';
  stu.Age := 22;
  // 创建反序列化对象
  serializer := TJsonSerializer.create();
  Memo1.Lines.Add(stu.ToString);
  Memo1.Lines.Add('序列化:' + serializer.Serialize<student>(stu));
end;

procedure TFMain.Button3Click(Sender: TObject);
var
  stuList: TList<student>;
  serializer: TJsonSerializer;
begin
  stuList := TList<student>.create;
  stuList.Add(student.create('Sky', 22));
  stuList.Add(student.create('Hjj', 22));
  serializer := TJsonSerializer.create();
  Memo1.Lines.Add('序列化:' + serializer.Serialize < TList < student >> (stuList));
end;

procedure TFMain.Button4Click(Sender: TObject);
var
  stu: student;
  stuJson: string;
  stuList: TList<student>;
  serializer: TJsonSerializer;
begin
  stuJson := '{"FListHelper":[{"FName":"Sky","FAge":22},{"FName":"Hjj","FAge":22}],"FComparer":{}}';
  serializer := TJsonSerializer.create();
  stuList := serializer.Deserialize < TList < student >> (stuJson);
  for stu in stuList do
  begin
    Memo1.Lines.Add('反序列化:' + stu.Name + ',' + stu.Age.ToString);
  end;

end;

end.
