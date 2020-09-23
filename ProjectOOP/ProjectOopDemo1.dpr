program ProjectOopDemo1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  uTools in 'uTools.pas';

type
  // 创建类
  TStudent = class(TObject)
    // 字段
    sName: string;
    sAge: Integer;
    // 声明，定义
    procedure setName(Name: string); // Ctrl+Shift+C自动生成过程
    procedure setAge(Age: Integer);
    // 重写父类销毁对象方法
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

// 实现方法
destructor TStudent.Destroy;
begin
  Writeln('调用父类销毁方法');
  inherited;
end;

var
  student: TStudent;
  i: Integer;
  Pint: ^Integer;

begin
  // 创建一个对象
  student := TStudent.Create;
  student.setName('Sky');
  student.sAge := 22;
  Writeln(student.sName);
  // student.Destroy; // 直接销毁，如果对象为nil，则报错（不推荐）
  // student.Free; // 把对象销毁了，但并没有把对象的引用设为nil （不推荐）
  FreeAndNil(student); // 把对象销毁了，并把对象的引用设为nil （推荐）

  { TODO -oSky -c : 指针 2020-09-08 16:50:08 }
  // i := 100;
  // Writeln(Integer(@i).ToHexString);
  // Pint := Pointer($004278E0);
  // Writeln(Pint^);
  Readln;

end.
