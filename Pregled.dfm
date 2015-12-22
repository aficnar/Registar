object frmPregled: TfrmPregled
  Left = 202
  Top = 165
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
  object lblucenik: TLabel
    Left = 256
    Top = 16
    Width = 345
    Height = 25
    AutoSize = False
    Caption = 'U'#269'enik'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 339
    Width = 113
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Razredno odjeljenje'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 144
    Top = 339
    Width = 145
    Height = 13
    AutoSize = False
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
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
    object dd: TLabel
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
    object ag: TLabel
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
    object af: TLabel
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
    object az: TLabel
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
    object ad: TLabel
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
    object Label1: TLabel
      Left = 122
      Top = 150
      Width = 89
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Uklju'#269'i arhivu'
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
      Left = 16
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
    object arh: TCheckBox
      Left = 157
      Top = 163
      Width = 17
      Height = 17
      TabOrder = 8
    end
  end
  object PageControl1: TPageControl
    Left = 256
    Top = 48
    Width = 425
    Height = 449
    ActivePage = Podaci
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsButtons
    TabOrder = 1
    object Podaci: TTabSheet
      Caption = 'Podaci'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      object lblMBroj2: TLabel
        Left = 24
        Top = 19
        Width = 113
        Height = 13
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
      object lblMBroj: TLabel
        Left = 144
        Top = 19
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblIme: TLabel
        Left = 144
        Top = 43
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblPrezime: TLabel
        Left = 144
        Top = 59
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDatRod: TLabel
        Left = 144
        Top = 75
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblSpol: TLabel
        Left = 144
        Top = 91
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblJMBG: TLabel
        Left = 144
        Top = 107
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblMjRod: TLabel
        Left = 144
        Top = 123
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDrzRod: TLabel
        Left = 144
        Top = 139
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDrz: TLabel
        Left = 144
        Top = 155
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblNar: TLabel
        Left = 144
        Top = 171
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblAdresa: TLabel
        Left = 144
        Top = 187
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblImeMajke2: TLabel
        Left = 24
        Top = 211
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ime majke'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAdresa2: TLabel
        Left = 24
        Top = 187
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Adresa'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNar2: TLabel
        Left = 24
        Top = 171
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Narodnost'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDrz2: TLabel
        Left = 24
        Top = 155
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dr'#382'avljanstvo'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDrzRodj2: TLabel
        Left = 24
        Top = 139
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Dr'#382'ava ro'#273'enja'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblMjRodj2: TLabel
        Left = 24
        Top = 123
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Mjesto ro'#273'enja'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblJMBG2: TLabel
        Left = 24
        Top = 107
        Width = 113
        Height = 13
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
      object lblSpol2: TLabel
        Left = 24
        Top = 91
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Spol'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDatRod2: TLabel
        Left = 24
        Top = 75
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Datum ro'#273'enja'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrezime2: TLabel
        Left = 24
        Top = 59
        Width = 113
        Height = 13
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
      object lblIme2: TLabel
        Left = 24
        Top = 43
        Width = 113
        Height = 13
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
      object lblImeMajke: TLabel
        Left = 144
        Top = 211
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblPrezimeMajke: TLabel
        Left = 144
        Top = 227
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblImeOca: TLabel
        Left = 144
        Top = 243
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblPrezimeOca: TLabel
        Left = 144
        Top = 259
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDatUpisa: TLabel
        Left = 144
        Top = 275
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblVrsta: TLabel
        Left = 144
        Top = 291
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblIsprava: TLabel
        Left = 144
        Top = 307
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblStatus: TLabel
        Left = 144
        Top = 323
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblRazred: TLabel
        Left = 144
        Top = 339
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblRazred2: TLabel
        Left = 24
        Top = 339
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Razredno odjeljenje'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblStatus2: TLabel
        Left = 24
        Top = 323
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Status u'#269'enika'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblIsprava2: TLabel
        Left = 8
        Top = 307
        Width = 129
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Upis temeljem isprave'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVrsta2: TLabel
        Left = 24
        Top = 291
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vrsta gimnazije'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDatUpisa2: TLabel
        Left = 24
        Top = 275
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Datum upisa'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrezimeOca2: TLabel
        Left = 24
        Top = 259
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Prezime oca'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblImeOca2: TLabel
        Left = 24
        Top = 243
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ime oca'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrezimeMajke2: TLabel
        Left = 24
        Top = 227
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Prezime majke'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tekst0: TLabel
        Left = 0
        Top = 396
        Width = 417
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblklasa: TLabel
        Left = 144
        Top = 355
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 24
        Top = 355
        Width = 113
        Height = 13
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
      object lblUrBroj: TLabel
        Left = 144
        Top = 371
        Width = 145
        Height = 13
        AutoSize = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 24
        Top = 371
        Width = 113
        Height = 13
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
    end
    object Raz1: TTabSheet
      Caption = '1. razred'
      ImageIndex = 1
      object a: TLabel
        Left = 8
        Top = 11
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
      object f: TLabel
        Left = 8
        Top = 83
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
      object h: TLabel
        Left = 8
        Top = 107
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
      object t: TLabel
        Left = 8
        Top = 131
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
      object r: TLabel
        Left = 8
        Top = 155
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
      object e: TLabel
        Left = 8
        Top = 179
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
      object w: TLabel
        Left = 8
        Top = 203
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
      object q: TLabel
        Left = 8
        Top = 227
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
      object u: TLabel
        Left = 8
        Top = 251
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
      object i: TLabel
        Left = 8
        Top = 275
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
      object o: TLabel
        Left = 8
        Top = 299
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
      object p: TLabel
        Left = 8
        Top = 323
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
      object m: TLabel
        Left = 8
        Top = 347
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
      object n: TLabel
        Left = 8
        Top = 371
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
        Left = 240
        Top = 12
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
      object te: TLabel
        Left = 240
        Top = 35
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
      object tw: TLabel
        Left = 184
        Top = 59
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
      object tq: TLabel
        Left = 176
        Top = 83
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
      object pjezik1: TLabel
        Left = 8
        Top = 35
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object djezik1: TLabel
        Left = 8
        Top = 59
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pdodatni1: TLabel
        Left = 240
        Top = 107
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdodatni1: TLabel
        Left = 240
        Top = 155
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pizborni1: TLabel
        Left = 240
        Top = 203
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pfakultativni1: TLabel
        Left = 240
        Top = 275
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dfakultativni1: TLabel
        Left = 240
        Top = 299
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dizborni1: TLabel
        Left = 240
        Top = 227
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblOpravdani: TLabel
        Left = 280
        Top = 347
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
        Left = 280
        Top = 371
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
      object Label15: TLabel
        Left = 224
        Top = 179
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Izborni predmeti:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 224
        Top = 251
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fakultativni predmeti:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 224
        Top = 323
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Izostanci:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ddodatni1: TLabel
        Left = 240
        Top = 131
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object hrv1: TLabel
        Left = 128
        Top = 11
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pjez1: TLabel
        Left = 128
        Top = 35
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object djez1: TLabel
        Left = 128
        Top = 59
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lat1: TLabel
        Left = 128
        Top = 83
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object grc1: TLabel
        Left = 128
        Top = 107
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object glz1: TLabel
        Left = 128
        Top = 131
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lik1: TLabel
        Left = 128
        Top = 155
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object psi1: TLabel
        Left = 128
        Top = 179
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object log1: TLabel
        Left = 128
        Top = 203
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object fil1: TLabel
        Left = 128
        Top = 227
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object soc1: TLabel
        Left = 128
        Top = 251
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pov1: TLabel
        Left = 128
        Top = 275
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object zem1: TLabel
        Left = 128
        Top = 299
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mat1: TLabel
        Left = 128
        Top = 323
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object fiz1: TLabel
        Left = 128
        Top = 347
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bio1: TLabel
        Left = 360
        Top = 11
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object inf1: TLabel
        Left = 360
        Top = 35
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pig1: TLabel
        Left = 360
        Top = 59
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tzk1: TLabel
        Left = 360
        Top = 83
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pdod1: TLabel
        Left = 360
        Top = 107
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ddod1: TLabel
        Left = 360
        Top = 131
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdod1: TLabel
        Left = 360
        Top = 155
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dizb1: TLabel
        Left = 360
        Top = 227
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pfak1: TLabel
        Left = 360
        Top = 275
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dfak1: TLabel
        Left = 360
        Top = 299
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object opr1: TLabel
        Left = 360
        Top = 347
        Width = 33
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object neo1: TLabel
        Left = 360
        Top = 371
        Width = 33
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pizb1: TLabel
        Left = 360
        Top = 203
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tekst1: TLabel
        Left = 0
        Top = 396
        Width = 417
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object kem1: TLabel
        Left = 128
        Top = 371
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Raz2: TTabSheet
      Caption = '2. razred'
      ImageIndex = 2
      object Label6: TLabel
        Left = 8
        Top = 11
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
      object pjezik2: TLabel
        Left = 8
        Top = 35
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pjez2: TLabel
        Left = 128
        Top = 35
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object hrv2: TLabel
        Left = 128
        Top = 11
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object djez2: TLabel
        Left = 128
        Top = 59
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object djezik2: TLabel
        Left = 8
        Top = 59
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 83
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
      object lat2: TLabel
        Left = 128
        Top = 83
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 107
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
      object grc2: TLabel
        Left = 128
        Top = 107
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object glz2: TLabel
        Left = 128
        Top = 131
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lik2: TLabel
        Left = 128
        Top = 155
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object psi2: TLabel
        Left = 128
        Top = 179
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object log2: TLabel
        Left = 128
        Top = 203
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object fil2: TLabel
        Left = 128
        Top = 227
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object soc2: TLabel
        Left = 128
        Top = 251
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pov2: TLabel
        Left = 128
        Top = 275
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object zem2: TLabel
        Left = 128
        Top = 299
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mat2: TLabel
        Left = 128
        Top = 323
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object fiz2: TLabel
        Left = 128
        Top = 347
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bio2: TLabel
        Left = 360
        Top = 11
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 240
        Top = 12
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
      object Label31: TLabel
        Left = 8
        Top = 347
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
      object Label32: TLabel
        Left = 8
        Top = 323
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
      object Label33: TLabel
        Left = 8
        Top = 299
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
      object Label34: TLabel
        Left = 8
        Top = 275
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
      object Label35: TLabel
        Left = 8
        Top = 251
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
      object Label36: TLabel
        Left = 8
        Top = 227
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
      object Label37: TLabel
        Left = 8
        Top = 203
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
      object Label38: TLabel
        Left = 8
        Top = 179
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
      object Label39: TLabel
        Left = 8
        Top = 155
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
      object Label40: TLabel
        Left = 8
        Top = 131
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
      object Label41: TLabel
        Left = 240
        Top = 35
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
      object pig2: TLabel
        Left = 360
        Top = 59
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object inf2: TLabel
        Left = 360
        Top = 35
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 184
        Top = 59
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
      object Label45: TLabel
        Left = 176
        Top = 83
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
      object pdodatni2: TLabel
        Left = 240
        Top = 107
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ddodatni2: TLabel
        Left = 240
        Top = 131
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdodatni2: TLabel
        Left = 240
        Top = 155
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdod2: TLabel
        Left = 360
        Top = 155
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ddod2: TLabel
        Left = 360
        Top = 131
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pdod2: TLabel
        Left = 360
        Top = 107
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tzk2: TLabel
        Left = 360
        Top = 83
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 224
        Top = 179
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Izborni predmeti:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pizborni2: TLabel
        Left = 240
        Top = 203
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dizborni2: TLabel
        Left = 240
        Top = 227
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dizb2: TLabel
        Left = 360
        Top = 227
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pizb2: TLabel
        Left = 360
        Top = 203
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pfak2: TLabel
        Left = 360
        Top = 275
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pfakultativni2: TLabel
        Left = 240
        Top = 275
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dfak2: TLabel
        Left = 360
        Top = 299
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dfakultativni2: TLabel
        Left = 240
        Top = 299
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label62: TLabel
        Left = 224
        Top = 251
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fakultativni predmeti:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label63: TLabel
        Left = 224
        Top = 323
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Izostanci:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object opr2: TLabel
        Left = 360
        Top = 347
        Width = 33
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label65: TLabel
        Left = 280
        Top = 347
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
      object Label66: TLabel
        Left = 280
        Top = 371
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
      object neo2: TLabel
        Left = 360
        Top = 371
        Width = 33
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tekst2: TLabel
        Left = 0
        Top = 396
        Width = 417
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object kem2: TLabel
        Left = 128
        Top = 371
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 8
        Top = 371
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
    end
    object Raz3: TTabSheet
      Caption = '3. razred'
      ImageIndex = 3
      object Label69: TLabel
        Left = 8
        Top = 11
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
      object pjezik3: TLabel
        Left = 8
        Top = 35
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pjez3: TLabel
        Left = 128
        Top = 35
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object hrv3: TLabel
        Left = 128
        Top = 11
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object djez3: TLabel
        Left = 128
        Top = 59
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object djezik3: TLabel
        Left = 8
        Top = 59
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label75: TLabel
        Left = 8
        Top = 83
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
      object lat3: TLabel
        Left = 128
        Top = 83
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label77: TLabel
        Left = 8
        Top = 107
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
      object grc3: TLabel
        Left = 128
        Top = 107
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object glz3: TLabel
        Left = 128
        Top = 131
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lik3: TLabel
        Left = 128
        Top = 155
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object psi3: TLabel
        Left = 128
        Top = 179
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object log3: TLabel
        Left = 128
        Top = 203
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object fil3: TLabel
        Left = 128
        Top = 227
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object soc3: TLabel
        Left = 128
        Top = 251
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pov3: TLabel
        Left = 128
        Top = 275
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object zem3: TLabel
        Left = 128
        Top = 299
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mat3: TLabel
        Left = 128
        Top = 323
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object fiz3: TLabel
        Left = 128
        Top = 347
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bio3: TLabel
        Left = 360
        Top = 11
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label90: TLabel
        Left = 240
        Top = 12
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
      object Label91: TLabel
        Left = 8
        Top = 347
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
      object Label92: TLabel
        Left = 8
        Top = 323
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
      object Label93: TLabel
        Left = 8
        Top = 299
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
      object Label94: TLabel
        Left = 8
        Top = 275
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
      object Label95: TLabel
        Left = 8
        Top = 251
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
      object Label96: TLabel
        Left = 8
        Top = 227
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
      object Label97: TLabel
        Left = 8
        Top = 203
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
      object Label98: TLabel
        Left = 8
        Top = 179
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
      object Label99: TLabel
        Left = 8
        Top = 155
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
      object Label100: TLabel
        Left = 8
        Top = 131
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
      object Label101: TLabel
        Left = 240
        Top = 35
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
      object pig3: TLabel
        Left = 360
        Top = 59
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object inf3: TLabel
        Left = 360
        Top = 35
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label104: TLabel
        Left = 184
        Top = 59
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
      object Label105: TLabel
        Left = 176
        Top = 83
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
      object pdodatni3: TLabel
        Left = 240
        Top = 107
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ddodatni3: TLabel
        Left = 240
        Top = 131
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdodatni3: TLabel
        Left = 240
        Top = 155
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdod3: TLabel
        Left = 360
        Top = 155
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ddod3: TLabel
        Left = 360
        Top = 131
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pdod3: TLabel
        Left = 360
        Top = 107
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tzk3: TLabel
        Left = 360
        Top = 83
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label113: TLabel
        Left = 224
        Top = 179
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Izborni predmeti:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pizborni3: TLabel
        Left = 240
        Top = 203
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dizborni3: TLabel
        Left = 240
        Top = 227
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dizb3: TLabel
        Left = 360
        Top = 227
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pizb3: TLabel
        Left = 360
        Top = 203
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pfak3: TLabel
        Left = 360
        Top = 275
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pfakultativni3: TLabel
        Left = 240
        Top = 275
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dfak3: TLabel
        Left = 360
        Top = 299
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dfakultativni3: TLabel
        Left = 240
        Top = 299
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label122: TLabel
        Left = 224
        Top = 251
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fakultativni predmeti:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label123: TLabel
        Left = 224
        Top = 323
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Izostanci:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object opr3: TLabel
        Left = 360
        Top = 347
        Width = 33
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label125: TLabel
        Left = 280
        Top = 347
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
      object Label126: TLabel
        Left = 280
        Top = 371
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
      object neo3: TLabel
        Left = 360
        Top = 371
        Width = 33
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tekst3: TLabel
        Left = 0
        Top = 396
        Width = 417
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object kem3: TLabel
        Left = 128
        Top = 371
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 8
        Top = 371
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
    end
    object Raz4: TTabSheet
      Caption = '4. razred'
      ImageIndex = 4
      object Label129: TLabel
        Left = 8
        Top = 11
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
      object pjezik4: TLabel
        Left = 8
        Top = 35
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pjez4: TLabel
        Left = 128
        Top = 35
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object hrv4: TLabel
        Left = 128
        Top = 11
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object djez4: TLabel
        Left = 128
        Top = 59
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object djezik4: TLabel
        Left = 8
        Top = 59
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label135: TLabel
        Left = 8
        Top = 83
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
      object lat4: TLabel
        Left = 128
        Top = 83
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label137: TLabel
        Left = 8
        Top = 107
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
      object grc4: TLabel
        Left = 128
        Top = 107
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object glz4: TLabel
        Left = 128
        Top = 131
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lik4: TLabel
        Left = 128
        Top = 155
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object psi4: TLabel
        Left = 128
        Top = 179
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object log4: TLabel
        Left = 128
        Top = 203
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object fil4: TLabel
        Left = 128
        Top = 227
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object soc4: TLabel
        Left = 128
        Top = 251
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pov4: TLabel
        Left = 128
        Top = 275
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object zem4: TLabel
        Left = 128
        Top = 299
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mat4: TLabel
        Left = 128
        Top = 323
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object fiz4: TLabel
        Left = 128
        Top = 347
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bio4: TLabel
        Left = 360
        Top = 11
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label150: TLabel
        Left = 240
        Top = 12
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
      object Label151: TLabel
        Left = 8
        Top = 347
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
      object Label152: TLabel
        Left = 8
        Top = 323
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
      object Label153: TLabel
        Left = 8
        Top = 299
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
      object Label154: TLabel
        Left = 8
        Top = 275
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
      object Label155: TLabel
        Left = 8
        Top = 251
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
      object Label156: TLabel
        Left = 8
        Top = 227
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
      object Label157: TLabel
        Left = 8
        Top = 203
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
      object Label158: TLabel
        Left = 8
        Top = 179
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
      object Label159: TLabel
        Left = 8
        Top = 155
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
      object Label160: TLabel
        Left = 8
        Top = 131
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
      object Label161: TLabel
        Left = 240
        Top = 35
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
      object pig4: TLabel
        Left = 360
        Top = 59
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object inf4: TLabel
        Left = 360
        Top = 35
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label164: TLabel
        Left = 184
        Top = 59
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
      object Label165: TLabel
        Left = 176
        Top = 83
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
      object pdodatni4: TLabel
        Left = 240
        Top = 107
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ddodatni4: TLabel
        Left = 240
        Top = 131
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdodatni4: TLabel
        Left = 240
        Top = 155
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tdod4: TLabel
        Left = 360
        Top = 155
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ddod4: TLabel
        Left = 360
        Top = 131
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pdod4: TLabel
        Left = 360
        Top = 107
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tzk4: TLabel
        Left = 360
        Top = 83
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label173: TLabel
        Left = 224
        Top = 179
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Izborni predmeti:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pizborni4: TLabel
        Left = 240
        Top = 203
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dizborni4: TLabel
        Left = 240
        Top = 227
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dizb4: TLabel
        Left = 360
        Top = 227
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pizb4: TLabel
        Left = 360
        Top = 203
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pfak4: TLabel
        Left = 360
        Top = 275
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pfakultativni4: TLabel
        Left = 240
        Top = 275
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dfak4: TLabel
        Left = 360
        Top = 299
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dfakultativni4: TLabel
        Left = 240
        Top = 299
        Width = 113
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label182: TLabel
        Left = 224
        Top = 251
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fakultativni predmeti:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label183: TLabel
        Left = 224
        Top = 323
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Izostanci:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object opr4: TLabel
        Left = 360
        Top = 347
        Width = 33
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label185: TLabel
        Left = 280
        Top = 347
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
      object Label186: TLabel
        Left = 280
        Top = 371
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
      object neo4: TLabel
        Left = 360
        Top = 371
        Width = 33
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object tekst4: TLabel
        Left = 0
        Top = 396
        Width = 417
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object kem4: TLabel
        Left = 128
        Top = 371
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 371
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
    end
    object Matura: TTabSheet
      Caption = 'Matura'
      ImageIndex = 5
      object oslobodjen: TLabel
        Left = 0
        Top = 360
        Width = 417
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 80
        Width = 161
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ocjene:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 32
        Top = 112
        Width = 145
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Hrvatski jezik:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object izborni1: TLabel
        Left = 32
        Top = 128
        Width = 145
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object izborni2: TLabel
        Left = 32
        Top = 144
        Width = 145
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 16
        Top = 200
        Width = 25
        Height = 13
        AutoSize = False
        Caption = 'Od:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 176
        Top = 200
        Width = 25
        Height = 13
        AutoSize = False
        Caption = 'Do:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 16
        Top = 256
        Width = 145
        Height = 13
        AutoSize = False
        Caption = 'Zapisnik:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 16
        Top = 16
        Width = 145
        Height = 13
        AutoSize = False
        Caption = 'Naslov maturalnog rada:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 16
        Top = 240
        Width = 121
        Height = 13
        AutoSize = False
        Caption = 'Redni broj polaganja:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object naslov: TLabel
        Left = 16
        Top = 32
        Width = 393
        Height = 33
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 32
        Top = 96
        Width = 145
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Maturalni rad:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 176
        Width = 241
        Height = 13
        AutoSize = False
        Caption = 'Razdoblje polaganja mature:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object od: TLabel
        Left = 40
        Top = 200
        Width = 129
        Height = 13
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object doo: TLabel
        Left = 200
        Top = 200
        Width = 129
        Height = 13
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object zapisnik: TLabel
        Left = 16
        Top = 272
        Width = 393
        Height = 49
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mat: TLabel
        Left = 184
        Top = 96
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object hrv: TLabel
        Left = 184
        Top = 112
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object izb1: TLabel
        Left = 184
        Top = 128
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object izb2: TLabel
        Left = 184
        Top = 144
        Width = 17
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rb: TLabel
        Left = 144
        Top = 240
        Width = 25
        Height = 14
        AutoSize = False
        Caption = '-'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object btPovratak: TButton
    Left = 608
    Top = 11
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
