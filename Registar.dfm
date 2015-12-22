object frmUlaz: TfrmUlaz
  Left = 271
  Top = 138
  Width = 345
  Height = 180
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Registar - ulaz'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblKorisnik: TLabel
    Left = 16
    Top = 16
    Width = 71
    Height = 13
    Caption = 'Korisni'#269'ko ime:'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object lblSifra: TLabel
    Left = 184
    Top = 16
    Width = 40
    Height = 13
    Caption = 'Lozinka:'
  end
  object btUlaz: TButton
    Left = 16
    Top = 64
    Width = 129
    Height = 33
    Hint = 'Ulaz sa upisanim podacima'
    Caption = '&Ulaz'
    Default = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btUlazClick
  end
  object edtIme: TEdit
    Left = 16
    Top = 30
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object btGost: TButton
    Left = 192
    Top = 64
    Width = 129
    Height = 33
    Hint = 'Ulaz kao gost'
    Caption = '&Gost'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object btIzlaz: TButton
    Left = 104
    Top = 112
    Width = 129
    Height = 33
    Hint = 'Izlaz iz programa'
    Cancel = True
    Caption = '&Izlaz'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btIzlazClick
  end
  object edtSifra: TEdit
    Left = 184
    Top = 30
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
end
