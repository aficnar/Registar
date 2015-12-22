object frmKraj: TfrmKraj
  Left = 210
  Top = 162
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 506
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object gbPretraga: TGroupBox
    Left = 16
    Top = 8
    Width = 225
    Height = 489
    Caption = ' Pretraga '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
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
      Left = 12
      Top = 184
      Width = 201
      Height = 297
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
      Left = 16
      Top = 152
      Width = 25
      Height = 17
      ItemHeight = 20
      Sorted = True
      TabOrder = 7
      Visible = False
    end
  end
  object gbUcenik: TGroupBox
    Left = 248
    Top = 8
    Width = 425
    Height = 489
    Caption = ' U'#269'enik '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lblHrv: TLabel
      Left = 8
      Top = 27
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Hrvatski jezik'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblLat: TLabel
      Left = 8
      Top = 99
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Latinski jezik'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblGrc: TLabel
      Left = 8
      Top = 123
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Gr'#269'ki jezik'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblLik: TLabel
      Left = 8
      Top = 171
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Likovna umjetnost'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFiz: TLabel
      Left = 8
      Top = 363
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fizika'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPsi: TLabel
      Left = 8
      Top = 195
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Psihologija'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblGlz: TLabel
      Left = 8
      Top = 147
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Glazbena umjetnost'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblLog: TLabel
      Left = 8
      Top = 219
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Logika'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFil: TLabel
      Left = 8
      Top = 243
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Filozofija'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMat: TLabel
      Left = 8
      Top = 339
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Matematika'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSoc: TLabel
      Left = 8
      Top = 267
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sociologija'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPov: TLabel
      Left = 8
      Top = 291
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Povijest'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblZem: TLabel
      Left = 8
      Top = 315
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Zemljopis'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblKem: TLabel
      Left = 8
      Top = 387
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Kemija'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblBio: TLabel
      Left = 8
      Top = 411
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Biologija'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblInf: TLabel
      Left = 8
      Top = 435
      Width = 113
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Informatika'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPiG: TLabel
      Left = 184
      Top = 27
      Width = 169
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Politika i gospodarstvo'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTZK: TLabel
      Left = 176
      Top = 51
      Width = 177
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tjelesna i zdravstvena kultura'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDatum: TLabel
      Left = 200
      Top = 387
      Width = 41
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Datum'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblKlasa: TLabel
      Left = 192
      Top = 411
      Width = 49
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Klasa'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVladanje: TLabel
      Left = 184
      Top = 459
      Width = 57
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vladanje'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblUrBroj: TLabel
      Left = 192
      Top = 435
      Width = 49
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'UrBroj'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblKojiPut: TLabel
      Left = 337
      Top = 316
      Width = 73
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Koji put:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbPrviJezik: TComboBox
      Left = 8
      Top = 48
      Width = 113
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      Text = '1. strani jezik'
      Items.Strings = (
        'Engleski jezik'
        'Njema'#269'ki jezik'
        'Francuski jezik'
        'Talijanski jezik'
        #352'panjolski jezik'
        'Ruski jezik'
        '-')
    end
    object cbDrugiJezik: TComboBox
      Left = 8
      Top = 72
      Width = 113
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
      Text = '2. strani jezik'
      Items.Strings = (
        'Engleski jezik'
        'Njema'#269'ki jezik'
        'Francuski jezik'
        'Talijanski jezik'
        #352'panjolski jezik'
        'Ruski jezik'
        '-')
    end
    object edHrv: TEdit
      Left = 128
      Top = 24
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edHrvkeypress
    end
    object ed1Jezik: TEdit
      Left = 128
      Top = 48
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 2
      OnKeyPress = ed1Jezikkeypress
    end
    object ed2Jezik: TEdit
      Left = 128
      Top = 72
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 4
      OnKeyPress = ed2Jezikkeypress
    end
    object edLat: TEdit
      Left = 128
      Top = 96
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 5
      OnKeyPress = edLatkeypress
    end
    object edGrc: TEdit
      Left = 128
      Top = 120
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 6
      OnKeyPress = edGrckeypress
    end
    object edGlz: TEdit
      Left = 128
      Top = 144
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edGlzkeypress
    end
    object edLik: TEdit
      Left = 128
      Top = 168
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 8
      OnKeyPress = edLikkeypress
    end
    object edPsi: TEdit
      Left = 128
      Top = 192
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 9
      OnKeyPress = edPsikeypress
    end
    object edLog: TEdit
      Left = 128
      Top = 216
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 10
      OnKeyPress = edLogkeypress
    end
    object edFil: TEdit
      Left = 128
      Top = 240
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 11
      OnKeyPress = edFilkeypress
    end
    object edSoc: TEdit
      Left = 128
      Top = 264
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 12
      OnKeyPress = edSockeypress
    end
    object edPov: TEdit
      Left = 128
      Top = 288
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 13
      OnKeyPress = edPovkeypress
    end
    object edZem: TEdit
      Left = 128
      Top = 312
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 14
      OnKeyPress = edZemkeypress
    end
    object edMat: TEdit
      Left = 128
      Top = 336
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 15
      OnKeyPress = edMatkeypress
    end
    object edFiz: TEdit
      Left = 128
      Top = 360
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 16
      OnKeyPress = edFizkeypress
    end
    object edKem: TEdit
      Left = 128
      Top = 384
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 17
      OnKeyPress = edKemkeypress
    end
    object cbHrv: TCheckBox
      Left = 152
      Top = 26
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'cbHrv'
      TabOrder = 38
      OnClick = cbHrvClick
    end
    object cb1Jezik: TCheckBox
      Left = 152
      Top = 50
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 39
      OnClick = cb1JezikClick
    end
    object cb2Jezik: TCheckBox
      Left = 152
      Top = 74
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 40
      OnClick = cb2JezikClick
    end
    object cbLat: TCheckBox
      Left = 152
      Top = 98
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 41
      OnClick = cbLatClick
    end
    object cbGrc: TCheckBox
      Left = 152
      Top = 122
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 42
      OnClick = cbGrcClick
    end
    object cbGlz: TCheckBox
      Left = 152
      Top = 146
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 43
      OnClick = cbGlzClick
    end
    object cbLik: TCheckBox
      Left = 152
      Top = 170
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 44
      OnClick = cbLikClick
    end
    object cbPsi: TCheckBox
      Left = 152
      Top = 194
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 45
      OnClick = cbPsiClick
    end
    object cbLog: TCheckBox
      Left = 152
      Top = 218
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 46
      OnClick = cbLogClick
    end
    object cbFil: TCheckBox
      Left = 152
      Top = 242
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 47
      OnClick = cbFilClick
    end
    object cbSoc: TCheckBox
      Left = 152
      Top = 266
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 48
      OnClick = cbSocClick
    end
    object cbPov: TCheckBox
      Left = 152
      Top = 290
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 49
      OnClick = cbPovClick
    end
    object cbZem: TCheckBox
      Left = 152
      Top = 314
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 50
      OnClick = cbZemClick
    end
    object cbMat: TCheckBox
      Left = 152
      Top = 338
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 51
      OnClick = cbMatClick
    end
    object cbFiz: TCheckBox
      Left = 152
      Top = 362
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 52
      OnClick = cbFizClick
    end
    object cbKem: TCheckBox
      Left = 152
      Top = 386
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 53
      OnClick = cbKemClick
    end
    object edBio: TEdit
      Left = 128
      Top = 408
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 18
      OnKeyPress = edBiokeypress
    end
    object edImeDod1: TEdit
      Left = 192
      Top = 72
      Width = 161
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
    end
    object edImeDod2: TEdit
      Left = 192
      Top = 96
      Width = 161
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
    end
    object edImeDod3: TEdit
      Left = 192
      Top = 120
      Width = 161
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
    end
    object gbIzborni: TGroupBox
      Left = 184
      Top = 144
      Width = 225
      Height = 73
      Caption = ' Izborni predmeti '
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 28
      object edImeIzb1: TEdit
        Left = 8
        Top = 20
        Width = 161
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object edImeIzb2: TEdit
        Left = 8
        Top = 44
        Width = 161
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edIzb1: TEdit
        Left = 176
        Top = 20
        Width = 17
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edIzb1keypress
      end
      object edIzb2: TEdit
        Left = 176
        Top = 44
        Width = 17
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 3
        OnKeyPress = edIzb2keypress
      end
      object cbIzb1: TCheckBox
        Left = 200
        Top = 22
        Width = 17
        Height = 17
        TabStop = False
        Caption = 'CheckBox1'
        TabOrder = 4
        OnClick = cbIzb1Click
      end
      object cbIzb2: TCheckBox
        Left = 200
        Top = 46
        Width = 17
        Height = 17
        TabStop = False
        Caption = 'CheckBox1'
        TabOrder = 5
        OnClick = cbIzb2Click
      end
    end
    object gbFakultativni: TGroupBox
      Left = 184
      Top = 224
      Width = 225
      Height = 73
      Caption = ' Fakultativni predmeti '
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 29
      object edImeFak1: TEdit
        Left = 8
        Top = 20
        Width = 161
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object edImeFak2: TEdit
        Left = 8
        Top = 44
        Width = 161
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edFak1: TEdit
        Left = 176
        Top = 20
        Width = 17
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edFak1keypress
      end
      object edFak2: TEdit
        Left = 176
        Top = 44
        Width = 17
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 1
        ParentFont = False
        TabOrder = 3
      end
      object cbFak1: TCheckBox
        Left = 200
        Top = 22
        Width = 17
        Height = 17
        TabStop = False
        Caption = 'CheckBox1'
        TabOrder = 4
        OnClick = cbFak1Click
      end
      object cbFak2: TCheckBox
        Left = 200
        Top = 46
        Width = 17
        Height = 17
        TabStop = False
        Caption = 'CheckBox1'
        TabOrder = 5
        OnClick = cbFak2Click
      end
    end
    object cbBio: TCheckBox
      Left = 152
      Top = 416
      Width = 17
      Height = 11
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 54
      OnClick = cbBioClick
    end
    object gbIzostanci: TGroupBox
      Left = 184
      Top = 304
      Width = 145
      Height = 73
      Caption = ' Izostanci '
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
      object lblOpravdani: TLabel
        Left = 8
        Top = 19
        Width = 73
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Opravdani'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNeopravdani: TLabel
        Left = 8
        Top = 43
        Width = 73
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Neopravdani'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edOpravdani: TEdit
        Left = 88
        Top = 16
        Width = 41
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edNeopravdani: TEdit
        Left = 88
        Top = 40
        Width = 41
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object edInf: TEdit
      Left = 128
      Top = 432
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 19
      OnKeyPress = edInfkeypress
    end
    object edPiG: TEdit
      Left = 360
      Top = 24
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 20
      OnKeyPress = edPiGkeypress
    end
    object edTZK: TEdit
      Left = 360
      Top = 48
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 21
      OnKeyPress = edTZKkeypress
    end
    object edDod1: TEdit
      Left = 360
      Top = 72
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 23
      OnKeyPress = edDod1keypress
    end
    object edDod2: TEdit
      Left = 360
      Top = 96
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 25
      OnKeyPress = edDod2keypress
    end
    object edDod3: TEdit
      Left = 360
      Top = 120
      Width = 17
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 1
      ParentFont = False
      TabOrder = 27
      OnKeyPress = edDod3keypress
    end
    object cbInf: TCheckBox
      Left = 152
      Top = 434
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 55
      OnClick = cbInfClick
    end
    object cbPiG: TCheckBox
      Left = 384
      Top = 26
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 56
      OnClick = cbPiGClick
    end
    object cbTZK: TCheckBox
      Left = 384
      Top = 50
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 57
      OnClick = cbTZKClick
    end
    object cbDod1: TCheckBox
      Left = 384
      Top = 74
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 58
      OnClick = cbDod1Click
    end
    object cbDod2: TCheckBox
      Left = 384
      Top = 98
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 59
      OnClick = cbDod2Click
    end
    object cbDod3: TCheckBox
      Left = 384
      Top = 122
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 60
      OnClick = cbDod3Click
    end
    object btSpremi: TButton
      Left = 8
      Top = 456
      Width = 73
      Height = 25
      Caption = '&Spremi'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 36
      OnClick = btSpremiClick
    end
    object btOdustani: TButton
      Left = 96
      Top = 456
      Width = 73
      Height = 25
      Cancel = True
      Caption = '&Odustani'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 37
      OnClick = btOdustaniClick
    end
    object edDatum: TMaskEdit
      Left = 248
      Top = 384
      Width = 126
      Height = 21
      EditMask = '!99/99/0000/;1;_'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 32
      Text = '  .  .    .'
    end
    object cbDatum: TCheckBox
      Left = 384
      Top = 386
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'cbDatum'
      TabOrder = 61
      OnClick = cbDatumClick
    end
    object edBroj: TEdit
      Left = 184
      Top = 24
      Width = 33
      Height = 28
      TabOrder = 62
      Visible = False
    end
    object edKlasa: TEdit
      Left = 248
      Top = 408
      Width = 129
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 33
    end
    object cbklasa: TCheckBox
      Left = 384
      Top = 410
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'cbklasa'
      TabOrder = 63
      OnClick = cbklasaClick
    end
    object cburbroj: TCheckBox
      Left = 384
      Top = 434
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 64
      OnClick = cburbrojClick
    end
    object edurbroj: TEdit
      Left = 248
      Top = 432
      Width = 129
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
    end
    object edvladanje: TEdit
      Left = 248
      Top = 456
      Width = 129
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 35
    end
    object cbvladanje: TCheckBox
      Left = 384
      Top = 458
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'CheckBox1'
      TabOrder = 65
      OnClick = cbvladanjeClick
    end
    object edKojiPut: TEdit
      Left = 352
      Top = 332
      Width = 41
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 31
    end
    object cbkojiput: TCheckBox
      Left = 364
      Top = 356
      Width = 17
      Height = 17
      TabStop = False
      Caption = 'cbDatum'
      TabOrder = 66
      OnClick = cbkojiputClick
    end
  end
end
