unit Novi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Prijelaz;

type
  TfrmNovi = class(TForm)
    gbNovi: TGroupBox;
    lblMBroj: TLabel;
    lblIme: TLabel;
    lblDatRod: TLabel;
    lblPrezime: TLabel;
    lblSpol: TLabel;
    lblJMBG: TLabel;
    lblMjRodj: TLabel;
    lblNar: TLabel;
    lblDrz: TLabel;
    lblDrzRodj: TLabel;
    edIme: TEdit;
    edJMBG: TEdit;
    edMjRod: TEdit;
    edDrzRod: TEdit;
    edDrz: TEdit;
    edNar: TEdit;
    edPrezime: TEdit;
    edMBroj: TEdit;
    rbMusko: TRadioButton;
    rbZensko: TRadioButton;
    lblAdresa: TLabel;
    lblImeMajke: TLabel;
    lblImeOca: TLabel;
    lblPrezimeMajke: TLabel;
    lblPrezimeOca: TLabel;
    lblIsprava: TLabel;
    lblDatUpisa: TLabel;
    lblVrsta: TLabel;
    lblStatus: TLabel;
    lblRazred: TLabel;
    edAdresa: TEdit;
    edImeMajke: TEdit;
    edPrezimeMajke: TEdit;
    edImeOca: TEdit;
    edPrezimeOca: TEdit;
    edVrsta: TEdit;
    edIsprava: TEdit;
    edStatus: TEdit;
    cbRazred: TComboBox;
    btDodaj: TButton;
    btOdustani: TButton;
    edDatRod: TMaskEdit;
    edDatUpisa: TMaskEdit;
    Label1: TLabel;
    edKlasa: TEdit;
    edUrBroj: TEdit;
    Label2: TLabel;
    procedure btDodajClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btOdustaniClick(Sender: TObject);
    procedure rbMuskoClick(Sender: TObject);
    procedure rbZenskoClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frmNovi: TfrmNovi;
  spol,umetanje,broj,nnesto,jmbg:string;
  brojv,nesto:variant;


implementation

uses Glavna;

{$R *.dfm}

procedure TfrmNovi.btDodajClick(Sender: TObject);
var tt,tk,tj,tr,tb:boolean;
    i:integer;
label nejde;
begin
tt:=false;
tb:=false;
if edMBroj.text='' then begin tb:=true; tt:=true; end;
if edIme.text='' then  begin tb:=true; tt:=true; end;
if edPrezime.text='' then  begin tb:=true; tt:=true; end;
if edDatRod.text='' then  tt:=true;
if edJMBG.text='' then   tt:=true;
if edMjRod.text='' then   tt:=true;
if edDrzRod.text='' then   tt:=true;
if edDrz.text='' then   tt:=true;
if edNar.text='' then   tt:=true;
if edAdresa.text='' then   tt:=true;
if edImeMajke.text='' then  tt:=true;
if edPrezimeMajke.text='' then  tt:=true;
if edImeOca.text='' then   tt:=true;
if edPrezimeOca.text='' then  tt:=true;
if edDatUpisa.text='' then   tt:=true;
if edVrsta.text='' then   tt:=true;
if edIsprava.text='' then   tt:=true;
if edStatus.text='' then   tt:=true;
if edKlasa.text='' then   tt:=true;
if edUrBroj.text='' then   tt:=true;
if cbRazred.text='' then begin tb:=true;  tt:=true; end;
jmbg:=edjmbg.text;
tj:=false;
if length(jmbg)<>13 then tj:=true;
for i:=1 to length(jmbg) do if (ord(jmbg[i])<48) or (ord(jmbg[i])>57) then tj:=true;;
tk:=false;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
while not (frmglavna.podaci.Recordset.eof) do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['MBroj']; nnesto:=nesto;
  if nnesto=edmbroj.Text then tk:=true;
  frmglavna.podaci.Recordset.MoveNext;
end;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Arhiva';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
while not (frmglavna.podaci.Recordset.eof) do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['MBroj']; nnesto:=nesto;
  if nnesto=edmbroj.Text then tk:=true;
  frmglavna.podaci.Recordset.MoveNext;
end;

if tk=true then begin application.MessageBox('Veæ postoji uèenik s takvim matiènim brojem.', 'Registar - spremanje zapisa', mb_OK); edmbroj.SetFocus; goto nejde; end;
if (rbzensko.Checked=false) and (rbMusko.Checked=false) then begin application.MessageBox('     Niste odredili spol uèenika.', 'Registar - spremanje zapisa', mb_OK); goto nejde; end;
if tj=true then begin application.MessageBox('     Neispravan unos JMBGa.', 'Registar - spremanje zapisa', mb_OK); edjmbg.SetFocus; goto nejde; end;
if tb=true then begin application.MessageBox('Morate upisati matièni broj, ime, prezime i razred uèenika.', 'Registar - spremanje zapisa', mb_OK); goto nejde; end;
if tt=true then if application.MessageBox('Neka polja niste upisali. Želite li nastaviti?', 'Registar - spremanje zapisa', mb_YESNO)=7 then goto nejde;
if rbMusko.checked=true then spol:='M' else spol:='Z';
frmglavna.Baza.Open;
umetanje:=chr(39)+
  edMbroj.text+chr(39)+','+chr(39)+
  edIme.text+chr(39)+','+chr(39)+
  edPrezime.text+chr(39)+','+chr(39)+
  edDatRod.text+chr(39)+','+chr(39)+
  spol+chr(39)+','+chr(39)+
  edJMBG.text+chr(39)+','+chr(39)+
  edMjRod.text+chr(39)+','+chr(39)+
  edDrzRod.text+chr(39)+','+chr(39)+
  edDrz.text+chr(39)+','+chr(39)+
  edNar.text+chr(39)+','+chr(39)+
  edAdresa.text+chr(39)+','+chr(39)+
  edImeMajke.text+chr(39)+','+chr(39)+
  edPrezimeMajke.text+chr(39)+','+chr(39)+
  edImeOca.text+chr(39)+','+chr(39)+
  edPrezimeOca.text+chr(39)+','+chr(39)+
  edDatUpisa.text+chr(39)+','+chr(39)+
  edVrsta.text+chr(39)+','+chr(39)+
  edIsprava.text+chr(39)+','+chr(39)+
  edStatus.text+chr(39)+','+chr(39)+
  edKlasa.text+chr(39)+','+chr(39)+
  edUrBroj.text+chr(39)+','+chr(39)+
  cbRazred.text+chr(39);
frmglavna.Baza.Execute('insert into Ucenici(Mbroj,Ime,Prezime,DatRod,Spol,JMBG,MjRod,DrzRod,Drz,Nar,Adresa,ImeMajke,PrezimeMajke,ImeOca,PrezimeOca,DatUpisa,Vrsta,Isprava,Status,Klasa,UrBroj,Razred) values('+umetanje+')');
frmglavna.Baza.Close;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici order by ID';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
frmglavna.podaci.Recordset.MoveLast;
brojv:=frmglavna.podaci.recordset.Fields.Item['ID'];
broj:=brojv;
frmglavna.Baza.Open;
frmglavna.Baza.Execute('insert into Polugodiste(ID) values('+broj+')');
frmglavna.Baza.Execute('insert into Kraj(ID) values('+broj+')');
frmglavna.Baza.Close;
application.MessageBox('       Zapis uspješno spremljen!', 'Registar - spremanje zapisa', mb_OK);
edMbroj.SetFocus;
edMbroj.Text:='';
edIme.Text:='';
edPrezime.Text:='';
edDatRod.Text:='';
if rbMusko.checked=true then rbMusko.Checked:=false;
if rbZensko.checked=true then rbZensko.Checked:=false;
edJMBG.Text:='';
edMjRod.Text:='';
edDrzRod.Text:='';
edDrz.Text:='';
edNar.Text:='';
edAdresa.Text:='';
edImeMajke.Text:='';
edImeOca.Text:='';
edPrezimeMajke.Text:='';
edPrezimeOca.Text:='';
edDatUpisa.Text:='';
edVrsta.Text:='';
edIsprava.Text:='';
edStatus.Text:='';
edKlasa.Text:='';
edUrBroj.Text:='';
cbRazred.Text:='';
frmglavna.podaci4.Close;
frmglavna.podaci4.CommandText:='select * from Postavke';
frmglavna.podaci4.ExecuteOptions;
frmglavna.podaci4.Open;
nesto:='';
frmglavna.podaci4.Recordset.MoveFirst;
if frmglavna.podaci4.recordset.eof=false then begin
nesto:=frmglavna.podaci4.Recordset.fields.item['Mbroj'].value;  if nesto<> null then nnesto:=nesto; edmbroj.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['drzrodj'].value; if nesto<> null then  nnesto:=nesto; eddrzrod.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['drz'].value; if nesto<> null then  nnesto:=nesto; eddrz.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['nar'].value; if nesto<> null then  nnesto:=nesto; ednar.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['Dat'].value; if nesto<> null then  nnesto:=nesto; eddatupisa.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['vrsta'].value; if nesto<> null then  nnesto:=nesto; edvrsta.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['status'].value;  if nesto<> null then nnesto:=nesto; edstatus.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['klasa'].value; if nesto<> null then  nnesto:=nesto; edklasa.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['urbroj'].value;  if nesto<> null then nnesto:=nesto; edurbroj.Text:=nnesto;
end;
edMbroj.SetFocus;
frmglavna.podaci4.close;
nejde:
end;

procedure TfrmNovi.FormActivate(Sender: TObject);
begin
frmGlavna.Caption:='Registar - Unos novog uèenika';
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

edMbroj.Text:='';
edIme.Text:='';
edPrezime.Text:='';
edDatRod.Text:='';
if rbMusko.checked=true then rbMusko.Checked:=false;
if rbZensko.checked=true then rbZensko.Checked:=false;
edJMBG.Text:='';
edMjRod.Text:='';
edDrzRod.Text:='';
edDrz.Text:='';
edNar.Text:='';
edAdresa.Text:='';
edImeMajke.Text:='';
edImeOca.Text:='';
edPrezimeMajke.Text:='';
edPrezimeOca.Text:='';
edDatUpisa.Text:='';
edVrsta.Text:='';
edIsprava.Text:='';
edStatus.Text:='';
edKlasa.Text:='';
edUrBroj.Text:='';
cbRazred.Text:='';

frmglavna.podaci4.Close;
frmglavna.podaci4.CommandText:='select * from Postavke';
frmglavna.podaci4.ExecuteOptions;
frmglavna.podaci4.Open;
nesto:='';
frmglavna.podaci4.Recordset.MoveFirst;
if frmglavna.podaci4.recordset.eof=false then begin
nesto:=frmglavna.podaci4.Recordset.fields.item['Mbroj'].value;  if nesto<> null then nnesto:=nesto; edmbroj.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['drzrodj'].value; if nesto<> null then  nnesto:=nesto; eddrzrod.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['drz'].value; if nesto<> null then  nnesto:=nesto; eddrz.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['nar'].value; if nesto<> null then  nnesto:=nesto; ednar.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['Dat'].value; if nesto<> null then  nnesto:=nesto; eddatupisa.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['vrsta'].value; if nesto<> null then  nnesto:=nesto; edvrsta.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['status'].value;  if nesto<> null then nnesto:=nesto; edstatus.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['klasa'].value; if nesto<> null then  nnesto:=nesto; edklasa.Text:=nnesto;
nesto:=frmglavna.podaci4.Recordset.fields.item['urbroj'].value;  if nesto<> null then nnesto:=nesto; edurbroj.Text:=nnesto;
end;
edMbroj.SetFocus;
frmglavna.podaci4.close;
end;

procedure TfrmNovi.btOdustaniClick(Sender: TObject);
begin
frmGlavna.Caption:='Registar';
frmPrijelaz.FormStyle:=fsMDIChild;
frmPrijelaz.WindowState:=wsMaximized;
end;

procedure TfrmNovi.rbMuskoClick(Sender: TObject);
begin
if rbMusko.Checked=true then begin
  lblImemajke.Caption:='Sin majke';
  lblImeOca.caption:='Sin oca';
end;
end;

procedure TfrmNovi.rbZenskoClick(Sender: TObject);
begin
if rbZensko.Checked=true then begin
  lblImemajke.Caption:='Kæi majke';
  lblImeOca.caption:='Kæi oca';
end;
end;




end.
