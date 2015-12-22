unit Pretraga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPretraga = class(TForm)
    gbPodaci: TGroupBox;
    lblMBroj2: TLabel;
    lblIme2: TLabel;
    lblPrezime2: TLabel;
    lblDatRod2: TLabel;
    lblSpol2: TLabel;
    lblJMBG2: TLabel;
    lblMjRodj2: TLabel;
    lblDrzRodj2: TLabel;
    lblDrz2: TLabel;
    lblNar2: TLabel;
    lblAdresa2: TLabel;
    lblImeMajke2: TLabel;
    lblPrezimeMajke2: TLabel;
    lblImeOca2: TLabel;
    lblPrezimeOca2: TLabel;
    lblDatUpisa2: TLabel;
    lblVrsta2: TLabel;
    lblIsprava2: TLabel;
    lblStatus2: TLabel;
    lblRazred2: TLabel;
    lblMBroj: TLabel;
    lblIme: TLabel;
    lblPrezime: TLabel;
    lblDatRod: TLabel;
    lblSpol: TLabel;
    lblMjRod: TLabel;
    lblDrzRod: TLabel;
    lblDrz: TLabel;
    lblNar: TLabel;
    lblAdresa: TLabel;
    lblImeMajke: TLabel;
    lblPrezimeMajke: TLabel;
    lblImeOca: TLabel;
    lblPrezimeOca: TLabel;
    lblDatUpisa: TLabel;
    lblVrsta: TLabel;
    lblIsprava: TLabel;
    lblStatus: TLabel;
    lblRazred: TLabel;
    lblJMBG: TLabel;
    gbPretraga: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edMBroj: TEdit;
    lbRezultati: TListBox;
    edIme: TEdit;
    edPrezime: TEdit;
    cbRazred: TComboBox;
    btTrazi: TButton;
    edJMBG: TEdit;
    lbKontrola: TListBox;
    btOdustani: TButton;
    btIzbrisi: TButton;
    btIzmjeni: TButton;
    lblKlasa2: TLabel;
    lblUrBroj2: TLabel;
    lblKlasa: TLabel;
    lblUrBroj: TLabel;
    arh: TCheckBox;
    Label6: TLabel;
    tekst: TLabel;
    check: TEdit;
    procedure btTraziClick(Sender: TObject);
    procedure lbRezultatiClick(Sender: TObject);
    procedure btOdustaniClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btIzbrisiClick(Sender: TObject);
    procedure btIzmjeniClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPretraga: TfrmPretraga;
  fin,kont,br,broj,xp,velbroj:integer;
  trazeni,poc,trenutni,proba,odaberi,naziv1,naziv2,khm1,khm2,helou,nnesto,sspol:string;
  Brojevi:array[0..500] of string[10];
  nizk:array[0..1000] of string;
  nesto:variant;
  penz:boolean;

implementation

uses Glavna, Prijelaz, Izmjena;

{$R *.dfm}

procedure TfrmPretraga.btTraziClick(Sender: TObject);
var kb1,kb2:boolean;
begin
if arh.Checked=true then begin
end;
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
kb1:=false; kb2:=true;
if frmglavna.podaci.Recordset.RecordCount=0 then kb1:=true;
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
if arh.Checked=true then begin
  odaberi:='select * from Arhiva where ';
  if edMBroj.text<>'' then odaberi:=odaberi+'and MBroj='+chr(39)+edMBroj.text+chr(39);
  if edIme.text<>'' then odaberi:=odaberi+'and Ime='+chr(39)+edIme.text+chr(39);
  if edPrezime.text<>'' then odaberi:=odaberi+'and Prezime='+chr(39)+edPrezime.text+chr(39);
  if edJMBG.text<>'' then odaberi:=odaberi+'and JMBG='+chr(39)+edJMBG.text+chr(39);
  if cbRazred.text<>'' then odaberi:=odaberi+'and Razred='+chr(39)+cbRazred.text[2]+chr(39);
  if length(odaberi)<30 then delete(odaberi,21,6) else delete(odaberi,27,4);

  frmglavna.podaci.Close;
  {ako je arhiva, nema razreda}
  frmglavna.podaci.CommandText:=odaberi;
  frmglavna.podaci.ExecuteOptions;
  frmglavna.podaci.Open;
  kb2:=false;
  if frmglavna.podaci.Recordset.RecordCount=0 then kb2:=true;
  while not (frmglavna.podaci.Recordset.eof) do begin
    velbroj:=velbroj+1;
    nesto:=frmglavna.podaci.Recordset.fields.item['Prezime'];
    khm1:=nesto;
    nesto:=frmglavna.podaci.Recordset.fields.item['Ime'];
    khm2:=nesto;
    naziv1:=khm1+' '+khm2;
    nesto:=frmglavna.podaci.Recordset.fields.item['ID'];
    khm1:=nesto;
    nizk[velbroj]:=khm1;
    naziv2:=naziv1+'*'+khm1;
    lbRezultati.Items.Add(naziv1);
    lbKontrola.Items.add(naziv2);
    frmglavna.podaci.Recordset.MoveNext;
  end;
end;
if (kb1=true) and (kb2=true) then application.MessageBox('Nema rezultata koji zadovoljavaju Vaš upit.', 'Registar - pretraga uèenika', mb_OK);
end;

procedure TfrmPretraga.lbRezultatiClick(Sender: TObject);
var i:integer;
begin
poc:=lbKontrola.Items.Strings[lbRezultati.ItemIndex];
trazeni:=copy(poc,pos('*',poc)+1,length(poc)-pos('*',poc));
penz:=false;
for i:=1 to velbroj do if nizk[i]=trazeni then penz:=true;
frmglavna.podaci.Close;
if penz=false then frmglavna.podaci.CommandText:='select * from Ucenici where ID='+trazeni else frmglavna.podaci.CommandText:='select * from Arhiva where ID='+trazeni;
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
trenutni:=trazeni;
nesto:=frmglavna.podaci.Recordset.fields.item['MBroj']; nnesto:=nesto;lblMbroj.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto:=nesto;lblIme.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Prezime']; nnesto:=nesto;lblPrezime.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['DatRod']; nnesto:=nesto;lblDatRod.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Spol']; nnesto:=nesto;lblSpol.Caption:=nnesto; sspol:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['JMBG']; nnesto:=nesto;lblJMBG.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['MjRod']; nnesto:=nesto;lblMjRod.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['DrzRod']; nnesto:=nesto;lblDrzRod.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Drz']; nnesto:=nesto;lblDrz.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Nar']; nnesto:=nesto;lblNar.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Adresa']; nnesto:=nesto;lblAdresa.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['ImeMajke']; nnesto:=nesto;lblImeMajke.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['PrezimeMajke']; nnesto:=nesto;lblPrezimeMajke.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['ImeOca']; nnesto:=nesto;lblImeOca.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['PrezimeOca']; nnesto:=nesto;lblPrezimeOca.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['DatUpisa'];nnesto:=nesto; lblDatUpisa.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Vrsta']; nnesto:=nesto;lblVrsta.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Isprava']; nnesto:=nesto;lblIsprava.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Status']; nnesto:=nesto;lblStatus.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Razred']; nnesto:=nesto;lblRazred.Caption:=nnesto;
if penz=true then lblKlasa.Caption:='-' else begin nesto:=frmglavna.podaci.Recordset.fields.item['Klasa']; nnesto:=nesto;lblKlasa.Caption:=nnesto; end;
if penz=true then lblUrBroj.Caption:='-' else begin nesto:=frmglavna.podaci.Recordset.fields.item['UrBroj']; nnesto:=nesto;lblUrBroj.Caption:=nnesto; end;
tekst.Caption:='';
if penz=true then begin
  nesto:=frmglavna.podaci.Recordset.fields.item['Matura']; nnesto:=nesto;
  if sspol='M' then tekst.Caption:='Uèenik je '+nnesto+'. godine završio srednje školovanje.';
  if sspol='Z' then tekst.Caption:='Uèenica je '+nnesto+'. godine završila srednje školovanje.';
end;
if sspol='M' then begin lblImemajke2.Caption:='Sin majke'; lblImeoca2.Caption:='Sin oca'; end;
if sspol='Z' then begin lblImemajke2.Caption:='Kæi majke'; lblImeoca2.Caption:='Kæi oca'; end;
nesto:=frmglavna.podaci.Recordset.fields.item['Prezime'];
nnesto:=nesto;
helou:=' '+nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Ime'];
nnesto:=nesto;
helou:=helou+', '+nnesto+' ';
gbPodaci.Caption:=helou;

if (lbRezultati.ItemIndex>-1) and (penz=false) then begin btizmjeni.Enabled:=true; btizbrisi.Enabled:=true; end else begin btizmjeni.Enabled:=false; btizbrisi.Enabled:=false; end

end;

procedure TfrmPretraga.btOdustaniClick(Sender: TObject);
begin
frmGlavna.Caption:='Registar';
frmPrijelaz.FormStyle:=fsMDIChild;
frmPrijelaz.WindowState:=wsMaximized;
end;

procedure TfrmPretraga.FormActivate(Sender: TObject);
begin
if check.text='' then begin
lbRezultati.clear;
lbKontrola.Clear;
cbrazred.Clear;
frmGlavna.Caption:='Registar - Pregled i izmjena podataka o uèenicima';
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

lblMbroj.Caption:=''; lblIme.Caption:=''; lblPrezime.Caption:='';lblDatRod.Caption:='';
lblSpol.Caption:='';lblJMBG.Caption:='';lblMjRod.Caption:='';lblDrzRod.Caption:='';
lblDrz.Caption:='';lblNar.Caption:='';lblAdresa.Caption:='';lblImeMajke.Caption:='';
lblPrezimeMajke.Caption:='';lblImeOca.Caption:='';lblPrezimeOca.Caption:='';lblDatUpisa.Caption:='';
lblVrsta.Caption:='';lblIsprava.Caption:='';lblStatus.Caption:='';lblRazred.Caption:='';
lblKlasa.Caption:='';lblUrBroj.Caption:='';lblImeMajke2.Caption:='Sin/kæi majke';
lblImeOca2.Caption:='Sin/kæi oca';edMbroj.Text:='';edIme.Text:='';edPrezime.Text:='';
edJMBG.Text:='';edmbroj.SetFocus;gbpodaci.Caption:=' Podaci o odabranome uèeniku ';
end else begin
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where ID='+check.Text;
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['MBroj']; nnesto:=nesto;lblMbroj.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto:=nesto;lblIme.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Prezime']; nnesto:=nesto;lblPrezime.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['DatRod']; nnesto:=nesto;lblDatRod.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Spol']; nnesto:=nesto;lblSpol.Caption:=nnesto;
if nnesto='M' then begin lblImemajke2.Caption:='Sin majke'; lblImeoca2.Caption:='Sin oca'; end;
if nnesto='Z' then begin lblImemajke2.Caption:='Kæi majke'; lblImeoca2.Caption:='Kæi oca'; end;
nesto:=frmglavna.podaci.Recordset.fields.item['JMBG']; nnesto:=nesto;lblJMBG.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['MjRod']; nnesto:=nesto;lblMjRod.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['DrzRod']; nnesto:=nesto;lblDrzRod.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Drz']; nnesto:=nesto;lblDrz.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Nar']; nnesto:=nesto;lblNar.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Adresa']; nnesto:=nesto;lblAdresa.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['ImeMajke']; nnesto:=nesto;lblImeMajke.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['PrezimeMajke']; nnesto:=nesto;lblPrezimeMajke.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['ImeOca']; nnesto:=nesto;lblImeOca.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['PrezimeOca']; nnesto:=nesto;lblPrezimeOca.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['DatUpisa'];nnesto:=nesto; lblDatUpisa.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Vrsta']; nnesto:=nesto;lblVrsta.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Isprava']; nnesto:=nesto;lblIsprava.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Status']; nnesto:=nesto;lblStatus.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Razred']; nnesto:=nesto;lblRazred.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Klasa']; nnesto:=nesto;lblKlasa.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['UrBroj']; nnesto:=nesto;lblUrBroj.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Prezime'];
nnesto:=nesto;
helou:=' '+nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Ime'];
nnesto:=nesto;
helou:=helou+' '+nnesto+' ';
gbPodaci.Caption:=helou;
check.text:='';
end;
if (lbRezultati.ItemIndex>-1) and (penz=false) then begin btizmjeni.Enabled:=true; btizbrisi.Enabled:=true; end else begin btizmjeni.Enabled:=false; btizbrisi.Enabled:=false; end; 
end;

procedure TfrmPretraga.btIzbrisiClick(Sender: TObject);
label blaa;
begin

if application.MessageBox('Jeste li sigurni da želite obrisati odabrani zapis?', 'Registar - brisanje zapisa', mb_YESNO)=7 then goto blaa;
frmglavna.Baza.open;
frmglavna.Baza.Execute('delete from Ucenici where ID='+trenutni);
frmglavna.Baza.Execute('delete from Polugodiste where ID='+trenutni);
frmglavna.Baza.Execute('delete from Kraj where ID='+trenutni);
frmglavna.Baza.Execute('delete from Matura where ID='+trenutni);
frmglavna.Baza.Execute('delete from Arhiva where ID='+trenutni);
frmglavna.Baza.Execute('delete from Arhivamat where ID='+trenutni);
frmglavna.Baza.Execute('delete from Ocjene1 where ID='+trenutni);
frmglavna.Baza.Execute('delete from Ocjene2 where ID='+trenutni);
frmglavna.Baza.Execute('delete from Ocjene3 where ID='+trenutni);
frmglavna.Baza.Execute('delete from Ocjene4 where ID='+trenutni);
frmglavna.Baza.close;
xp:=lbRezultati.itemindex;
lbRezultati.Items.Delete(xp);
lbKontrola.Items.Delete(xp);
if xp=lbrezultati.items.Count then lbrezultati.ItemIndex:=lbrezultati.items.Count-1 else lbrezultati.ItemIndex:=xp;
str(xp,nnesto);
check.Text:=nnesto;
if lbrezultati.ItemIndex>-1 then begin
poc:=lbKontrola.Items.Strings[lbRezultati.ItemIndex];
trazeni:=copy(poc,pos('*',poc)+1,length(poc)-pos('*',poc));
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where ID='+trazeni;
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
trenutni:=trazeni;
nesto:=frmglavna.podaci.Recordset.fields.item['MBroj']; nnesto:=nesto;lblMbroj.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto:=nesto;lblIme.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Prezime']; nnesto:=nesto;lblPrezime.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['DatRod']; nnesto:=nesto;lblDatRod.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Spol']; nnesto:=nesto;lblSpol.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['JMBG']; nnesto:=nesto;lblJMBG.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['MjRod']; nnesto:=nesto;lblMjRod.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['DrzRod']; nnesto:=nesto;lblDrzRod.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Drz']; nnesto:=nesto;lblDrz.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Nar']; nnesto:=nesto;lblNar.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Adresa']; nnesto:=nesto;lblAdresa.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['ImeMajke']; nnesto:=nesto;lblImeMajke.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['PrezimeMajke']; nnesto:=nesto;lblPrezimeMajke.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['ImeOca']; nnesto:=nesto;lblImeOca.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['PrezimeOca']; nnesto:=nesto;lblPrezimeOca.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['DatUpisa'];nnesto:=nesto; lblDatUpisa.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Vrsta']; nnesto:=nesto;lblVrsta.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Isprava']; nnesto:=nesto;lblIsprava.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Status']; nnesto:=nesto;lblStatus.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Razred']; nnesto:=nesto;lblRazred.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Klasa']; nnesto:=nesto;lblKlasa.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['UrBroj']; nnesto:=nesto;lblUrBroj.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Prezime'];
nnesto:=nesto;
helou:=' '+nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Ime'];
nnesto:=nesto;
helou:=helou+' '+nnesto+' ';
gbPodaci.Caption:=helou;
end else begin
lblMbroj.Caption:=''; lblIme.Caption:=''; lblPrezime.Caption:='';lblDatRod.Caption:='';
lblSpol.Caption:='';lblJMBG.Caption:='';lblMjRod.Caption:='';lblDrzRod.Caption:='';
lblDrz.Caption:='';lblNar.Caption:='';lblAdresa.Caption:='';lblImeMajke.Caption:='';
lblPrezimeMajke.Caption:='';lblImeOca.Caption:='';lblPrezimeOca.Caption:='';lblDatUpisa.Caption:='';
lblVrsta.Caption:='';lblIsprava.Caption:='';lblStatus.Caption:='';lblRazred.Caption:='';
lblKlasa.Caption:='';lblUrBroj.Caption:='';lblImeMajke2.Caption:='Sin/kæi majke';
lblImeOca2.Caption:='Sin/kæi oca';edMbroj.Text:='';edIme.Text:='';edPrezime.Text:='';
edJMBG.Text:='';edmbroj.SetFocus;gbpodaci.Caption:=' Podaci o odabranome uèeniku ';
end;

blaa:
end;

procedure TfrmPretraga.btIzmjeniClick(Sender: TObject);
label blaa2;
begin
frmizmjena.cbrazred.Clear;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Razredi';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
while not (frmglavna.podaci.Recordset.eof) do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto:=nesto;
  frmizmjena.cbrazred.Items.append(nnesto);
  frmglavna.podaci.Recordset.MoveNext;
end;
frmIzmjena.edMBroj.Text:=lblMbroj.Caption;
frmIzmjena.edIme.Text:=lblIme.Caption;
frmIzmjena.edPrezime.Text:=lblPrezime.Caption;
frmIzmjena.edDatRod.Text:=lblDatRod.Caption;
frmIzmjena.edJMBG.Text:=lblJMBG.Caption;
frmIzmjena.edMjRod.Text:=lblMjRod.Caption;
frmIzmjena.edDrzRod.Text:=lblDrzRod.Caption;
frmIzmjena.edDrz.Text:=lblDrz.Caption;
frmIzmjena.edNar.Text:=lblNar.Caption;
frmIzmjena.edAdresa.Text:=lblAdresa.Caption;
frmIzmjena.edImeMajke.Text:=lblImeMajke.Caption;
frmIzmjena.edPrezimeMajke.Text:=lblPrezimeMajke.Caption;
frmIzmjena.edImeOca.Text:=lblImeOca.Caption;
frmIzmjena.edPrezimeOca.Text:=lblPrezimeOca.Caption;
frmIzmjena.edDatUpisa.Text:=lblDatUpisa.Caption;
frmIzmjena.edVrsta.Text:=lblVrsta.Caption;
frmIzmjena.edIsprava.Text:=lblIsprava.Caption;
frmIzmjena.edStatus.Text:=lblStatus.Caption;

frmizmjena.cbrazred.Clear;
frmglavna.podaci3.Close;
frmglavna.podaci3.CommandText:='select * from Razredi order by ime';
frmglavna.podaci3.ExecuteOptions;
frmglavna.podaci3.Open;
frmglavna.podaci3.Recordset.MoveFirst;
while not (frmglavna.podaci3.Recordset.eof) do begin
  nesto:=frmglavna.podaci3.Recordset.fields.item['Ime'].value; if nesto<> null then nnesto:=nesto;
  if nnesto<>'' then frmizmjena.cbrazred.Items.add(nnesto);
  frmglavna.podaci3.Recordset.MoveNext;
end;
frmglavna.podaci3.close;

frmIzmjena.cbRazred.Text:=lblRazred.Caption;
frmIzmjena.edBroj.text:=trazeni;
frmIzmjena.lblKontrola.caption:=lblMbroj.Caption;
frmizmjena.edKlasa.text:=lblklasa.caption;
frmizmjena.edurbroj.Text:=lblurbroj.caption;
if penz=true then frmizmjena.hm.Text:='arhiva' else frmizmjena.hm.Text:='ucenici';
if lblSpol.Caption='M' then frmIzmjena.rbMusko.Checked:=true else frmIzmjena.rbZensko.Checked:=true;
frmGlavna.Caption:='Registar - Izmjena podataka o uèenicima';
frmIzmjena.gbIzmjena.Caption:=' '+lblprezime.Caption+', '+lblIme.Caption+' ';
frmIzmjena.FormStyle:=fsMDIChild;
frmIzmjena.WindowState:=wsMaximized;
blaa2:
end;


end.
