object frmStatistika: TfrmStatistika
  Left = 192
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
  object gbIspis: TGroupBox
    Left = 216
    Top = 16
    Width = 249
    Height = 153
    Caption = ' Vrsta statistike '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblIzvjesce: TLabel
      Left = 56
      Top = 35
      Width = 129
      Height = 16
      AutoSize = False
      Caption = #352'kolska'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSvjedodzba: TLabel
      Left = 56
      Top = 60
      Width = 129
      Height = 16
      AutoSize = False
      Caption = 'Razredna'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbrazredna: TLabel
      Left = 141
      Top = 90
      Width = 97
      Height = 16
      AutoSize = False
      Caption = 'Izaberite razred'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSkr: TLabel
      Left = 88
      Top = 119
      Width = 97
      Height = 16
      AutoSize = False
      Caption = 'Skra'#263'eni ispis'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 38
      Top = 125
      Width = 28
      Height = 1
      Brush.Color = clBlack
      Pen.Color = clMaroon
    end
    object Shape5: TShape
      Left = 38
      Top = 97
      Width = 28
      Height = 1
      Brush.Color = clBlack
      Pen.Color = clMaroon
    end
    object Shape6: TShape
      Left = 38
      Top = 78
      Width = 1
      Height = 48
      Brush.Color = clBlack
      Pen.Color = clMaroon
    end
    object rbskolska: TRadioButton
      Left = 32
      Top = 36
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
      OnClick = rbskolskaClick
    end
    object rbrazredna: TRadioButton
      Left = 32
      Top = 60
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
      OnClick = rbrazrednaClick
    end
    object cbrazredna: TComboBox
      Left = 72
      Top = 87
      Width = 65
      Height = 21
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 2
    end
    object rbskr: TCheckBox
      Left = 72
      Top = 117
      Width = 17
      Height = 17
      Caption = 'Skra'#263'eni ispis:'
      TabOrder = 3
    end
  end
  object GroupBox1: TGroupBox
    Left = 232
    Top = 184
    Width = 209
    Height = 81
    Caption = ' Vremensko razdoblje '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 27
      Width = 161
      Height = 16
      AutoSize = False
      Caption = 'Kraj '#353'kolske godine'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 51
      Width = 129
      Height = 16
      AutoSize = False
      Caption = 'Kraj polugodi'#353'ta'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rbkraj: TRadioButton
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
    end
    object rbpol: TRadioButton
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
    end
  end
  object GroupBox2: TGroupBox
    Left = 216
    Top = 288
    Width = 241
    Height = 153
    Caption = ' Akcija '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 40
      Top = 27
      Width = 161
      Height = 16
      AutoSize = False
      Caption = 'Ispi'#353'i na papir'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 51
      Width = 129
      Height = 16
      AutoSize = False
      Caption = 'Pregledaj'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 40
      Top = 75
      Width = 129
      Height = 16
      AutoSize = False
      Caption = 'Spremi u datoteku'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblpdf: TLabel
      Left = 104
      Top = 99
      Width = 33
      Height = 16
      AutoSize = False
      Caption = '.pdf'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblhtml: TLabel
      Left = 104
      Top = 123
      Width = 33
      Height = 16
      AutoSize = False
      Caption = '.html'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape2: TShape
      Left = 23
      Top = 94
      Width = 1
      Height = 37
      Brush.Color = clBlack
      Pen.Color = clMaroon
    end
    object Shape3: TShape
      Left = 23
      Top = 107
      Width = 56
      Height = 1
      Brush.Color = clBlack
      Pen.Color = clMaroon
    end
    object Shape4: TShape
      Left = 23
      Top = 130
      Width = 56
      Height = 1
      Brush.Color = clBlack
      Pen.Color = clMaroon
    end
    object rbispis: TRadioButton
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
      OnClick = rbispisClick
    end
    object rbprev: TRadioButton
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
      OnClick = rbprevClick
    end
    object rbfile: TRadioButton
      Left = 16
      Top = 76
      Width = 17
      Height = 17
      Caption = 'Svjedod'#382'ba'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = rbfileClick
    end
    object rbpdf: TCheckBox
      Left = 84
      Top = 99
      Width = 17
      Height = 17
      TabOrder = 3
      OnClick = rbpdfClick
    end
    object rbhtml: TCheckBox
      Left = 84
      Top = 122
      Width = 17
      Height = 17
      Caption = 'rbhtml'
      TabOrder = 4
      OnClick = rbhtmlClick
    end
  end
  object btPovratak: TButton
    Left = 241
    Top = 452
    Width = 75
    Height = 25
    Caption = '&Izvr'#353'i'
    Default = True
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btPovratakClick
  end
  object btOdustani: TButton
    Left = 357
    Top = 452
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Odustani'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btOdustaniClick
  end
end
