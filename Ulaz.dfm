object frmUlaz: TfrmUlaz
  Left = 362
  Top = 334
  BorderIcons = [biMinimize]
  BorderStyle = bsSingle
  Caption = 'Registar - ulaz'
  ClientHeight = 153
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblSifra: TLabel
    Left = 0
    Top = 48
    Width = 337
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = 'Molim, upi'#353'ite lozinku za ulaz:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 0
    Top = 16
    Width = 337
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Dobrodo'#353'li u Registar!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btUlaz: TButton
    Left = 16
    Top = 112
    Width = 121
    Height = 25
    Hint = 'Ulaz sa upisanim podacima'
    Caption = '&Ulaz'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btUlazClick
  end
  object btIzlaz: TButton
    Left = 200
    Top = 112
    Width = 121
    Height = 25
    Hint = 'Izlaz iz programa'
    Cancel = True
    Caption = '&Izlaz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btIzlazClick
  end
  object edtSifra: TEdit
    Left = 96
    Top = 70
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
end
