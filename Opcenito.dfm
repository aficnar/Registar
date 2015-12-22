object frmOpcenito: TfrmOpcenito
  Left = 224
  Top = 107
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
  object gbRazredi: TGroupBox
    Left = 16
    Top = 16
    Width = 369
    Height = 241
    Caption = ' Razredni odjeli '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object gbDodavanje: TGroupBox
      Left = 8
      Top = 32
      Width = 353
      Height = 85
      Caption = ' Dodavanje razrednog odjela '
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lbRazred1: TLabel
        Left = 16
        Top = 24
        Width = 81
        Height = 13
        AutoSize = False
        Caption = 'Razred'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbRazrednik1: TLabel
        Left = 72
        Top = 24
        Width = 81
        Height = 13
        AutoSize = False
        Caption = 'Razrednik'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edRazred: TEdit
        Left = 16
        Top = 40
        Width = 49
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edRazrednik1: TEdit
        Left = 72
        Top = 40
        Width = 185
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object btDodaj: TButton
        Left = 264
        Top = 38
        Width = 75
        Height = 25
        Caption = '&Dodaj'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btDodajClick
      end
    end
    object gbIzmjena: TGroupBox
      Left = 8
      Top = 128
      Width = 353
      Height = 105
      Caption = ' Izmjena i brisanje razrednih odjela '
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lbRazred2: TLabel
        Left = 16
        Top = 24
        Width = 81
        Height = 13
        AutoSize = False
        Caption = 'Razred'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbRazrednik2: TLabel
        Left = 96
        Top = 24
        Width = 81
        Height = 13
        AutoSize = False
        Caption = 'Razrednik'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbRazred: TComboBox
        Left = 16
        Top = 40
        Width = 73
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnClick = cbRazredClick
      end
      object btBrisi: TButton
        Left = 16
        Top = 68
        Width = 75
        Height = 25
        Caption = '&Bri'#353'i'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btBrisiClick
      end
      object btIzmjeni: TButton
        Left = 102
        Top = 68
        Width = 75
        Height = 25
        Caption = '&Izmjeni'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btIzmjeniClick
      end
      object edRazrednik2: TEdit
        Left = 96
        Top = 40
        Width = 185
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbKontrola: TComboBox
        Left = 208
        Top = 72
        Width = 73
        Height = 21
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
    end
  end
  object gbSkola: TGroupBox
    Left = 400
    Top = 16
    Width = 241
    Height = 265
    Caption = ' Podaci o '#353'koli '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lbNaziv: TLabel
      Left = 19
      Top = 44
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Naziv '#353'kole:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbAdresa: TLabel
      Left = 18
      Top = 76
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = ' Adresa:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbMjesto: TLabel
      Left = 18
      Top = 108
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mjesto:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbRavnatelj: TLabel
      Left = 19
      Top = 140
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Ravnatelj:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 172
      Width = 225
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = #352'kolska godina:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 112
      Top = 190
      Width = 25
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = '/'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edNaziv: TEdit
      Left = 104
      Top = 40
      Width = 121
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edRavnatelj: TEdit
      Left = 104
      Top = 136
      Width = 121
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edAdresa: TEdit
      Left = 104
      Top = 72
      Width = 121
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edMjesto: TEdit
      Left = 104
      Top = 104
      Width = 121
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btSpremi: TButton
      Left = 78
      Top = 228
      Width = 75
      Height = 25
      Caption = '&Spremi'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btSpremiClick
    end
    object edSk1: TEdit
      Left = 56
      Top = 192
      Width = 57
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edSk2: TEdit
      Left = 136
      Top = 192
      Width = 57
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object btPovratak: TButton
    Left = 598
    Top = 468
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 272
    Width = 241
    Height = 193
    Caption = ' Inicijalne vrijednosti '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object btPostavke: TButton
      Left = 78
      Top = 148
      Width = 75
      Height = 25
      Caption = '&Spremi'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btPostavkeClick
    end
    object cbPostavke: TComboBox
      Left = 16
      Top = 56
      Width = 209
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnClick = cbPostavkeClick
      Items.Strings = (
        'Mati'#269'ni broj'
        'Dr'#382'ava ro'#273'enja'
        'Dr'#382'avljanstvo'
        'Narodnost'
        'Datum upisa'
        'Vrsta gimnazije'
        'Status u'#269'enika'
        'Klasa'
        'UrBroj')
    end
    object edPostavke: TEdit
      Left = 16
      Top = 104
      Width = 209
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
end
