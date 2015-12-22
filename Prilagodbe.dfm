object frmPrilagodbe: TfrmPrilagodbe
  Left = 237
  Top = 147
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 506
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object gbPisac: TGroupBox
    Left = 224
    Top = 248
    Width = 228
    Height = 89
    Caption = ' Izmjena postavki pisa'#269'a '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object btPisac: TButton
      Left = 77
      Top = 39
      Width = 75
      Height = 25
      Caption = '&Izmjeni'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btPisacClick
    end
  end
  object gbSifra: TGroupBox
    Left = 216
    Top = 32
    Width = 241
    Height = 177
    Caption = ' Izmjena ulazne lozinke '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lbStara: TLabel
      Left = 19
      Top = 36
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Stara lozinka'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNova: TLabel
      Left = 18
      Top = 68
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nova lozinka'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbPotvrda: TLabel
      Left = 18
      Top = 100
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Potvrda'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edStara: TEdit
      Left = 104
      Top = 32
      Width = 121
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
    end
    object edNova: TEdit
      Left = 104
      Top = 64
      Width = 121
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object edPotvrda: TEdit
      Left = 104
      Top = 96
      Width = 121
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
    end
    object btSifra: TButton
      Left = 83
      Top = 132
      Width = 75
      Height = 25
      Caption = 'I&zmjeni'
      Default = True
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btSifraClick
    end
  end
  object btPovratak: TButton
    Left = 301
    Top = 372
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Odustani'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btPovratakClick
  end
end
