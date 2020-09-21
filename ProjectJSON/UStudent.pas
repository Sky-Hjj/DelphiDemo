unit UStudent;

interface

type
  Student = class
  private
    FName: string;
    FAge: Integer;
  public
    property Name: string read FName write FName;
    property Age: Integer read FAge write FAge;
    constructor Create(); overload;
    constructor Create(FName: string; FAge: Integer); overload;
  end;

implementation

{ Student }

constructor Student.Create(FName: string; FAge: Integer);
begin
  Self.FName := FName;
  Self.FAge := FAge;
end;

constructor Student.Create;
begin

end;

end.
