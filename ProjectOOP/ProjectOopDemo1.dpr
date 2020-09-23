program ProjectOopDemo1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  uTools in 'uTools.pas';

type
  // ������
  TStudent = class(TObject)
    // �ֶ�
    sName: string;
    sAge: Integer;
    // ����������
    procedure setName(Name: string); // Ctrl+Shift+C�Զ����ɹ���
    procedure setAge(Age: Integer);
    // ��д�������ٶ��󷽷�
    destructor Destroy(); override;
  end;

  { TStudent }

  { TStudent }

procedure TStudent.setAge(Age: Integer);
begin
  sAge := Age;
end;

procedure TStudent.setName(Name: string);
begin
  sName := Name;
end;

// ʵ�ַ���
destructor TStudent.Destroy;
begin
  Writeln('���ø������ٷ���');
  inherited;
end;

var
  student: TStudent;
  i: Integer;
  Pint: ^Integer;

begin
  // ����һ������
  student := TStudent.Create;
  student.setName('Sky');
  student.sAge := 22;
  Writeln(student.sName);
  // student.Destroy; // ֱ�����٣��������Ϊnil���򱨴������Ƽ���
  // student.Free; // �Ѷ��������ˣ�����û�аѶ����������Ϊnil �����Ƽ���
  FreeAndNil(student); // �Ѷ��������ˣ����Ѷ����������Ϊnil ���Ƽ���

  { TODO -oSky -c : ָ�� 2020-09-08 16:50:08 }
  // i := 100;
  // Writeln(Integer(@i).ToHexString);
  // Pint := Pointer($004278E0);
  // Writeln(Pint^);
  Readln;

end.