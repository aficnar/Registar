object frmMatura: TfrmMatura
  Left = 185
  Top = 189
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
    object edNaslov: TLabel
      Left = 16
      Top = 32
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
    object lbKlasa: TLabel
      Left = 8
      Top = 344
      Width = 46
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Klasa:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbZapisnik: TLabel
      Left = 216
      Top = 328
      Width = 105
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
    object lbUrBroj: TLabel
      Left = 8
      Top = 376
      Width = 46
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'UrBroj:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDatum: TLabel
      Left = 8
      Top = 408
      Width = 46
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Datum:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rdNaslov: TRichEdit
      Left = 16
      Top = 48
      Width = 393
      Height = 40
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object gbPolaganje: TGroupBox
      Left = 16
      Top = 208
      Width = 393
      Height = 105
      Caption = ' Polaganje mature '
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object lbOd: TLabel
        Left = 6
        Top = 28
        Width = 33
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Od:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbDo: TLabel
        Left = 166
        Top = 28
        Width = 33
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Do:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbOsl: TLabel
        Left = 208
        Top = 60
        Width = 177
        Height = 13
        AutoSize = False
        Caption = 'Oslobo'#273'en polaganja mature?'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbRBroj: TLabel
        Left = 3
        Top = 72
        Width = 142
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Redni broj polaganja:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edOd: TMaskEdit
        Left = 40
        Top = 24
        Width = 97
        Height = 21
        EditMask = '!99/99/0000/;1;_'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 11
        ParentFont = False
        TabOrder = 0
        Text = '  .  .    .'
      end
      object edDo: TMaskEdit
        Left = 200
        Top = 24
        Width = 97
        Height = 21
        EditMask = '!99/99/0000/;1;_'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 11
        ParentFont = False
        TabOrder = 1
        Text = '  .  .    .'
      end
      object edRBroj: TEdit
        Left = 147
        Top = 68
        Width = 30
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 2
      end
      object rbDa: TRadioButton
        Left = 248
        Top = 80
        Width = 41
        Height = 17
        Caption = 'Da'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = rbDaClick
      end
      object rbNe: TRadioButton
        Left = 304
        Top = 80
        Width = 41
        Height = 17
        Caption = 'Ne'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = rbNeClick
      end
      object edBroj: TEdit
        Left = 320
        Top = 24
        Width = 33
        Height = 24
        TabOrder = 5
        Visible = False
      end
    end
    object rdZapisnik: TRichEdit
      Left = 216
      Top = 344
      Width = 193
      Height = 81
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edKlasa: TEdit
      Left = 56
      Top = 340
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
    object edUrBroj: TEdit
      Left = 56
      Top = 372
      Width = 137
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edDatum: TMaskEdit
      Left = 56
      Top = 405
      Width = 137
      Height = 21
      EditMask = '!99/99/0000/;1;_'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 5
      Text = '  .  .    .'
    end
    object gbOcjene: TGroupBox
      Left = 16
      Top = 104
      Width = 393
      Height = 85
      Caption = ' Ocjene na maturi '
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lbRad: TLabel
        Left = 8
        Top = 27
        Width = 150
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Maturalni rad'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbHrv: TLabel
        Left = 208
        Top = 27
        Width = 150
        Height = 13
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
      object edRad: TEdit
        Left = 163
        Top = 23
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
      end
      object edIzb2: TEdit
        Left = 363
        Top = 52
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
      end
      object edIzborni2: TEdit
        Left = 208
        Top = 52
        Width = 150
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'Drugi izborni predmet'
      end
      object edIzborni1: TEdit
        Left = 8
        Top = 52
        Width = 150
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'Prvi izborni predmet'
      end
      object edHrv: TEdit
        Left = 363
        Top = 23
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
      end
      object edIzb1: TEdit
        Left = 163
        Top = 52
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
    end
    object btSpremi: TButton
      Left = 96
      Top = 448
      Width = 97
      Height = 25
      Caption = '&Spremi'
      Default = True
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btSpremiClick
    end
    object btOdustani: TButton
      Left = 216
      Top = 448
      Width = 97
      Height = 25
      Cancel = True
      Caption = 'Odustani'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = btOdustaniClick
    end
  end
end
