object frmIspis: TfrmIspis
  Left = 224
  Top = 168
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
  object gbIspis: TGroupBox
    Left = 16
    Top = 344
    Width = 209
    Height = 105
    Caption = ' Ispis '#269'ega '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblIzvjesce: TLabel
      Left = 40
      Top = 27
      Width = 129
      Height = 16
      AutoSize = False
      Caption = 'Izvje'#353#263'e'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSvjedodzba: TLabel
      Left = 40
      Top = 51
      Width = 129
      Height = 16
      AutoSize = False
      Caption = 'Svjedod'#382'ba'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMatura: TLabel
      Left = 40
      Top = 75
      Width = 161
      Height = 16
      AutoSize = False
      Caption = 'Maturalna svjedod'#382'ba'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rbIzvjesce: TRadioButton
      Left = 16
      Top = 28
      Width = 17
      Height = 17
      Caption = 'Izvje'#353#263'e'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = rbIzvjesceClick
    end
    object rbSvjedodzba: TRadioButton
      Left = 16
      Top = 52
      Width = 17
      Height = 17
      Caption = 'Svjedod'#382'ba'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rbSvjedodzbaClick
    end
    object rbMatura: TRadioButton
      Left = 16
      Top = 76
      Width = 17
      Height = 17
      Caption = 'Maturalna svjedod'#273'ba'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = rbMaturaClick
    end
  end
  object gbRazred: TGroupBox
    Left = 240
    Top = 336
    Width = 209
    Height = 121
    Caption = ' Ispis razreda '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lblRazred2: TLabel
      Left = 20
      Top = 39
      Width = 121
      Height = 14
      AutoSize = False
      Caption = 'Razredno odjeljenje'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbRazred2: TComboBox
      Left = 144
      Top = 36
      Width = 57
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnSelect = cbRazred2Change
    end
    object btIspisRazred: TButton
      Left = 56
      Top = 80
      Width = 97
      Height = 25
      Caption = 'Is&pi'#353'i'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btIspisRazredClick
    end
  end
  object gbPretraga: TGroupBox
    Left = 16
    Top = 8
    Width = 441
    Height = 313
    Caption = ' Pretraga '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object lblMBroj: TLabel
      Left = 8
      Top = 27
      Width = 70
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mati'#269'ni broj'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblIme: TLabel
      Left = 8
      Top = 51
      Width = 70
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ime'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPrezime: TLabel
      Left = 8
      Top = 75
      Width = 70
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Prezime'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRazred: TLabel
      Left = 8
      Top = 127
      Width = 121
      Height = 14
      AutoSize = False
      Caption = 'Razredno odjeljenje'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblJMBG: TLabel
      Left = 8
      Top = 99
      Width = 70
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'JMBG'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edMBroj: TEdit
      Left = 80
      Top = 23
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object lbRezultati: TListBox
      Left = 228
      Top = 23
      Width = 201
      Height = 282
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      Sorted = True
      TabOrder = 6
      OnClick = lbRezultatiClick
      OnDblClick = btDodajClick
    end
    object edIme: TEdit
      Left = 80
      Top = 47
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edPrezime: TEdit
      Left = 80
      Top = 71
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object cbRazred: TComboBox
      Left = 128
      Top = 123
      Width = 57
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
    end
    object btTrazi: TButton
      Left = 64
      Top = 152
      Width = 97
      Height = 25
      Caption = '&Tra'#382'i'
      Default = True
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btTraziClick
    end
    object edJMBG: TEdit
      Left = 80
      Top = 95
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object lbKontrola: TListBox
      Left = 8
      Top = 96
      Width = 25
      Height = 17
      ItemHeight = 20
      Sorted = True
      TabOrder = 7
      Visible = False
    end
    object btDodaj: TButton
      Left = 120
      Top = 200
      Width = 97
      Height = 25
      Caption = '&Dodaj'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = btDodajClick
    end
    object btIspisiPretraga: TButton
      Left = 120
      Top = 280
      Width = 97
      Height = 25
      Caption = '&Ispi'#353'i'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = btIspisiPretragaClick
    end
    object btPregledaj: TButton
      Left = 120
      Top = 248
      Width = 97
      Height = 25
      Caption = '&Pregledaj'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = btPregledajClick
    end
  end
  object gbDodano: TGroupBox
    Left = 464
    Top = 8
    Width = 217
    Height = 449
    Caption = ' Dodano '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object lbDodano: TListBox
      Left = 8
      Top = 23
      Width = 201
      Height = 370
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnClick = lbDodanoClick
    end
    object btIspisDodano: TButton
      Left = 112
      Top = 416
      Width = 97
      Height = 25
      Caption = 'I&spi'#353'i'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btIspisDodanoClick
    end
    object lbKontrola2: TListBox
      Left = 80
      Top = 416
      Width = 17
      Height = 25
      ItemHeight = 20
      TabOrder = 2
      Visible = False
    end
    object btIzbaci: TButton
      Left = 8
      Top = 416
      Width = 65
      Height = 25
      Caption = 'I&zbaci'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btIzbaciClick
    end
  end
  object btOdustani: TButton
    Left = 64
    Top = 464
    Width = 97
    Height = 25
    Cancel = True
    Caption = '&Odustani'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btOdustaniClick
  end
end
