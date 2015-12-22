object frmNovi: TfrmNovi
  Left = 232
  Top = 197
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
  object gbNovi: TGroupBox
    Left = 16
    Top = 8
    Width = 649
    Height = 425
    Caption = ' Podaci o novom u'#269'eniku '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblMBroj: TLabel
      Left = 16
      Top = 51
      Width = 113
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
      Left = 16
      Top = 84
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
    object lblDatRod: TLabel
      Left = 16
      Top = 148
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
    object lblPrezime: TLabel
      Left = 16
      Top = 116
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
    object lblSpol: TLabel
      Left = 16
      Top = 178
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
    object lblJMBG: TLabel
      Left = 16
      Top = 212
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
    object lblMjRodj: TLabel
      Left = 16
      Top = 244
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
    object lblNar: TLabel
      Left = 16
      Top = 340
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
    object lblDrz: TLabel
      Left = 16
      Top = 308
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
    object lblDrzRodj: TLabel
      Left = 16
      Top = 276
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
    object lblAdresa: TLabel
      Left = 16
      Top = 372
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
    object lblImeMajke: TLabel
      Left = 344
      Top = 52
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sin/k'#263'i majke'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblImeOca: TLabel
      Left = 344
      Top = 116
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sin/k'#263'i oca'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPrezimeMajke: TLabel
      Left = 344
      Top = 84
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
    object lblPrezimeOca: TLabel
      Left = 344
      Top = 149
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
    object lblIsprava: TLabel
      Left = 328
      Top = 245
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
    object lblDatUpisa: TLabel
      Left = 344
      Top = 181
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
    object lblVrsta: TLabel
      Left = 344
      Top = 213
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
    object lblStatus: TLabel
      Left = 344
      Top = 276
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
    object lblRazred: TLabel
      Left = 344
      Top = 309
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
    object Label1: TLabel
      Left = 344
      Top = 340
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
    object Label2: TLabel
      Left = 344
      Top = 372
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
    object edIme: TEdit
      Left = 136
      Top = 80
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
    object edJMBG: TEdit
      Left = 136
      Top = 208
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edMjRod: TEdit
      Left = 136
      Top = 240
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edDrzRod: TEdit
      Left = 136
      Top = 272
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edDrz: TEdit
      Left = 136
      Top = 304
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edNar: TEdit
      Left = 136
      Top = 336
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object edPrezime: TEdit
      Left = 136
      Top = 112
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
    object edMBroj: TEdit
      Left = 136
      Top = 48
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
    object rbMusko: TRadioButton
      Left = 152
      Top = 176
      Width = 41
      Height = 17
      Caption = 'M'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = rbMuskoClick
    end
    object rbZensko: TRadioButton
      Left = 208
      Top = 176
      Width = 41
      Height = 17
      Caption = #381
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = rbZenskoClick
    end
    object edAdresa: TEdit
      Left = 136
      Top = 368
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object edImeMajke: TEdit
      Left = 464
      Top = 48
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object edPrezimeMajke: TEdit
      Left = 464
      Top = 80
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object edImeOca: TEdit
      Left = 464
      Top = 112
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object edPrezimeOca: TEdit
      Left = 464
      Top = 144
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object edVrsta: TEdit
      Left = 464
      Top = 208
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object edIsprava: TEdit
      Left = 464
      Top = 240
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object edStatus: TEdit
      Left = 464
      Top = 272
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object cbRazred: TComboBox
      Left = 464
      Top = 304
      Width = 57
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 20
      Items.Strings = (
        '4B')
    end
    object edDatRod: TMaskEdit
      Left = 136
      Top = 144
      Width = 130
      Height = 21
      EditMask = '!99/99/0000/;1;_'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 3
      Text = '  .  .    .'
    end
    object edDatUpisa: TMaskEdit
      Left = 464
      Top = 176
      Width = 134
      Height = 21
      EditMask = '!99/99/0000/;1;_'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 16
      Text = '  .  .    .'
    end
    object edKlasa: TEdit
      Left = 464
      Top = 336
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object edUrBroj: TEdit
      Left = 464
      Top = 368
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
  end
  object btDodaj: TButton
    Left = 152
    Top = 456
    Width = 145
    Height = 25
    Caption = '&Dodaj'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btDodajClick
  end
  object btOdustani: TButton
    Left = 360
    Top = 456
    Width = 145
    Height = 25
    Cancel = True
    Caption = '&Odustani'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btOdustaniClick
  end
end
