object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 365
  ClientWidth = 251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 45
    Height = 16
    Caption = #22995#21517#65306
  end
  object Label2: TLabel
    Left = 8
    Top = 98
    Width = 45
    Height = 16
    Caption = #24615#21035#65306
  end
  object Label3: TLabel
    Left = 8
    Top = 59
    Width = 45
    Height = 16
    Caption = #24180#40836#65306
  end
  object Label4: TLabel
    Left = 8
    Top = 179
    Width = 45
    Height = 16
    Caption = #29233#22909#65306
  end
  object Label5: TLabel
    Left = 8
    Top = 278
    Width = 45
    Height = 16
    Caption = #20303#22336#65306
  end
  object edtName: TEdit
    Left = 64
    Top = 8
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object rgSex: TRadioGroup
    Left = 64
    Top = 98
    Width = 177
    Height = 57
    TabOrder = 1
    Visible = False
  end
  object rbMan: TRadioButton
    Left = 80
    Top = 122
    Width = 41
    Height = 17
    Caption = #30007
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object rbWoman: TRadioButton
    Left = 152
    Top = 122
    Width = 41
    Height = 17
    Caption = #22899
    TabOrder = 3
  end
  object edtAge: TEdit
    Left = 64
    Top = 56
    Width = 177
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 64
    Top = 179
    Width = 177
    Height = 73
    TabOrder = 5
    object chk1: TCheckBox
      Left = 16
      Top = 24
      Width = 41
      Height = 17
      Caption = #38065
      TabOrder = 0
    end
    object chk2: TCheckBox
      Left = 96
      Top = 24
      Width = 97
      Height = 17
      Caption = #32534#31243
      TabOrder = 1
    end
  end
  object cbbAddress: TComboBox
    Left = 64
    Top = 275
    Width = 177
    Height = 24
    TabOrder = 6
    Items.Strings = (
      #24191#19996#28145#22323
      #24191#19996#24191#24030
      #28246#21335#34913#38451
      #28246#21335#38271#27801)
  end
  object btnSave: TButton
    Left = 24
    Top = 319
    Width = 75
    Height = 25
    Caption = #20445#23384#35774#32622
    TabOrder = 7
    OnClick = btnSaveClick
  end
  object btnRead: TButton
    Left = 152
    Top = 319
    Width = 75
    Height = 25
    Caption = #35835#21462#35774#32622
    TabOrder = 8
    OnClick = btnReadClick
  end
end
