unit Polugodiste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TfrmPolugodiste = class(TForm)
    gbPretraga: TGroupBox;
    edMBroj: TEdit;
    lblMBroj: TLabel;
    lbRezultati: TListBox;
    lblIme: TLabel;
    lblPrezime: TLabel;
    lblRazred: TLabel;
    edIme: TEdit;
    edPrezime: TEdit;
    cbRazred: TComboBox;
    btTrazi: TButton;
    lblJMBG: TLabel;
    edJMBG: TEdit;
    gbUcenik: TGroupBox;
    lblHrv: TLabel;
    lblLat: TLabel;
    cbPrviJezik: TComboBox;
    cbDrugiJezik: TComboBox;
    lblGrc: TLabel;
    lblLik: TLabel;
    lblFiz: TLabel;
    lblPsi: TLabel;
    lblGlz: TLabel;
    lblLog: TLabel;
    lblFil: TLabel;
    lblMat: TLabel;
    lblSoc: TLabel;
    lblPov: TLabel;
    lblZem: TLabel;
    edHrv: TEdit;
    ed1Jezik: TEdit;
    ed2Jezik: TEdit;
    edLat: TEdit;
    edGrc: TEdit;
    edGlz: TEdit;
    edLik: TEdit;
    edPsi: TEdit;
    edLog: TEdit;
    edFil: TEdit;
    edSoc: TEdit;
    edPov: TEdit;
    edZem: TEdit;
    edMat: TEdit;
    edFiz: TEdit;
    edKem: TEdit;
    cbHrv: TCheckBox;
    cb1Jezik: TCheckBox;
    cb2Jezik: TCheckBox;
    cbLat: TCheckBox;
    cbGrc: TCheckBox;
    cbGlz: TCheckBox;
    cbLik: TCheckBox;
    cbPsi: TCheckBox;
    cbLog: TCheckBox;
    cbFil: TCheckBox;
    cbSoc: TCheckBox;
    cbPov: TCheckBox;
    cbZem: TCheckBox;
    cbMat: TCheckBox;
    cbFiz: TCheckBox;
    cbKem: TCheckBox;
    edBio: TEdit;
    lblKem: TLabel;
    lblBio: TLabel;
    lblInf: TLabel;
    lblPiG: TLabel;
    lblTZK: TLabel;
    edImeDod1: TEdit;
    edImeDod2: TEdit;
    edImeDod3: TEdit;
    gbIzborni: TGroupBox;
    gbFakultativni: TGroupBox;
    edImeFak1: TEdit;
    edImeFak2: TEdit;
    edImeIzb1: TEdit;
    edImeIzb2: TEdit;
    cbBio: TCheckBox;
    gbIzostanci: TGroupBox;
    edInf: TEdit;
    edPiG: TEdit;
    edTZK: TEdit;
    edDod1: TEdit;
    edDod2: TEdit;
    edDod3: TEdit;
    edIzb1: TEdit;
    edIzb2: TEdit;
    edFak1: TEdit;
    edFak2: TEdit;
    cbInf: TCheckBox;
    cbPiG: TCheckBox;
    cbTZK: TCheckBox;
    cbDod1: TCheckBox;
    cbDod2: TCheckBox;
    cbDod3: TCheckBox;
    cbIzb1: TCheckBox;
    cbIzb2: TCheckBox;
    cbFak1: TCheckBox;
    cbFak2: TCheckBox;
    lblOpravdani: TLabel;
    lblNeopravdani: TLabel;
    edOpravdani: TEdit;
    edNeopravdani: TEdit;
    btSpremi: TButton;
    btOdustani: TButton;
    lblDatum: TLabel;
    edDatum: TMaskEdit;
    cbDatum: TCheckBox;
    lbKontrola: TListBox;
    edBroj: TEdit;
    procedure cbHrvClick(Sender: TObject);
    procedure cb1JezikClick(Sender: TObject);
    procedure cb2JezikClick(Sender: TObject);
    procedure cbLatClick(Sender: TObject);
    procedure cbGrcClick(Sender: TObject);
    procedure cbGlzClick(Sender: TObject);
    procedure cbLikClick(Sender: TObject);
    procedure cbPsiClick(Sender: TObject);
    procedure cbLogClick(Sender: TObject);
    procedure cbFilClick(Sender: TObject);
    procedure cbSocClick(Sender: TObject);
    procedure cbPovClick(Sender: TObject);
    procedure cbZemClick(Sender: TObject);
    procedure cbMatClick(Sender: TObject);
    procedure cbFizClick(Sender: TObject);
    procedure cbKemClick(Sender: TObject);
    procedure cbBioClick(Sender: TObject);
    procedure cbInfClick(Sender: TObject);
    procedure cbPiGClick(Sender: TObject);
    procedure cbTZKClick(Sender: TObject);
    procedure cbDod1Click(Sender: TObject);
    procedure cbDod2Click(Sender: TObject);
    procedure cbDod3Click(Sender: TObject);
    procedure cbIzb1Click(Sender: TObject);
    procedure cbIzb2Click(Sender: TObject);
    procedure cbFak1Click(Sender: TObject);
    procedure cbFak2Click(Sender: TObject);
    procedure cbDatumClick(Sender: TObject);
    procedure btTraziClick(Sender: TObject);
    procedure lbRezultatiClick(Sender: TObject);
    procedure btOdustaniClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btSpremiClick(Sender: TObject);
    procedure edHrvkeypress(Sender: TObject; var Key: Char);
    procedure ed1Jezikkeypress(Sender: TObject; var Key: Char);
    procedure ed2Jezikkeypress(Sender: TObject; var Key: Char);
    procedure edLatkeypress(Sender: TObject; var Key: Char);
    procedure edGrckeypress(Sender: TObject; var Key: Char);
    procedure edGlzkeypress(Sender: TObject; var Key: Char);
    procedure edLikkeypress(Sender: TObject; var Key: Char);
    procedure edPsikeypress(Sender: TObject; var Key: Char);
    procedure edLogkeypress(Sender: TObject; var Key: Char);
    procedure edFilkeypress(Sender: TObject; var Key: Char);
    procedure edSockeypress(Sender: TObject; var Key: Char);
    procedure edPovkeypress(Sender: TObject; var Key: Char);
    procedure edZemkeypress(Sender: TObject; var Key: Char);
    procedure edMatkeypress(Sender: TObject; var Key: Char);
    procedure edFizkeypress(Sender: TObject; var Key: Char);
    procedure edKemkeypress(Sender: TObject; var Key: Char);
    procedure edBiokeypress(Sender: TObject; var Key: Char);
    procedure edInfkeypress(Sender: TObject; var Key: Char);
    procedure edPiGkeypress(Sender: TObject; var Key: Char);
    procedure edTZKkeypress(Sender: TObject; var Key: Char);
    procedure edDod1keypress(Sender: TObject; var Key: Char);
    procedure edDod2keypress(Sender: TObject; var Key: Char);
    procedure edDod3keypress(Sender: TObject; var Key: Char);
    procedure edIzb1keypress(Sender: TObject; var Key: Char);
    procedure edIzb2keypress(Sender: TObject; var Key: Char);
    procedure edFak1keypress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPolugodiste: TfrmPolugodiste;
  fin,kont,br:integer;
  naziv1,naziv2,poc,trazeni,trenutni,nnesto,odaberi,khm1,khm2,helou,umetanje:string;
  nesto:variant;
implementation

uses Glavna, Prijelaz;

{$R *.dfm}

procedure TfrmPolugodiste.cbHrvClick(Sender: TObject);
begin
if cbHrv.Checked=true then lblHrv.Enabled:=false else lblHrv.Enabled:=true;
if cbHrv.Checked=true then edHrv.Enabled:=false else edHrv.Enabled:=true;
end;

procedure TfrmPolugodiste.cb1JezikClick(Sender: TObject);
begin
if cb1Jezik.Checked=true then cbPrviJezik.Enabled:=false else cbPrviJezik.Enabled:=true;
if cb1Jezik.Checked=true then ed1Jezik.Enabled:=false else ed1Jezik.Enabled:=true;

end;

procedure TfrmPolugodiste.cb2JezikClick(Sender: TObject);
begin
if cb2Jezik.Checked=true then cbDrugiJezik.Enabled:=false else cbDrugiJezik.Enabled:=true;
if cb2Jezik.Checked=true then ed2Jezik.Enabled:=false else ed2Jezik.Enabled:=true;
end;

procedure TfrmPolugodiste.cbLatClick(Sender: TObject);
begin
if cblat.Checked=true then lbllat.Enabled:=false else lbllat.Enabled:=true;
if cblat.Checked=true then edlat.Enabled:=false else edlat.Enabled:=true;
end;

procedure TfrmPolugodiste.cbGrcClick(Sender: TObject);
begin
if cbgrc.Checked=true then lblgrc.Enabled:=false else lblgrc.Enabled:=true;
if cbgrc.Checked=true then edgrc.Enabled:=false else edgrc.Enabled:=true;
end;

procedure TfrmPolugodiste.cbGlzClick(Sender: TObject);
begin
if cbglz.Checked=true then lblglz.Enabled:=false else lblglz.Enabled:=true;
if cbglz.Checked=true then edglz.Enabled:=false else edglz.Enabled:=true;
end;

procedure TfrmPolugodiste.cbLikClick(Sender: TObject);
begin
if cblik.Checked=true then lbllik.Enabled:=false else lbllik.Enabled:=true;
if cblik.Checked=true then edlik.Enabled:=false else edlik.Enabled:=true;
end;

procedure TfrmPolugodiste.cbPsiClick(Sender: TObject);
begin
if cbpsi.Checked=true then lblpsi.Enabled:=false else lblpsi.Enabled:=true;
if cbpsi.Checked=true then edpsi.Enabled:=false else edpsi.Enabled:=true;
end;

procedure TfrmPolugodiste.cbLogClick(Sender: TObject);
begin
if cblog.Checked=true then lbllog.Enabled:=false else lbllog.Enabled:=true;
if cblog.Checked=true then edlog.Enabled:=false else edlog.Enabled:=true;
end;

procedure TfrmPolugodiste.cbFilClick(Sender: TObject);
begin
if cbfil.Checked=true then lblfil.Enabled:=false else lblfil.Enabled:=true;
if cbfil.Checked=true then edfil.Enabled:=false else edfil.Enabled:=true;
end;

procedure TfrmPolugodiste.cbSocClick(Sender: TObject);
begin
if cbsoc.Checked=true then lblsoc.Enabled:=false else lblsoc.Enabled:=true;
if cbsoc.Checked=true then edsoc.Enabled:=false else edsoc.Enabled:=true;
end;

procedure TfrmPolugodiste.cbPovClick(Sender: TObject);
begin
if cbpov.Checked=true then lblpov.Enabled:=false else lblpov.Enabled:=true;
if cbpov.Checked=true then edpov.Enabled:=false else edpov.Enabled:=true;
end;

procedure TfrmPolugodiste.cbZemClick(Sender: TObject);
begin
if cbzem.Checked=true then lblzem.Enabled:=false else lblzem.Enabled:=true;
if cbzem.Checked=true then edzem.Enabled:=false else edzem.Enabled:=true;
end;

procedure TfrmPolugodiste.cbMatClick(Sender: TObject);
begin
if cbmat.Checked=true then lblmat.Enabled:=false else lblmat.Enabled:=true;
if cbmat.Checked=true then edmat.Enabled:=false else edmat.Enabled:=true;
end;

procedure TfrmPolugodiste.cbFizClick(Sender: TObject);
begin
if cbfiz.Checked=true then lblfiz.Enabled:=false else lblfiz.Enabled:=true;
if cbfiz.Checked=true then edfiz.Enabled:=false else edfiz.Enabled:=true;
end;

procedure TfrmPolugodiste.cbKemClick(Sender: TObject);
begin
if cbkem.Checked=true then lblkem.Enabled:=false else lblkem.Enabled:=true;
if cbkem.Checked=true then edkem.Enabled:=false else edkem.Enabled:=true;
end;

procedure TfrmPolugodiste.cbBioClick(Sender: TObject);
begin
if cbbio.Checked=true then lblbio.Enabled:=false else lblbio.Enabled:=true;
if cbbio.Checked=true then edbio.Enabled:=false else edbio.Enabled:=true;
end;

procedure TfrmPolugodiste.cbInfClick(Sender: TObject);
begin
if cbinf.Checked=true then lblinf.Enabled:=false else lblinf.Enabled:=true;
if cbinf.Checked=true then edinf.Enabled:=false else edinf.Enabled:=true;
end;

procedure TfrmPolugodiste.cbPiGClick(Sender: TObject);
begin
if cbpig.Checked=true then lblpig.Enabled:=false else lblpig.Enabled:=true;
if cbpig.Checked=true then edpig.Enabled:=false else edpig.Enabled:=true;
end;

procedure TfrmPolugodiste.cbTZKClick(Sender: TObject);
begin
if cbtzk.Checked=true then lbltzk.Enabled:=false else lbltzk.Enabled:=true;
if cbtzk.Checked=true then edtzk.Enabled:=false else edtzk.Enabled:=true;
end;

procedure TfrmPolugodiste.cbDod1Click(Sender: TObject);
begin
if cbdod1.Checked=true then edImedod1.Enabled:=false else edImedod1.Enabled:=true;
if cbdod1.Checked=true then eddod1.Enabled:=false else eddod1.Enabled:=true;
end;

procedure TfrmPolugodiste.cbDod2Click(Sender: TObject);
begin
if cbdod2.Checked=true then edImedod2.Enabled:=false else edImedod2.Enabled:=true;
if cbdod2.Checked=true then eddod2.Enabled:=false else eddod2.Enabled:=true;
end;

procedure TfrmPolugodiste.cbDod3Click(Sender: TObject);
begin
if cbdod3.Checked=true then edImedod3.Enabled:=false else edImedod3.Enabled:=true;
if cbdod3.Checked=true then eddod3.Enabled:=false else eddod3.Enabled:=true;
end;

procedure TfrmPolugodiste.cbIzb1Click(Sender: TObject);
begin
if cbizb1.Checked=true then edImeizb1.Enabled:=false else edImeizb1.Enabled:=true;
if cbizb1.Checked=true then edizb1.Enabled:=false else edizb1.Enabled:=true;
end;

procedure TfrmPolugodiste.cbIzb2Click(Sender: TObject);
begin
if cbizb2.Checked=true then edImeizb2.Enabled:=false else edImeizb2.Enabled:=true;
if cbizb2.Checked=true then edizb2.Enabled:=false else edizb2.Enabled:=true;
end;

procedure TfrmPolugodiste.cbFak1Click(Sender: TObject);
begin
if cbfak1.Checked=true then edImefak1.Enabled:=false else edImefak1.Enabled:=true;
if cbfak1.Checked=true then edfak1.Enabled:=false else edfak1.Enabled:=true;
end;

procedure TfrmPolugodiste.cbFak2Click(Sender: TObject);
begin
if cbfak2.Checked=true then edImefak2.Enabled:=false else edImefak2.Enabled:=true;
if cbfak2.Checked=true then edfak2.Enabled:=false else edfak2.Enabled:=true;
end;

procedure TfrmPolugodiste.cbDatumClick(Sender: TObject);
begin
if cbDatum.Checked=true then lblDatum.Enabled:=false else lblDatum.Enabled:=true;
if cbDatum.Checked=true then edDatum.Enabled:=false else edDatum.Enabled:=true;
end;

procedure TfrmPolugodiste.btTraziClick(Sender: TObject);
begin
if edhrv.enabled=true then edHrv.Text:='';
if ed1jezik.enabled=true then ed1Jezik.Text:='';
if ed2jezik.enabled=true then  ed2Jezik.Text:='';
if edlat.enabled=true then edLat.Text:='';
if edgrc.enabled=true then  edGrc.Text:='';
if edglz.enabled=true then  edGlz.Text:='';
if edlik.enabled=true  then  edLik.Text:='';
if edpsi.enabled=true  then  edPsi.Text:='';
if edlog.enabled=true  then  edLog.Text:='';
if edfil.enabled=true  then  edFil.Text:='';
if edsoc.enabled=true  then  edSoc.Text:='';
if edpov.enabled=true  then edPov.Text:='';
if edzem.enabled=true then  edZem.Text:='';
if edmat.enabled=true  then  edMat.Text:='';
if edfiz.enabled=true  then  edFiz.Text:='';
if edkem.enabled=true  then edKem.Text:='';
if edbio.enabled=true  then  edBio.Text:='';
if edinf.enabled=true  then  edInf.Text:='';
if edpig.enabled=true  then  edPig.Text:='';
if edtzk.enabled=true  then  edTzk.Text:='';
if eddod1.enabled=true  then edDod1.Text:='';
 if eddod2.enabled=true  then edDod2.Text:='';
if eddod3.enabled=true  then edDod3.Text:='';
if edizb1.enabled=true  then  edIzb1.Text:='';
if edizb2.enabled=true  then  edIzb2.Text:='';
if edfak1.enabled=true  then  edFak1.Text:='';
if edfak2.enabled=true then  edFak2.Text:='';
if edopravdani.enabled=true  then edOpravdani.Text:='';
 if edneopravdani.enabled=true  then edNeopravdani.Text:='';
if eddatum.enabled=true  then  edDatum.Text:='';
if edimedod1.enabled=true then  edImeDod1.Text:='';
if edimedod2.enabled=true  then  edImeDod2.Text:='';
 if edimedod3.enabled=true  then edImeDod3.Text:='';
if edimeizb1.enabled=true  then edImeIzb1.Text:='';
 if edimeizb2.enabled=true  then edImeIzb2.Text:='';
 if edimefak1.enabled=true then  edImeFak1.Text:='';
 if edimefak2.enabled=true  then edImeFak2.Text:='';
btspremi.Enabled:=false;
gbucenik.caption:='Uèenik';
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
if frmglavna.podaci.Recordset.RecordCount=0 then application.MessageBox('Nema rezultata koji zadovoljavaju Vaš upit.', 'Registar - unos ocjena', mb_OK);
end;

procedure TfrmPolugodiste.lbRezultatiClick(Sender: TObject);
begin
if lbrezultati.ItemIndex>-1 then btspremi.Enabled:=true;
poc:=lbKontrola.Items.Strings[lbRezultati.ItemIndex];
trazeni:=copy(poc,pos('*',poc)+1,length(poc)-pos('*',poc));
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Polugodiste where ID='+trazeni;
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
trenutni:=trazeni;
nesto:=frmglavna.podaci.Recordset.fields.item['Hrv']; nnesto:=nesto; if edhrv.enabled=true then edHrv.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['1Jez']; nnesto:=nesto; if ed1jezik.enabled=true   then ed1Jezik.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['2Jez']; nnesto:=nesto; if ed2jezik.enabled=true  then  ed2Jezik.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Lat']; nnesto:=nesto;  if edlat.enabled=true  then edLat.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Grc']; nnesto:=nesto; if edgrc.enabled=true  then  edGrc.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Glz']; nnesto:=nesto;  if edglz.enabled=true then  edGlz.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Lik']; nnesto:=nesto; if edlik.enabled=true  then  edLik.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Psi']; nnesto:=nesto; if edpsi.enabled=true  then  edPsi.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Log']; nnesto:=nesto; if edlog.enabled=true  then  edLog.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Fil']; nnesto:=nesto; if edfil.enabled=true  then  edFil.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Soc']; nnesto:=nesto; if edsoc.enabled=true  then  edSoc.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Pov']; nnesto:=nesto;  if edpov.enabled=true  then edPov.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Zem']; nnesto:=nesto;  if edzem.enabled=true then  edZem.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Mat']; nnesto:=nesto; if edmat.enabled=true  then  edMat.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Fiz']; nnesto:=nesto; if edfiz.enabled=true  then  edFiz.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Kem'];nnesto:=nesto;  if edkem.enabled=true  then edKem.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Bio']; nnesto:=nesto; if edbio.enabled=true  then  edBio.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Inf']; nnesto:=nesto; if edinf.enabled=true  then  edInf.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Pig']; nnesto:=nesto; if edpig.enabled=true  then  edPig.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Tzk']; nnesto:=nesto; if edtzk.enabled=true  then  edTzk.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Dod1']; nnesto:=nesto;  if eddod1.enabled=true  then edDod1.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Dod2']; nnesto:=nesto;  if eddod2.enabled=true  then edDod2.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Dod3']; nnesto:=nesto;  if eddod3.enabled=true  then edDod3.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Izb1']; nnesto:=nesto; if edizb1.enabled=true  then  edIzb1.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Izb2']; nnesto:=nesto; if edizb2.enabled=true  then  edIzb2.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Fak1']; nnesto:=nesto; if edfak1.enabled=true  then  edFak1.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Fak2']; nnesto:=nesto;  if edfak2.enabled=true then  edFak2.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Opravdani']; nnesto:=nesto;  if edopravdani.enabled=true  then edOpravdani.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Neopravdani']; nnesto:=nesto;  if edneopravdani.enabled=true  then edNeopravdani.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Datum']; nnesto:=nesto; if eddatum.enabled=true  then  edDatum.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['PrviJezik']; nnesto:=nesto;
if (nnesto <> '') and (nnesto <>' ') and (ed1jezik.enabled=true) then cbPrviJezik.ItemIndex:=cbPrviJezik.Items.IndexOf(nnesto);
nesto:=frmglavna.podaci.Recordset.fields.item['DrugiJezik']; nnesto:=nesto;
if (nnesto <> '') and (nnesto <>' ')  and (ed2jezik.enabled=true) then cbDrugiJezik.ItemIndex:=cbDrugiJezik.Items.IndexOf(nnesto);
nesto:=frmglavna.podaci.Recordset.fields.item['Dodatni1']; nnesto:=nesto;  if edimedod1.enabled=true then  edImeDod1.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Dodatni2']; nnesto:=nesto; if edimedod2.enabled=true  then  edImeDod2.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Dodatni3']; nnesto:=nesto;  if edimedod3.enabled=true  then edImeDod3.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Izborni1']; nnesto:=nesto;  if edimeizb1.enabled=true  then edImeIzb1.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Izborni2']; nnesto:=nesto;  if edimeizb2.enabled=true  then edImeIzb2.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Fakultativni1']; nnesto:=nesto;  if edimefak1.enabled=true then  edImeFak1.Text:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Fakultativni2']; nnesto:=nesto;  if edimefak2.enabled=true  then edImeFak2.Text:=nnesto;
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

procedure TfrmPolugodiste.btOdustaniClick(Sender: TObject);
begin
frmGlavna.Caption:='Registar';
frmPrijelaz.FormStyle:=fsMDIChild;
frmPrijelaz.WindowState:=wsMaximized;
end;

procedure TfrmPolugodiste.FormActivate(Sender: TObject);
begin
frmGlavna.Caption:='Registar - Unos ocjena na kraju polugodišta';
cbRazred.Clear;
lbkontrola.Clear;
lbrezultati.Clear;
gbucenik.caption:='Uèenik';
if edhrv.enabled=true then edHrv.Text:='';
if ed1jezik.enabled=true then ed1Jezik.Text:='';
if ed2jezik.enabled=true then  ed2Jezik.Text:='';
if edlat.enabled=true then edLat.Text:='';
if edgrc.enabled=true then  edGrc.Text:='';
if edglz.enabled=true then  edGlz.Text:='';
if edlik.enabled=true  then  edLik.Text:='';
if edpsi.enabled=true  then  edPsi.Text:='';
if edlog.enabled=true  then  edLog.Text:='';
if edfil.enabled=true  then  edFil.Text:='';
if edsoc.enabled=true  then  edSoc.Text:='';
if edpov.enabled=true  then edPov.Text:='';
if edzem.enabled=true then  edZem.Text:='';
if edmat.enabled=true  then  edMat.Text:='';
if edfiz.enabled=true  then  edFiz.Text:='';
if edkem.enabled=true  then edKem.Text:='';
if edbio.enabled=true  then  edBio.Text:='';
if edinf.enabled=true  then  edInf.Text:='';
if edpig.enabled=true  then  edPig.Text:='';
if edtzk.enabled=true  then  edTzk.Text:='';
if eddod1.enabled=true  then edDod1.Text:='';
 if eddod2.enabled=true  then edDod2.Text:='';
if eddod3.enabled=true  then edDod3.Text:='';
if edizb1.enabled=true  then  edIzb1.Text:='';
if edizb2.enabled=true  then  edIzb2.Text:='';
if edfak1.enabled=true  then  edFak1.Text:='';
if edfak2.enabled=true then  edFak2.Text:='';
if edopravdani.enabled=true  then edOpravdani.Text:='';
 if edneopravdani.enabled=true  then edNeopravdani.Text:='';
if eddatum.enabled=true  then  edDatum.Text:='';
if edimedod1.enabled=true then  edImeDod1.Text:='';
if edimedod2.enabled=true  then  edImeDod2.Text:='';
 if edimedod3.enabled=true  then edImeDod3.Text:='';
if edimeizb1.enabled=true  then edImeIzb1.Text:='';
 if edimeizb2.enabled=true  then edImeIzb2.Text:='';
 if edimefak1.enabled=true then  edImeFak1.Text:='';
 if edimefak2.enabled=true  then edImeFak2.Text:='';
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
btspremi.Enabled:=false;
end;

function pro(db:string):boolean;
begin
if (db<>'') and (db<>'1') and (db<>'2') and (db<>'3') and (db<>'4') and (db<>'5') and (db<>'N') then pro:= true else pro:=false;
end;

procedure TfrmPolugodiste.btSpremiClick(Sender: TObject);
var km,kb,ka:boolean;
label nejde;
begin
km:=false;
if pro(edHrv.Text)=true then km:=true;
if pro(ed1jezik.Text)=true then km:=true;
if pro(ed2jezik.Text)=true then km:=true;
if pro(edlat.Text)=true then km:=true;
if pro(edgrc.Text)=true then km:=true;
if pro(edglz.Text)=true then km:=true;
if pro(edlik.Text)=true then km:=true;
if pro(edpsi.Text)=true then km:=true;
if pro(edlog.Text)=true then km:=true;
if pro(edfil.Text)=true then km:=true;
if pro(edsoc.Text)=true then km:=true;
if pro(edpov.Text)=true then km:=true;
if pro(edzem.Text)=true then km:=true;
if pro(edmat.Text)=true then km:=true;
if pro(edfiz.Text)=true then km:=true;
if pro(edkem.Text)=true then km:=true;
if pro(edbio.Text)=true then km:=true;
if pro(edinf.Text)=true then km:=true;
if pro(edpig.Text)=true then km:=true;
if pro(edtzk.Text)=true then km:=true;
if pro(eddod1.Text)=true then km:=true;
if pro(eddod2.Text)=true then km:=true;
if pro(eddod2.Text)=true then km:=true;
if pro(edizb1.Text)=true then km:=true;
if pro(edizb2.Text)=true then km:=true;
if pro(edfak1.Text)=true then km:=true;
if pro(edfak2.Text)=true then km:=true;
ka:=false;
if edopravdani.Text='' then ka:=true;
if edneopravdani.Text='' then ka:=true;
kb:=false;
if cbprvijezik.text='1. strani jezik' then kb:=true;
if cbdrugijezik.text='2. strani jezik' then kb:=true;
if km=true then begin application.MessageBox('Krivo upisane ocjene...', 'Registar - spremanje ocjena', mb_OK); goto nejde; end;
if kb=true then begin application.MessageBox('Niste upisali strane jezike.', 'Registar - spremanje ocjena', mb_OK); goto nejde; end;
if ka=true then begin application.MessageBox('Niste upisali opravdane i/ili neopravdane sate.', 'Registar - spremanje ocjena', mb_OK); goto nejde; end;

frmglavna.Baza.open;
umetanje:='Hrv='+chr(39)+edHrv.text+chr(39)+','+
'1Jez='+chr(39)+ed1jezik.text+chr(39)+','+
'2Jez='+chr(39)+ed2jezik.text+chr(39)+','+
'Lat='+chr(39)+edlat.text+chr(39)+','+
'Grc='+chr(39)+edgrc.text+chr(39)+','+
'Glz='+chr(39)+edglz.text+chr(39)+','+
'Lik='+chr(39)+edlik.text+chr(39)+','+
'Psi='+chr(39)+edpsi.text+chr(39)+','+
'Log='+chr(39)+edlog.text+chr(39)+','+
'Fil='+chr(39)+edfil.text+chr(39)+','+
'Soc='+chr(39)+edsoc.text+chr(39)+','+
'Pov='+chr(39)+edpov.text+chr(39)+','+
'Zem='+chr(39)+edzem.text+chr(39)+','+
'Mat='+chr(39)+edmat.text+chr(39)+','+
'Fiz='+chr(39)+edfiz.text+chr(39)+','+
'Kem='+chr(39)+edkem.text+chr(39)+','+
'Bio='+chr(39)+edbio.text+chr(39)+','+
'Inf='+chr(39)+edinf.text+chr(39)+','+
'Pig='+chr(39)+edpig.text+chr(39)+','+
'Tzk='+chr(39)+edtzk.text+chr(39)+','+
'Dod1='+chr(39)+eddod1.text+chr(39)+','+
'Dod2='+chr(39)+eddod2.text+chr(39)+','+
'Dod3='+chr(39)+eddod3.text+chr(39)+','+
'Izb1='+chr(39)+edizb1.text+chr(39)+','+
'Izb2='+chr(39)+edizb2.text+chr(39)+','+
'Fak1='+chr(39)+edfak1.text+chr(39)+','+
'Fak2='+chr(39)+edfak2.text+chr(39)+','+
'Opravdani='+chr(39)+edopravdani.text+chr(39)+','+
'Neopravdani='+chr(39)+edneopravdani.text+chr(39)+','+
'Datum='+chr(39)+eddatum.text+chr(39)+','+
'PrviJezik='+chr(39)+cbprvijezik.text+chr(39)+','+
'DrugiJezik='+chr(39)+cbdrugijezik.text+chr(39)+','+
'Dodatni1='+chr(39)+edimedod1.text+chr(39)+','+
'Dodatni2='+chr(39)+edimedod2.text+chr(39)+','+
'Dodatni3='+chr(39)+edimedod3.text+chr(39)+','+
'Izborni1='+chr(39)+edimeizb1.text+chr(39)+','+
'Izborni2='+chr(39)+edimeizb2.text+chr(39)+','+
'Fakultativni1='+chr(39)+edimefak1.text+chr(39)+','+
'Fakultativni2='+chr(39)+edimefak2.text+chr(39);
frmglavna.Baza.Execute('update Polugodiste set '+umetanje+' where ID='+edBroj.Text);
frmglavna.Baza.Close;
application.MessageBox('Ocjene uspješno spremljene!', 'Registar - upis ocjena', mb_OK);
nejde:
end;


procedure TfrmPolugodiste.edHrvkeypress(Sender: TObject; var Key: Char);
begin
if ed1jezik.Enabled=true then ed1jezik.SetFocus;
if ed1jezik.Enabled=false then ed1jezikkeypress(edhrv,key);

end;

procedure TfrmPolugodiste.ed1Jezikkeypress(Sender: TObject; var Key: Char);
begin
if ed2jezik.Enabled=true then ed2jezik.SetFocus;
if ed2jezik.Enabled=false then ed2jezikkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.ed2Jezikkeypress(Sender: TObject; var Key: Char);
begin
if edlat.Enabled=true then edlat.SetFocus;
if edlat.Enabled=false then edlatkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edLatkeypress(Sender: TObject; var Key: Char);
begin
if edgrc.Enabled=true then edgrc.SetFocus;
if edgrc.Enabled=false then edgrckeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edGrckeypress(Sender: TObject; var Key: Char);
begin
if edglz.Enabled=true then edglz.SetFocus;
if edglz.Enabled=false then edglzkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edGlzkeypress(Sender: TObject; var Key: Char);
begin
if edlik.Enabled=true then edlik.SetFocus;
if edlik.Enabled=false then edlikkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edLikkeypress(Sender: TObject; var Key: Char);
begin
if edpsi.Enabled=true then edpsi.SetFocus;
if edpsi.Enabled=false then edpsikeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edPsikeypress(Sender: TObject; var Key: Char);
begin
if edlog.Enabled=true then edlog.SetFocus;
if edlog.Enabled=false then edlogkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edLogkeypress(Sender: TObject; var Key: Char);
begin
if edfil.Enabled=true then edfil.SetFocus;
if edfil.Enabled=false then edfilkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edFilkeypress(Sender: TObject; var Key: Char);
begin
if edsoc.Enabled=true then edsoc.SetFocus;
if edsoc.Enabled=false then edsockeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edSockeypress(Sender: TObject; var Key: Char);
begin
if edpov.Enabled=true then edpov.SetFocus;
if edpov.Enabled=false then edpovkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edPovkeypress(Sender: TObject; var Key: Char);
begin
if edzem.Enabled=true then edzem.SetFocus;
if edzem.Enabled=false then edzemkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edZemkeypress(Sender: TObject; var Key: Char);
begin
if edmat.Enabled=true then edmat.SetFocus;
if edmat.Enabled=false then edmatkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edMatkeypress(Sender: TObject; var Key: Char);
begin
if edfiz.Enabled=true then edfiz.SetFocus;
if edfiz.Enabled=false then edfizkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edFizkeypress(Sender: TObject; var Key: Char);
begin
if edkem.Enabled=true then edkem.SetFocus;
if edkem.Enabled=false then edkemkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edKemkeypress(Sender: TObject; var Key: Char);
begin
if edbio.Enabled=true then edbio.SetFocus;
if edbio.Enabled=false then edbiokeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edBiokeypress(Sender: TObject; var Key: Char);
begin
if edinf.Enabled=true then edinf.SetFocus;
if edinf.Enabled=false then edinfkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edInfkeypress(Sender: TObject; var Key: Char);
begin
if edpig.Enabled=true then edpig.SetFocus;
if edpig.Enabled=false then edpigkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edPiGkeypress(Sender: TObject; var Key: Char);
begin
if edtzk.Enabled=true then edtzk.SetFocus;
if edtzk.Enabled=false then edtzkkeypress(edhrv,key);
end;

procedure TfrmPolugodiste.edTZKkeypress(Sender: TObject; var Key: Char);
begin
if eddod1.Enabled=true then eddod1.SetFocus;
if eddod1.Enabled=false then eddod1keypress(edhrv,key);
end;

procedure TfrmPolugodiste.edDod1keypress(Sender: TObject; var Key: Char);
begin
if eddod2.Enabled=true then eddod2.SetFocus;
if eddod2.Enabled=false then eddod2keypress(edhrv,key);
end;

procedure TfrmPolugodiste.edDod2keypress(Sender: TObject; var Key: Char);
begin
if eddod3.Enabled=true then eddod3.SetFocus;
if eddod3.Enabled=false then eddod3keypress(edhrv,key);
end;

procedure TfrmPolugodiste.edDod3keypress(Sender: TObject; var Key: Char);
begin
if edizb1.Enabled=true then edizb1.SetFocus;
if edizb1.Enabled=false then edizb1keypress(edhrv,key);
end;

procedure TfrmPolugodiste.edIzb1keypress(Sender: TObject; var Key: Char);
begin
if edizb2.Enabled=true then edizb2.SetFocus;
if edizb2.Enabled=false then edizb2keypress(edhrv,key);
end;

procedure TfrmPolugodiste.edIzb2keypress(Sender: TObject; var Key: Char);
begin
if edfak1.Enabled=true then edfak1.SetFocus;
if edfak1.Enabled=false then edfak1keypress(edhrv,key);
end;

procedure TfrmPolugodiste.edFak1keypress(Sender: TObject; var Key: Char);
begin
if edfak2.Enabled=true then edfak2.SetFocus;
end;

end.
