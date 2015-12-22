unit Opcenito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmOpcenito = class(TForm)
    gbRazredi: TGroupBox;
    gbDodavanje: TGroupBox;
    edRazred: TEdit;
    edRazrednik1: TEdit;
    btDodaj: TButton;
    lbRazred1: TLabel;
    lbRazrednik1: TLabel;
    gbIzmjena: TGroupBox;
    cbRazred: TComboBox;
    btBrisi: TButton;
    btIzmjeni: TButton;
    lbRazred2: TLabel;
    lbRazrednik2: TLabel;
    edRazrednik2: TEdit;
    gbSkola: TGroupBox;
    edNaziv: TEdit;
    edRavnatelj: TEdit;
    edAdresa: TEdit;
    edMjesto: TEdit;
    lbNaziv: TLabel;
    lbAdresa: TLabel;
    lbMjesto: TLabel;
    lbRavnatelj: TLabel;
    btSpremi: TButton;
    btPovratak: TButton;
    cbKontrola: TComboBox;
    GroupBox1: TGroupBox;
    btPostavke: TButton;
    cbPostavke: TComboBox;
    edPostavke: TEdit;
    Label1: TLabel;
    edSk1: TEdit;
    edSk2: TEdit;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btPovratakClick(Sender: TObject);
    procedure cbRazredClick(Sender: TObject);
    procedure btDodajClick(Sender: TObject);
    procedure btSpremiClick(Sender: TObject);
    procedure btBrisiClick(Sender: TObject);
    procedure btIzmjeniClick(Sender: TObject);
    procedure cbPostavkeClick(Sender: TObject);
    procedure btPostavkeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcenito: TfrmOpcenito;
  nnesto1,nnesto2,poc,trazeni:string;
  nesto:variant;
implementation

uses Glavna, Prijelaz;

{$R *.dfm}

procedure TfrmOpcenito.FormActivate(Sender: TObject);
var prva,sk:string;
begin
cbKontrola.Clear;edRazrednik1.Clear;edRazrednik2.Clear;
frmGlavna.Caption:='Registar - Opæenite postavke o školi';

cbrazred.Clear;
frmglavna.podaci3.Close;
frmglavna.podaci3.CommandText:='select * from Razredi order by ime';
frmglavna.podaci3.ExecuteOptions;
frmglavna.podaci3.Open;
frmglavna.podaci3.Recordset.MoveFirst;
while not (frmglavna.podaci3.Recordset.eof) do begin
  nesto:=frmglavna.podaci3.Recordset.fields.item['Ime'].value; if nesto<> null then nnesto1:=nesto;
  if nnesto1<>'' then cbrazred.Items.add(nnesto1);
  nesto:=frmglavna.podaci3.Recordset.fields.item['ID'].value; if nesto<>null then nnesto2:=nesto;
  if (nnesto1<>'') and (nnesto2<>'') then cbKontrola.items.add(nnesto1+'*'+nnesto2);
  frmglavna.podaci3.Recordset.MoveNext;
end;
frmglavna.podaci3.close;
frmglavna.podaci4.Close;
frmglavna.podaci4.CommandText:='select * from Postavke';
frmglavna.podaci4.ExecuteOptions;
frmglavna.podaci4.Open;
nesto:=frmglavna.podaci4.Recordset.fields.item['Skola']; nnesto1:=nesto; if nnesto1<>' ' then edNaziv.Text:=nnesto1;
nesto:=frmglavna.podaci4.Recordset.fields.item['Adresa']; nnesto1:=nesto;if nnesto1<>' ' then edAdresa.Text:=nnesto1;
nesto:=frmglavna.podaci4.Recordset.fields.item['Mjesto']; nnesto1:=nesto;if nnesto1<>' ' then edMjesto.Text:=nnesto1;
nesto:=frmglavna.podaci4.Recordset.fields.item['Ravnatelj']; nnesto1:=nesto;if nnesto1<>' ' then edRavnatelj.Text:=nnesto1;
nesto:=frmglavna.podaci4.Recordset.fields.item['SkGod']; nnesto1:=nesto;
prva:=nnesto1[1]+nnesto1[2]+nnesto1[3]+nnesto1[4]+nnesto1[5]; edsk1.Text:=prva;
prva:=nnesto1[7]+nnesto1[8]+nnesto1[9]+nnesto1[10]+nnesto1[11]; edsk2.Text:=prva;
frmglavna.podaci4.close;

end;

procedure TfrmOpcenito.btPovratakClick(Sender: TObject);
begin
frmGlavna.Caption:='Registar';
frmPrijelaz.FormStyle:=fsMDIChild;
frmPrijelaz.WindowState:=wsMaximized;
end;

procedure TfrmOpcenito.cbRazredClick(Sender: TObject);
begin
poc:=cbKontrola.Items.Strings[cbRazred.ItemIndex];
trazeni:=copy(poc,pos('*',poc)+1,length(poc)-pos('*',poc));
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Razredi where ID='+trazeni;
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Razrednik']; nnesto1:=nesto;
edRazrednik2.text:=nnesto1;
end;

procedure TfrmOpcenito.btDodajClick(Sender: TObject);
var klap:string;
    tj,tk:boolean;
label blk;
begin
klap:=edrazred.Text;
tj:=false; tk:=false;
if (ord(klap[1])<48) or (ord(klap[1])>57) then tj:=true;
if (ord(klap[2])<65) or (ord(klap[2])>90) then begin
  if (ord(klap[2])<97) or (ord(klap[2])>122) then tj:=true else klap[2]:=chr(ord(klap[2])-32)
end;
if edrazrednik1.text='' then tk:=true;
if tj=true then begin application.MessageBox('Razred je krivo upisan.', 'Registar - spremanje razreda', mb_OK); goto blk; end;
if tk=true then if application.MessageBox('Jeste li sigurni da ne želite upisati razrednika?', 'Registar - spremanje razreda', mb_YESNO)=7 then goto blk;
frmglavna.Baza.Open;
frmglavna.Baza.Execute('insert into Razredi(Ime,Razrednik) values ('+chr(39)+klap+chr(39)+','+chr(39)+edRazrednik1.Text+chr(39)+')');
frmglavna.Baza.Close;
application.MessageBox('Razred uspješno dodan!', 'Registar - dodavanje razreda', mb_OK);
cbRazred.Clear; cbKontrola.Clear;
edRazred.Clear; edRazrednik1.Clear; edRazrednik2.Clear;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Razredi';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
while not (frmglavna.podaci.Recordset.eof) do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto1:=nesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto2:=nesto;
  cbrazred.Items.append(nnesto1);
  cbKontrola.items.append(nnesto1+'*'+nnesto2);
  frmglavna.podaci.Recordset.MoveNext;
end;
frmglavna.podaci.Close;
blk:
end;

procedure TfrmOpcenito.btSpremiClick(Sender: TObject);
var umetanje,sk,sk1,sk2:string;
  i:integer;
  tj:boolean;
label ehm;
begin
if (ednaziv.text='') or (edadresa.text='') or (edmjesto.text='') or (edravnatelj.text='') or (edsk1.Text='') or (edsk2.Text='') then begin
  application.MessageBox('Podaci o školi nužni su za ispis dokumenata, molim ispunite sva polja.', 'Registar - izmjena postavki', mb_OK);
  goto ehm;
end;
tj:=false;
sk1:=edsk1.text; sk2:=edsk2.text;
if length(sk1)>5 then tj:=true; if length(sk2)>5 then tj:=true;
for i:=1 to 4 do if (ord(sk1[i])<48) or (ord(sk2[i])>57) then tj:=true;
for i:=1 to 4 do if (ord(sk2[i])<48) or (ord(sk2[i])>57) then tj:=true;
if tj=true then  begin application.MessageBox('Molim ispravno upišite školsku godinu.', 'Registar - izmjena postavki', mb_OK); goto ehm; end;
if length(sk1)=4 then sk1:=sk1+'.'; if length(sk2)=4 then sk2:=sk2+'.';
frmglavna.Baza.Open;
sk:=sk1+'/'+sk2;
umetanje:='Skola='+chr(39)+edNaziv.text+chr(39)+','+
'Adresa='+chr(39)+edAdresa.text+chr(39)+','+
'Mjesto='+chr(39)+edMjesto.text+chr(39)+','+
'Ravnatelj='+chr(39)+edRavnatelj.text+chr(39)+','+
'SkGod='+chr(39)+sk+chr(39);
frmglavna.Baza.Execute('update Postavke set '+umetanje);
frmglavna.Baza.Close;
application.MessageBox('Podaci o školi uspješno izmijenjeni!', 'Registar - izmjena postavki', mb_OK);
ehm:
end;

procedure TfrmOpcenito.btBrisiClick(Sender: TObject);
label bla;
begin
if application.MessageBox('Jeste li sigurni da želite izbrisati odabrani razred?', 'Registar - brisanje razreda', mb_YESNO)=7 then goto bla;
poc:=cbKontrola.Items.Strings[cbRazred.ItemIndex];
trazeni:=copy(poc,pos('*',poc)+1,length(poc)-pos('*',poc));
frmglavna.Baza.open;
frmglavna.Baza.Execute('delete from Razredi where ID='+trazeni);
frmglavna.Baza.Close;
application.MessageBox('Razred uspješno izbrisan!', 'Registar - brisanje razreda', mb_OK);
cbRazred.Clear; cbKontrola.Clear;
edRazred.Clear; edRazrednik1.Clear; edRazrednik2.Clear;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Razredi';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
while not (frmglavna.podaci.Recordset.eof) do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto1:=nesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto2:=nesto;
  cbrazred.Items.append(nnesto1);
  cbKontrola.items.append(nnesto1+'*'+nnesto2);
  frmglavna.podaci.Recordset.MoveNext;
end;
frmglavna.podaci.Close;
bla:
end;

procedure TfrmOpcenito.btIzmjeniClick(Sender: TObject);
begin
poc:=cbKontrola.Items.Strings[cbRazred.ItemIndex];
trazeni:=copy(poc,pos('*',poc)+1,length(poc)-pos('*',poc));
if edRazrednik2.text='' then edRazrednik2.Text:=' ';
frmglavna.Baza.Open;
frmglavna.Baza.Execute('update Razredi set Razrednik='+chr(39)+edRazrednik2.Text+chr(39)+' where ID='+trazeni);
frmglavna.Baza.Close;
application.MessageBox('Razrednik uspješno izmijenjen!', 'Registar - izmjena razrednika', mb_OK);
end;

procedure TfrmOpcenito.cbPostavkeClick(Sender: TObject);
begin
frmglavna.podaci.Close;
poc:=cbpostavke.Items.Strings[cbpostavke.ItemIndex];
frmglavna.podaci.CommandText:='select * from Postavke';
frmglavna.podaci.open;
if poc='Matièni broj' then begin nesto:=frmglavna.podaci.Recordset.fields.item['MBroj']; nnesto1:=nesto; edpostavke.Text:=nnesto1; end;
if poc='Država roðenja' then begin nesto:=frmglavna.podaci.Recordset.fields.item['Drzrodj']; nnesto1:=nesto; edpostavke.Text:=nnesto1; end;
if poc='Državljanstvo' then begin nesto:=frmglavna.podaci.Recordset.fields.item['Drz']; nnesto1:=nesto; edpostavke.Text:=nnesto1; end;
if poc='Narodnost' then begin nesto:=frmglavna.podaci.Recordset.fields.item['Nar']; nnesto1:=nesto; edpostavke.Text:=nnesto1; end;
if poc='Datum upisa' then begin nesto:=frmglavna.podaci.Recordset.fields.item['Dat']; nnesto1:=nesto; edpostavke.Text:=nnesto1; end;
if poc='Vrsta gimnazije' then begin nesto:=frmglavna.podaci.Recordset.fields.item['Vrsta']; nnesto1:=nesto; edpostavke.Text:=nnesto1; end;
if poc='Status uèenika' then begin nesto:=frmglavna.podaci.Recordset.fields.item['Status']; nnesto1:=nesto; edpostavke.Text:=nnesto1; end;
if poc='Klasa' then begin nesto:=frmglavna.podaci.Recordset.fields.item['Klasa']; nnesto1:=nesto; edpostavke.Text:=nnesto1; end;
if poc='UrBroj' then begin nesto:=frmglavna.podaci.Recordset.fields.item['UrBroj']; nnesto1:=nesto; edpostavke.Text:=nnesto1; end;
frmglavna.podaci.Close;
end;

procedure TfrmOpcenito.btPostavkeClick(Sender: TObject);
begin
frmglavna.Baza.Open;
poc:=cbpostavke.Items.Strings[cbpostavke.ItemIndex];
if poc='Matièni broj' then frmglavna.Baza.Execute('update Postavke set Mbroj='+chr(39)+edpostavke.text+chr(39));
if poc='Država roðenja' then frmglavna.Baza.Execute('update Postavke set DrzRodj='+chr(39)+edpostavke.text+chr(39));
if poc='Državljanstvo' then frmglavna.Baza.Execute('update Postavke set Drz='+chr(39)+edpostavke.text+chr(39));
if poc='Narodnost' then frmglavna.Baza.Execute('update Postavke set Nar='+chr(39)+edpostavke.text+chr(39));
if poc='Datum upisa' then frmglavna.Baza.Execute('update Postavke set Dat='+chr(39)+edpostavke.text+chr(39));
if poc='Vrsta gimnazije' then frmglavna.Baza.Execute('update Postavke set Vrsta='+chr(39)+edpostavke.text+chr(39));
if poc='Status uèenika' then frmglavna.Baza.Execute('update Postavke set Status='+chr(39)+edpostavke.text+chr(39));
if poc='Klasa' then frmglavna.Baza.Execute('update Postavke set Klasa='+chr(39)+edpostavke.text+chr(39));
if poc='UrBroj' then frmglavna.Baza.Execute('update Postavke set UrBroj='+chr(39)+edpostavke.text+chr(39));
frmglavna.Baza.close;
application.MessageBox('Postavke uspješno spremljene.', 'Registar - izmjena razrednika', mb_OK);
end;

end.
