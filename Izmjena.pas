unit Izmjena;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TfrmIzmjena = class(TForm)
    gbIzmjena: TGroupBox;
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
    edAdresa: TEdit;
    edImeMajke: TEdit;
    edPrezimeMajke: TEdit;
    edImeOca: TEdit;
    edPrezimeOca: TEdit;
    edVrsta: TEdit;
    edIsprava: TEdit;
    edStatus: TEdit;
    cbRazred: TComboBox;
    edDatRod: TMaskEdit;
    edDatUpisa: TMaskEdit;
    btIzmjeni: TButton;
    btPovratak: TButton;
    btOdustani: TButton;
    lblKontrola: TLabel;
    edBroj: TEdit;
    Label1: TLabel;
    edKlasa: TEdit;
    edUrBroj: TEdit;
    Label2: TLabel;
    hm: TEdit;
    procedure btIzmjeniClick(Sender: TObject);
    procedure btPovratakClick(Sender: TObject);
    procedure btOdustaniClick(Sender: TObject);
    procedure rbMuskoClick(Sender: TObject);
    procedure rbZenskoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmIzmjena: TfrmIzmjena;
  spol,umetanje,jmbg:string;

implementation

uses Pretraga, Prijelaz, Glavna;

{$R *.dfm}

procedure TfrmIzmjena.btIzmjeniClick(Sender: TObject);
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

if (rbzensko.Checked=false) and (rbMusko.Checked=false) then begin application.MessageBox('     Niste odredili spol uèenika.', 'Registar - izmjena zapisa', mb_OK); goto nejde; end;
if tj=true then begin application.MessageBox('     Neispravan unos JMBGa.', 'Registar - izmjena zapisa', mb_OK); edjmbg.SetFocus; goto nejde; end;
if tb=true then begin application.MessageBox('Morate upisati matièni broj, ime, prezime i razred uèenika.', 'Registar - izmjena zapisa', mb_OK); goto nejde; end;
if tt=true then if application.MessageBox('Neka polja niste upisali. Želite li nastaviti?', 'Registar - izmjena zapisa', mb_YESNO)=7 then goto nejde;

if rbMusko.checked=true then spol:='M' else spol:='Z';
frmglavna.Baza.Open;
umetanje:='MBroj='+chr(39)+edMBroj.text+chr(39)+','+
'Ime='+chr(39)+edIme.text+chr(39)+','+
'Prezime='+chr(39)+edPrezime.text+chr(39)+','+
'DatRod='+chr(39)+edDatRod.text+chr(39)+','+
'Spol='+chr(39)+spol+chr(39)+','+
'JMBG='+chr(39)+edJMBG.text+chr(39)+','+
'MjRod='+chr(39)+edMjRod.text+chr(39)+','+
'DrzRod='+chr(39)+edDrzRod.text+chr(39)+','+
'Drz='+chr(39)+edDrz.text+chr(39)+','+
'Nar='+chr(39)+edNar.text+chr(39)+','+
'Adresa='+chr(39)+edAdresa.text+chr(39)+','+
'ImeMajke='+chr(39)+edImeMajke.text+chr(39)+','+
'PrezimeMajke='+chr(39)+edPrezimeMajke.text+chr(39)+','+
'ImeOca='+chr(39)+edImeOca.text+chr(39)+','+
'PrezimeOca='+chr(39)+edPrezimeOca.text+chr(39)+','+
'DatUpisa='+chr(39)+edDatUpisa.text+chr(39)+','+
'Vrsta='+chr(39)+edVrsta.text+chr(39)+','+
'Isprava='+chr(39)+edIsprava.text+chr(39)+','+
'Status='+chr(39)+edStatus.text+chr(39)+','+
'Klasa='+chr(39)+edklasa.text+chr(39)+','+
'UrBroj='+chr(39)+edurbroj.text+chr(39)+','+
'Razred='+chr(39)+cbRazred.text+chr(39);
frmglavna.Baza.Execute('update '+hm.text+' set '+umetanje+' where ID='+edBroj.Text);
frmglavna.Baza.Close;
application.MessageBox('    Zapis uspješno izmijenjen!', 'Registar - izmjena zapisa', mb_OK);
frmpretraga.check.Text:=edbroj.Text;
frmPretraga.FormStyle:=fsMDIChild;
frmPretraga.WindowState:=wsMaximized;
nejde:
end;

procedure TfrmIzmjena.btPovratakClick(Sender: TObject);
begin
frmpretraga.check.Text:=edbroj.Text;
frmPretraga.FormStyle:=fsMDIChild;
frmPretraga.WindowState:=wsMaximized;
end;

procedure TfrmIzmjena.btOdustaniClick(Sender: TObject);
begin
frmPrijelaz.FormStyle:=fsMDIChild;
frmPrijelaz.WindowState:=wsMaximized;
end;


procedure TfrmIzmjena.rbMuskoClick(Sender: TObject);
begin
if rbMusko.Checked=true then begin
  lblImemajke.Caption:='Sin majke';
  lblImeOca.caption:='Sin oca';
end;
end;

procedure TfrmIzmjena.rbZenskoClick(Sender: TObject);
begin
if rbZensko.Checked=true then begin
  lblImemajke.Caption:='Kæi majke';
  lblImeOca.caption:='Kæi oca';
end;
end;

end.
