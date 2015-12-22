unit Ponavljaci;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPonavljaci = class(TForm)
    lbRezultati: TListBox;
    lbpon: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblIme: TLabel;
    lblMBroj: TLabel;
    lblRazred: TLabel;
    cbRazred: TComboBox;
    btSpremi: TButton;
    lbKontrola: TListBox;
    btZavrsi: TButton;
    procedure FormActivate(Sender: TObject);
    procedure lbRezultatiClick(Sender: TObject);
    procedure btSpremiClick(Sender: TObject);
    procedure btZavrsiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPonavljaci: TfrmPonavljaci;
  poc,trazeni:string;

implementation

uses Glavna, PrijelazSkGod;

{$R *.dfm}

procedure TfrmPonavljaci.FormActivate(Sender: TObject);
var nesto:variant;
    nnesto,khm1,khm2,nnesto1,nnesto2,kbr,naziv1,naziv2:string;
    br,i:integer;
    brojevi:array[1..100] of string;
begin
cbrazred.Clear; lbkontrola.Clear; lbrezultati.Clear;
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

frmglavna.podaci3.Close;
frmglavna.podaci3.CommandText:='select * from Ponavljaci';
frmglavna.podaci3.ExecuteOptions;
frmglavna.podaci3.Open;
frmglavna.podaci3.Recordset.MoveFirst; br:=0;
while not (frmglavna.podaci3.Recordset.eof) do begin
  br:=br+1;
  nesto:=frmglavna.podaci3.Recordset.fields.item['broj']; nnesto:=nesto;
  brojevi[br]:=nnesto;
  frmglavna.podaci3.Recordset.MoveNext;
end;

for i:=1 to br do begin
  kbr:=brojevi[i];
  frmglavna.podaci3.Close;
  frmglavna.podaci3.CommandText:='select * from Ucenici where id='+kbr;
  frmglavna.podaci3.ExecuteOptions;
  frmglavna.podaci3.Open;
  nesto:=frmglavna.podaci3.Recordset.fields.item['Prezime'];
  khm1:=nesto;
  nesto:=frmglavna.podaci3.Recordset.fields.item['Ime'];
  khm2:=nesto;
  naziv1:=khm1+' '+khm2;
  nesto:=frmglavna.podaci3.Recordset.fields.item['ID'];
  khm1:=nesto;
  naziv2:=naziv1+'*'+khm1;
  lbRezultati.Items.Add(naziv1);
  lbKontrola.Items.add(naziv2);
  frmglavna.podaci3.Recordset.MoveNext;
end;
frmglavna.podaci3.close;


end;

procedure TfrmPonavljaci.lbRezultatiClick(Sender: TObject);
var nesto:variant;
    nnesto,khm1,khm2,nnesto1,nnesto2,kbr,naziv1,naziv2:string;
    br,i:integer;
begin
poc:=lbKontrola.Items.Strings[lbRezultati.ItemIndex];
trazeni:=copy(poc,pos('*',poc)+1,length(poc)-pos('*',poc));
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where ID='+trazeni;
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['MBroj']; nnesto:=nesto;lblMbroj.Caption:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto1:=nesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Prezime']; nnesto2:=nesto;
lblime.Caption:=nnesto2+' '+nnesto1;
nesto:=frmglavna.podaci.Recordset.fields.item['Razred']; nnesto:=nesto;lblrazred.Caption:=nnesto;
cbrazred.Text:=nnesto;
frmglavna.podaci.close;
end;

procedure TfrmPonavljaci.btSpremiClick(Sender: TObject);
begin
frmglavna.Baza.Open;
frmglavna.baza.Execute('update ucenici set razred='+chr(39)+cbrazred.text+chr(39)+' where ID='+trazeni);
frmglavna.Baza.close;
application.MessageBox('Zapis uspješno spremljen.', 'Registar - ponavljaèi', mb_OK)
end;

procedure TfrmPonavljaci.btZavrsiClick(Sender: TObject);
begin
frmprijelazskgod.kp.text:='nesto';
frmponavljaci.Hide;
frmprijelazskgod.show;
frmprijelazskgod.Hide;
end;

end.
