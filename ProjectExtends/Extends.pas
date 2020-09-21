unit Extends;

interface

type
  // ������
  Animal = class
  private
    Age: Integer;
  public
    // ���췽��
    constructor CreateClass(Age: Integer);
    // �����д����
    property AAge: Integer read Age write Age;
    // ���ⷽ��
    procedure getName(); virtual;
  end;

  // ����
  Dog = class(Animal)
  public
    // ���췽��
    constructor CreateClass();
    // ��д
    procedure getName(); override;
  end;

implementation

{ Animal }
constructor Animal.CreateClass(Age: Integer);
begin
  Self.Age := Age;
  Writeln(Age);
  Writeln('����');
end;

procedure Animal.getName;
begin
  Writeln('�����Ƕ���');
end;

{ Dog }
constructor Dog.CreateClass;
begin
  Writeln('��');
  inherited CreateClass(15);
end;

procedure Dog.getName;
begin
  inherited getName; // ���ø��෽��
  Writeln('�����ǹ�');
end;

end.