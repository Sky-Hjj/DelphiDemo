unit untINI;

interface

uses
  System.IOUtils, System.IniFiles, Winapi.Windows, Winapi.Messages,
  System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtName: TEdit;
    rgSex: TRadioGroup;
    rbMan: TRadioButton;
    rbWoman: TRadioButton;
    edtAge: TEdit;
    GroupBox1: TGroupBox;
    chk1: TCheckBox;
    chk2: TCheckBox;
    cbbAddress: TComboBox;
    btnSave: TButton;
    btnRead: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ConfigPath: string;

implementation

{$R *.dfm}

procedure TForm1.btnReadClick(Sender: TObject);
var
  IniFile: TIniFile;
  Section: string;
begin
  ConfigPath := TDirectory.GetCurrentDirectory() + '\UserConfig.ini';
  IniFile := TIniFile.Create(ConfigPath);
  Section := 'User';
  edtName.Text := IniFile.ReadString(Section, 'Name', '');
  edtAge.Text := IniFile.ReadString(Section, 'Age', '');
  rbMan.Checked := IniFile.ReadBool(Section, 'Sex', False);
  rbWoman.Checked := not rbMan.Checked;
  chk1.Checked := IniFile.ReadBool(Section, 'Favorite1', False);
  chk2.Checked := IniFile.ReadBool(Section, 'Favorite2', False);
  cbbAddress.ItemIndex := IniFile.ReadInteger(Section, 'Address', 0);
end;

procedure TForm1.btnSaveClick(Sender: TObject);
var
  IniFile: TIniFile;
  Section: string;
begin
  // ≈‰÷√Œƒº˛
  ConfigPath := './UserConfig.ini';
  IniFile := TIniFile.Create(ConfigPath);
  Section := 'User';
  IniFile.WriteString(Section, 'Name', edtName.Text);
  IniFile.WriteString(Section, 'Age', edtAge.Text);
  IniFile.WriteBool(Section, 'Sex', rbMan.Checked);
  IniFile.WriteBool(Section, 'Favorite1', chk1.Checked);
  IniFile.WriteBool(Section, 'Favorite2', chk2.Checked);
  IniFile.WriteInteger(Section, 'Address', cbbAddress.ItemIndex);
end;

end.
