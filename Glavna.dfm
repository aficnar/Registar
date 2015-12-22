object frmGlavna: TfrmGlavna
  Left = 220
  Top = 152
  Width = 696
  Height = 549
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Registar'
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 168
    Width = 674
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'MATURALNI RAD'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 216
    Width = 674
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'Registar'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 264
    Width = 674
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'Program za vo'#273'enje evidencije'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 295
    Width = 674
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'u'#269'enika srednjih '#353'kola'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 328
    Width = 674
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'i ispisa srednjo'#353'kolskih dokumenata i statistike'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 6
    Top = 432
    Width = 674
    Height = 25
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Andrej Ficnar, 4.b'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 6
    Top = 464
    Width = 674
    Height = 25
    AutoSize = False
    Caption = 'Zagreb, 5. svibnja 2003.'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 6
    Top = 8
    Width = 674
    Height = 25
    AutoSize = False
    Caption = 'V. gimnazija'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 6
    Top = 35
    Width = 674
    Height = 25
    AutoSize = False
    Caption = 'Zagreb, Klai'#263'eva 1'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 440
    Top = 8
    object Registar1: TMenuItem
      Caption = 'Registar'
      object Ispiskolskeirazrednestatistike1: TMenuItem
        Caption = 'Pregled i ispis statistike'
        OnClick = Ispiskolskeirazrednestatistike1Click
      end
      object Prijelazkolskegodine2: TMenuItem
        Caption = 'Prijelaz '#353'kolske godine'
        OnClick = Prijelaz1Click
      end
      object Izlazizprograma1: TMenuItem
        Caption = 'Izlaz iz programa'
        OnClick = Izlazizprograma1Click
      end
    end
    object Ucenici1: TMenuItem
      Caption = 'U'#269'enici'
      object Novi1: TMenuItem
        Caption = 'Unos novog u'#269'enika'
        OnClick = Novi1Click
      end
      object Izmjena1: TMenuItem
        Caption = 'Pregled i izmjena podataka o u'#269'enicima'
        OnClick = Izmjena1Click
      end
      object Struktura1: TMenuItem
        Caption = 'Pregled podataka i ocjena u'#269'enika'
        OnClick = Struktura1Click
      end
      object Ispis2: TMenuItem
        Caption = 'Ispis dokumenata'
        OnClick = Ispis2Click
      end
    end
    object Ocjene1: TMenuItem
      Caption = 'Ocjene'
      object Polugodiste1: TMenuItem
        Caption = 'Unos ocjena na kraju polugodi'#353'ta'
        OnClick = Polugodiste1Click
      end
      object Krajgodine1: TMenuItem
        Caption = 'Unos ocjena na kraju godine'
        OnClick = Krajgodine1Click
      end
      object Matura1: TMenuItem
        Caption = 'Unos podataka o maturi'
        OnClick = Matura1Click
      end
    end
    object Postavke1: TMenuItem
      Caption = 'Postavke'
      object Izmjene1: TMenuItem
        Caption = 'Op'#263'enite postavke o '#353'koli'
        OnClick = Izmjene1Click
      end
      object Prilagodba1: TMenuItem
        Caption = 'Prilagodba programa'
        OnClick = Prilagodba1Click
      end
    end
    object Info1: TMenuItem
      Caption = 'Info'
      OnClick = Info1Click
    end
  end
  object Baza: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Regis' +
      'tar;Mode=ReadWrite'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 480
    Top = 8
  end
  object Upis: TADOCommand
    Connection = Baza
    Parameters = <>
    Left = 480
    Top = 48
  end
  object podaci: TADODataSet
    Connection = Baza
    Parameters = <>
    Left = 520
    Top = 48
  end
  object sistem: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.Orientation = poDefault
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unCM
    SystemPrinter.UnitsFactor = 2.540000000000000000
    Left = 600
    Top = 48
  end
  object rejv: TRvProject
    Engine = sistem
    LoadDesigner = True
    ProjectFile = 'C:\Program Files\Borland\Delphi7\Projects\Registar\Izvjesce.rav'
    Left = 640
    Top = 48
  end
  object podaci2: TADODataSet
    Connection = Baza
    Parameters = <>
    Left = 560
    Top = 48
  end
  object Printer: TPrinterSetupDialog
    Left = 560
    Top = 8
  end
  object rejv2: TRvProject
    Engine = sistem
    LoadDesigner = True
    ProjectFile = 'Razredna.rav'
    Left = 520
    Top = 8
  end
  object ides: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 640
    Top = 8
  end
  object jei: TRvRenderHTML
    DisplayName = 'Web Page (HTML)'
    FileExtension = '*.html;*.htm'
    ServerMode = False
    Left = 600
    Top = 8
  end
  object podaci3: TADODataSet
    Connection = Baza
    Parameters = <>
    Left = 440
    Top = 48
  end
  object podaci4: TADODataSet
    Connection = Baza
    Parameters = <>
    Left = 400
    Top = 48
  end
end
