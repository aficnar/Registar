object frmPrijelazSkGod: TfrmPrijelazSkGod
  Left = 259
  Top = 221
  Width = 314
  Height = 127
  Caption = 'Registar - Prijelaz '#353'kolske godine'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 18
    Width = 273
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 35
    Width = 273
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bar: TProgressBar
    Left = 44
    Top = 62
    Width = 217
    Height = 16
    Step = 8
    TabOrder = 0
  end
  object kp: TEdit
    Left = 8
    Top = 72
    Width = 17
    Height = 21
    TabOrder = 1
    Visible = False
  end
end
