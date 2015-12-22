unit Glavna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Novi,Pretraga, ADODB, DB, RpRave, RpDefine, RpBase,
  RpSystem, RpRender, RpRenderCanvas, RpRenderPrinter, RpRenderPDF,
  RpRenderHTML, StdCtrls;

type
  TfrmGlavna = class(TForm)
    MainMenu1: TMainMenu;
    Ucenici1: TMenuItem;
    Ocjene1: TMenuItem;
    Info1: TMenuItem;
    Novi1: TMenuItem;
    Izmjena1: TMenuItem;
    Postavke1: TMenuItem;
    Struktura1: TMenuItem;
    Polugodiste1: TMenuItem;
    Krajgodine1: TMenuItem;
    Matura1: TMenuItem;
    Izmjene1: TMenuItem;
    Prilagodba1: TMenuItem;
    Ispis2: TMenuItem;
    Baza: TADOConnection;
    Upis: TADOCommand;
    podaci: TADODataSet;
    sistem: TRvSystem;
    rejv: TRvProject;
    podaci2: TADODataSet;
    Printer: TPrinterSetupDialog;
    Registar1: TMenuItem;
    Ispiskolskeirazrednestatistike1: TMenuItem;
    Prijelazkolskegodine2: TMenuItem;
    Izlazizprograma1: TMenuItem;
    rejv2: TRvProject;
    ides: TRvRenderPDF;
    jei: TRvRenderHTML;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    podaci3: TADODataSet;
    podaci4: TADODataSet;
    procedure Novi1Click(Sender: TObject);
    procedure Izmjena1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Polugodiste1Click(Sender: TObject);
    procedure Ispis2Click(Sender: TObject);
    procedure Krajgodine1Click(Sender: TObject);
    procedure Matura1Click(Sender: TObject);
    procedure Izmjene1Click(Sender: TObject);
    procedure Prilagodba1Click(Sender: TObject);
    procedure Prijelaz1Click(Sender: TObject);
    procedure Struktura1Click(Sender: TObject);
    procedure Ispiskolskeirazrednestatistike1Click(Sender: TObject);
    procedure Izlazizprograma1Click(Sender: TObject);
    procedure Info1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frmGlavna: TfrmGlavna;
  

implementation

uses Prijelaz, Polugodiste, Ispis, Kraj, Matura, Opcenito, Prilagodbe,
  Pregled, Statistika, PrijelazSkGod, Info;

{$R *.dfm}

procedure TfrmGlavna.Novi1Click(Sender: TObject);
begin
frmNovi.FormStyle:=fsMDIChild;
frmNovi.WindowState:=wsMaximized;
end;

procedure TfrmGlavna.Izmjena1Click(Sender: TObject);
begin
frmPretraga.FormStyle:=fsMDIChild;
frmPretraga.WindowState:=wsMaximized;
end;

procedure TfrmGlavna.FormActivate(Sender: TObject);
begin
frmGlavna.Caption:='Registar';
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from admin';
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Prvi'].value; nnesto:=nesto;

frmglavna.podaci.close;
if nnesto='1' then begin
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('update admin set prvi='+chr(39)+'2'+chr(39)+' where prvi='+chr(39)+'1'+chr(39));
  frmglavna.Baza.close;
  application.MessageBox('Ovo je prvi put kako koristite Registar, pa æe se nakon klika na gumb OK pojaviti prozor za namještanje nužnih postavki.', 'Registar - dobrodošli!', mb_OK);
  frmOpcenito.FormStyle:=fsMDIChild;
  frmOpcenito.WindowState:=wsMaximized;
end;
end;

procedure TfrmGlavna.Polugodiste1Click(Sender: TObject);
begin
frmPolugodiste.FormStyle:=fsMDIChild;
frmPolugodiste.WindowState:=wsMaximized;
end;

procedure TfrmGlavna.Ispis2Click(Sender: TObject);
begin
frmIspis.FormStyle:=fsMDIChild;
frmIspis.WindowState:=wsMaximized;
end;

procedure TfrmGlavna.Krajgodine1Click(Sender: TObject);
begin
frmKraj.FormStyle:=fsMDIChild;
frmKraj.WindowState:=wsMaximized;
end;

procedure TfrmGlavna.Matura1Click(Sender: TObject);
begin
frmMatura.FormStyle:=fsMDIChild;
frmMatura.WindowState:=wsMaximized;
end;

procedure TfrmGlavna.Izmjene1Click(Sender: TObject);
begin
frmOpcenito.FormStyle:=fsMDIChild;
frmOpcenito.WindowState:=wsMaximized;
end;


procedure TfrmGlavna.Prilagodba1Click(Sender: TObject);
begin
frmPrilagodbe.FormStyle:=fsMDIChild;
frmPrilagodbe.WindowState:=wsMaximized;
end;

procedure TfrmGlavna.Prijelaz1Click(Sender: TObject);
begin
if application.MessageBox('Da li ste sigurni da želite izvršiti prijelaz godine (promjena je nepovratna)?', 'Registar - prijelaz godine', mb_YESNO)=6 then begin
  frmPrijelazskgod.show;
  frmPrijelazskgod.hide;
end;
end;

procedure TfrmGlavna.Struktura1Click(Sender: TObject);
begin
frmPregled.FormStyle:=fsMDIChild;
frmPregled.WindowState:=wsMaximized;
end;

procedure TfrmGlavna.Ispiskolskeirazrednestatistike1Click(Sender: TObject);
begin
frmStatistika.FormStyle:=fsMDIChild;
frmStatistika.WindowState:=wsMaximized;
end;

procedure TfrmGlavna.Izlazizprograma1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TfrmGlavna.Info1Click(Sender: TObject);
begin
frminfo.show;
end;

end.











