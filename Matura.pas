unit Matura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask;

type
  TfrmMatura = class(TForm)
    gbPretraga: TGroupBox;
    lblMBroj: TLabel;
    lblIme: TLabel;
    lblPrezime: TLabel;
    lblRazred: TLabel;
    lblJMBG: TLabel;
    edMBroj: TEdit;
    lbRezultati: TListBox;
    edIme: TEdit;
    edPrezime: TEdit;
    cbRazred: TComboBox;
    btTrazi: TButton;
    edJMBG: TEdit;
    lbKontrola: TListBox;
    gbUcenik: TGroupBox;
    edNaslov: TLabel;
    lbKlasa: TLabel;
    lbZapisnik: TLabel;
    rdNaslov: TRichEdit;
    gbPolaganje: TGroupBox;
    lbOd: TLabel;
    lbDo: TLabel;
    rdZapisnik: TRichEdit;
    edKlasa: TEdit;
    edUrBroj: TEdit;
    lbOsl: TLabel;
    lbRBroj: TLabel;
    edOd: TMaskEdit;
    edDo: TMaskEdit;
    edRBroj: TEdit;
    rbDa: TRadioButton;
    rbNe: TRadioButton;
    lbUrBroj: TLabel;
    lbDatum: TLabel;
    edDatum: TMaskEdit;
    gbOcjene: TGroupBox;
    lbRad: TLabel;
    lbHrv: TLabel;
    edRad: TEdit;
    edIzb2: TEdit;
    edIzborni2: TEdit;
    edIzborni1: TEdit;
    edHrv: TEdit;
    edIzb1: TEdit;
    btSpremi: TButton;
    btOdustani: TButton;
    edBroj: TEdit;
    procedure btOdustaniClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btTraziClick(Sender: TObject);
    procedure lbRezultatiClick(Sender: TObject);
    procedure rbDaClick(Sender: TObject);
    procedure rbNeClick(Sender: TObject);
    procedure btSpremiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatura: TfrmMatura;
  fin,kont,br:integer;
  naziv1,naziv2,poc,trazeni,trenutni,nnesto,odaberi,khm1,khm2,helou,umetanje,osl:string;
  nesto:variant;
  upisan:boolean;

implementation

uses Glavna, Prijelaz;

{$R *.dfm}

procedure TfrmMatura.btOdustaniClick(Sender: TObject);
begin
frmGlavna.Caption:='Registar';
frmPrijelaz.FormStyle:=fsMDIChild;
frmPrijelaz.WindowState:=wsMaximized;
end;

procedure TfrmMatura.FormActivate(Sender: TObject);
begin
frmGlavna.Caption:='Registar - Unos podataka o maturi';
btSpremi.Enabled:=false;
cbrazred.Clear;
frmglavna.podaci3.Close;
frmglavna.podaci3.CommandText:='select * from Razredi order by ime';
frmglavna.podaci3.ExecuteOptions;
frmglavna.podaci3.Open;
frmglavna.podaci3.Recordset.MoveFirst;
while not (frmglavna.podaci3.Recordset.eof) do begin
  nesto:=frmglavna.podaci3.Recordset.fields.item['Ime'].value; if nesto<> null then nnesto:=nesto;
  if nnesto<>'' then cbrazred.Items.add(nnesto);
  frmglavna.podaci3.Recordset.MoveNext;
end;
frmglavna.podaci3.close;
rdNaslov.Text:='';
edrad.Text:='';
edhrv.Text:='';
edizb1.Text:='';
edizb2.Text:='';
edizborni1.Text:='';
edizborni2.Text:='';
edod.Text:='';
eddo.Text:='';
edrbroj.Text:='';
edklasa.Text:='';
edurbroj.Text:='';
eddatum.Text:='';
rdzapisnik.Text:='';
lbkontrola.Clear;
lbrezultati.Clear;
edMbroj.Text:='';edIme.Text:='';edPrezime.Text:='';
edJMBG.Text:='';
gbucenik.Caption:='Uèenik';
end;

procedure TfrmMatura.btTraziClick(Sender: TObject);
begin
btSpremi.Enabled:=false;
rdNaslov.Text:='';
edrad.Text:='';
edhrv.Text:='';
edizb1.Text:='';
edizb2.Text:='';
edizborni1.Text:='';
edizborni2.Text:='';
edod.Text:='';
eddo.Text:='';
edrbroj.Text:='';
edklasa.Text:='';
edurbroj.Text:='';
eddatum.Text:='';
rdzapisnik.Text:='';
lbkontrola.Clear;
lbrezultati.Clear;
gbucenik.Caption:='Uèenik';
odaberi:='select * from ucenici where ';
lbRezultati.clear;
lbKontrola.Clear;
if edMBroj.text<>'' then odaberi:=odaberi+'and MBroj='+chr(39)+edMBroj.text+chr(39);
if edIme.text<>'' then odaberi:=odaberi+'and Ime='+chr(39)+edIme.text+chr(39);
if edPrezime.text<>'' then odaberi:=odaberi+'and Prezime='+chr(39)+edPrezime.text+chr(39);
if edJMBG.text<>'' then odaberi:=odaberi+'and JMBG='+chr(39)+edJMBG.text+chr(39);
if cbRazred.text<>'' then odaberi:=odaberi+'and Razred='+chr(39)+cbRazred.text+chr(39);
if length(odaberi)<32 then delete(odaberi,22,7) else delete(odaberi,29,4);
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:=odaberi;
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
while not (frmglavna.podaci.Recordset.eof) do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['Prezime'];
  khm1:=nesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Ime'];
  khm2:=nesto;
  naziv1:=khm1+' '+khm2;
  nesto:=frmglavna.podaci.Recordset.fields.item['ID'];
  khm1:=nesto;
  naziv2:=naziv1+'*'+khm1;
  lbRezultati.Items.Add(naziv1);
  lbKontrola.Items.add(naziv2);
  frmglavna.podaci.Recordset.MoveNext;
end;
if frmglavna.podaci.Recordset.RecordCount=0 then application.MessageBox('Nema rezultata koji zadovoljavaju Vaš upit.', 'Registar - pretraga uèenika', mb_OK);
end;

procedure TfrmMatura.lbRezultatiClick(Sender: TObject);
begin
if lbrezultati.ItemIndex>-1 then btSpremi.Enabled:=true;
poc:=lbKontrola.Items.Strings[lbRezultati.ItemIndex];
trazeni:=copy(poc,pos('*',poc)+1,length(poc)-pos('*',poc));
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Matura where ID='+trazeni;
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
trenutni:=trazeni;
if frmglavna.podaci.Recordset.RecordCount>0 then begin
  nesto:=frmglavna.podaci.Recordset.fields.item['Naslov']; nnesto:=nesto; rdNaslov.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Mat']; nnesto:=nesto; edRad.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Hrv']; nnesto:=nesto; edHrv.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Izb1']; nnesto:=nesto; edIzb1.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Izb2']; nnesto:=nesto; edIzb2.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Izborni1']; nnesto:=nesto; edIzborni1.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Izborni2']; nnesto:=nesto; edIzborni2.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Od']; nnesto:=nesto; edOd.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Do']; nnesto:=nesto; edDo.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['RBroj']; nnesto:=nesto; edRbroj.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Datum']; nnesto:=nesto; eddatum.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Zapisnik']; nnesto:=nesto; rdzapisnik.Text:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Osl']; nnesto:=nesto; osl:=nnesto;

  if osl='DA' then rbda.Checked:=true else rbne.Checked:=true;
  upisan:=true;
end else begin
  rdNaslov.Text:='';
  edRad.Text:='';
  edHrv.Text:='';
  edIzb1.Text:='';
  edIzb2.Text:='';
  edIzborni1.Text:='Prvi izborni predmet';
  edIzborni2.Text:='Drugi izborni predmet';
  edOd.text:='';
  edDo.text:='';
  edRbroj.Text:='';
  edKlasa.Text:='';
  edurbroj.Text:='';
  eddatum.Text:='';
  rdzapisnik.Text:='';
  rbda.Checked:=false;
  rbne.Checked:=false;
    frmglavna.podaci3.Close;
  frmglavna.podaci3.CommandText:='select * from Postavke';
  frmglavna.podaci3.ExecuteOptions;
  frmglavna.podaci3.Open;
  frmglavna.podaci3.Recordset.MoveFirst;
  nesto:=frmglavna.podaci3.Recordset.fields.item['klasa'];
  nnesto:=nesto; edklasa.Text:=nnesto;
  nesto:=frmglavna.podaci3.Recordset.fields.item['urbroj'];
  nnesto:=nesto; edurbroj.Text:=nnesto;
  frmglavna.podaci3.close;

  upisan:=false;
end;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where ID='+trazeni;
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Prezime'];
nnesto:=nesto;
helou:=' '+nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Ime'];
nnesto:=nesto;
helou:=helou+', '+nnesto+' ';
gbUcenik.Caption:=helou;
edbroj.Text:=trenutni;
end;

procedure TfrmMatura.rbDaClick(Sender: TObject);
begin
  lbHrv.Enabled:=false;
  edhrv.Enabled:=false;
  edIzborni1.Enabled:=false;
  edIzborni2.Enabled:=false;
  edizb1.Enabled:=false;
  edizb2.Enabled:=false;
  lbod.Enabled:=false;
  lbdo.Enabled:=false;
  eddo.Enabled:=false;
  edod.Enabled:=false;
  lbrbroj.Enabled:=false;
  edrbroj.Enabled:=false;

end;

procedure TfrmMatura.rbNeClick(Sender: TObject);
begin
lbHrv.Enabled:=true;
  edhrv.Enabled:=true;
  edIzborni1.Enabled:=true;
  edIzborni2.Enabled:=true;
  edizb1.Enabled:=true;
  edizb2.Enabled:=true;
  lbod.Enabled:=true;
  lbdo.Enabled:=true;
  eddo.Enabled:=true;
  edod.Enabled:=true;
  lbrbroj.Enabled:=true;
  edrbroj.Enabled:=true;
end;

procedure TfrmMatura.btSpremiClick(Sender: TObject);
var ock,occ:boolean;
label blah;
begin
ock:=false;
if (edhrv.text<>'') and (edhrv.text<>'1') and (edhrv.text<>'2') and (edhrv.text<>'3') and (edhrv.text<>'4') and (edhrv.text<>'5') and (edhrv.text<>'N') then ock:=true;
if (edrad.text<>'') and (edrad.text<>'1') and (edrad.text<>'2') and (edrad.text<>'3') and (edrad.text<>'4') and (edrad.text<>'5') and (edrad.text<>'N') then ock:=true;
if (edizb1.text<>'') and (edizb1.text<>'1') and (edizb1.text<>'2') and (edizb1.text<>'3') and (edizb1.text<>'4') and (edizb1.text<>'5') and (edizb1.text<>'N') then ock:=true;
if (edizb2.text<>'') and (edizb2.text<>'1') and (edizb2.text<>'2') and (edizb2.text<>'3') and (edizb2.text<>'4') and (edizb2.text<>'5') and (edizb2.text<>'N') then ock:=true;
occ:=false;
if rbda.Checked=true then begin
  if rdNaslov.Text='' then occ:=true;
  if edRad.Text='' then occ:=true;
  if edKlasa.Text='' then occ:=true;
  if edurbroj.Text='' then occ:=true;
  if eddatum.Text='' then occ:=true;
  if rdzapisnik.Text='' then occ:=true;
end else begin
  if rdNaslov.Text='' then occ:=true;
  if edRad.Text='' then occ:=true;
  if edHrv.Text='' then occ:=true;
  if edIzb1.Text='' then occ:=true;
  if edIzb2.Text='' then occ:=true;
  if edIzborni1.Text='' then occ:=true;
  if edIzborni2.Text='' then occ:=true;
  if edOd.text='' then occ:=true;
  if edDo.text='' then occ:=true;
  if edRbroj.Text='' then occ:=true;
  if edKlasa.Text='' then occ:=true;
  if edurbroj.Text='' then occ:=true;
  if eddatum.Text='' then occ:=true;
  if rdzapisnik.Text='' then occ:=true;
end;
if ock=true then begin application.MessageBox('Ocjene su krivo upisane.', 'Registar - matura', mb_OK); goto blah; end;
if occ=true then if application.MessageBox('Neka polja niste upisali. Želite li nastaviti?', 'Registar - matura', mb_YESNO)=7 then goto blah;
if rbda.Checked=true then osl:='DA' else osl:='NE';
if upisan=true then begin
  umetanje:='Naslov='+chr(39)+rdnaslov.text+chr(39)+','+
    'Mat='+chr(39)+edrad.text+chr(39)+','+
    'Hrv='+chr(39)+edhrv.text+chr(39)+','+
    'Izb1='+chr(39)+edizb1.text+chr(39)+','+
    'Izb2='+chr(39)+edizb2.text+chr(39)+','+
    'Izborni1='+chr(39)+edizborni1.text+chr(39)+','+
    'Izborni2='+chr(39)+edizborni2.text+chr(39)+','+
    'Od='+chr(39)+edod.text+chr(39)+','+
    'Do='+chr(39)+eddo.text+chr(39)+','+
    'Rbroj='+chr(39)+edrbroj.text+chr(39)+','+
    'Klasa='+chr(39)+edklasa.text+chr(39)+','+
    'UrBroj='+chr(39)+edurbroj.text+chr(39)+','+
    'Datum='+chr(39)+eddatum.text+chr(39)+','+
    'Zapisnik='+chr(39)+rdzapisnik.text+chr(39)+','+
    'Osl='+chr(39)+osl+chr(39);
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('update Matura set '+umetanje+' where ID='+edBroj.Text);
  frmglavna.Baza.Close;
  application.MessageBox('Zapis uspješno spremljen!', 'Registar - matura', mb_OK);
end else begin
  umetanje:=chr(39)+rdnaslov.text+chr(39)+','+
    chr(39)+edrad.text+chr(39)+','+
    chr(39)+edhrv.text+chr(39)+','+
    chr(39)+edizb1.text+chr(39)+','+
    chr(39)+edizb2.text+chr(39)+','+
    chr(39)+edizborni1.text+chr(39)+','+
    chr(39)+edizborni2.text+chr(39)+','+
    chr(39)+edod.text+chr(39)+','+
    chr(39)+eddo.text+chr(39)+','+
    chr(39)+edrbroj.text+chr(39)+','+
    chr(39)+edklasa.text+chr(39)+','+
    chr(39)+edurbroj.text+chr(39)+','+
    chr(39)+eddatum.text+chr(39)+','+
    chr(39)+rdzapisnik.text+chr(39)+','+
    chr(39)+edBroj.text+chr(39)+','+
    chr(39)+osl+chr(39);
  frmglavna.Baza.Open;
  frmglavna.Baza.Execute('insert into Matura(Naslov,Mat,Hrv,Izb1,Izb2,Izborni1,Izborni2,Od,Do,RBroj,Klasa,UrBroj,Datum,Zapisnik,ID,Osl) values('+umetanje+')');
  frmglavna.Baza.Close;
  application.MessageBox('Zapis uspješno spremljen!', 'Registar - matura', mb_OK);
  upisan:=true;
end;
blah:
end;

end.
