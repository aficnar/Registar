object frmPonavljaci: TfrmPonavljaci
  Left = 187
  Top = 169
  Width = 538
  Height = 296
  Caption = 'Registar - prona'#273'eni ponavlja'#269'i razreda'
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
  object lbpon: TLabel
    Left = 16
    Top = 16
    Width = 169
    Height = 13
    AutoSize = False
    Caption = 'Prona'#273'eni ponavlja'#269'i:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 32
    Width = 105
    Height = 13
    AutoSize = False
    Caption = 'Odabrani u'#269'enik:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 256
    Top = 48
    Width = 81
    Height = 13
    AutoSize = False
    Caption = 'Prezime i ime:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 256
    Top = 64
    Width = 73
    Height = 13
    AutoSize = False
    Caption = 'Mati'#269'ni broj:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 256
    Top = 80
    Width = 113
    Height = 13
    AutoSize = False
    Caption = 'Dosada'#353'nji razred:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 256
    Top = 96
    Width = 81
    Height = 13
    AutoSize = False
    Caption = 'Novi razred:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblIme: TLabel
    Left = 339
    Top = 48
    Width = 182
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblMBroj: TLabel
    Left = 331
    Top = 64
    Width = 150
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblRazred: TLabel
    Left = 366
    Top = 80
    Width = 115
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbRezultati: TListBox
    Left = 16
    Top = 32
    Width = 220
    Height = 217
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    OnClick = lbRezultatiClick
  end
  object cbRazred: TComboBox
    Left = 256
    Top = 112
    Width = 65
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object btSpremi: TButton
    Left = 256
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Spremi'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btSpremiClick
  end
  object lbKontrola: TListBox
    Left = 256
    Top = 216
    Width = 57
    Height = 33
    ItemHeight = 13
    TabOrder = 3
    Visible = False
  end
  object btZavrsi: TButton
    Left = 392
    Top = 224
    Width = 129
    Height = 25
    Cancel = True
    Caption = 'Zavr'#353'i s promjenama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btZavrsiClick
  end
end
