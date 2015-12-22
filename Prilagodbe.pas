unit Prilagodbe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPrilagodbe = class(TForm)
    gbPisac: TGroupBox;
    btPisac: TButton;
    gbSifra: TGroupBox;
    lbStara: TLabel;
    lbNova: TLabel;
    lbPotvrda: TLabel;
    edStara: TEdit;
    edNova: TEdit;
    edPotvrda: TEdit;
    btSifra: TButton;
    btPovratak: TButton;
    procedure btPisacClick(Sender: TObject);
    procedure btPovratakClick(Sender: TObject);
    procedure btSifraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrilagodbe: TfrmPrilagodbe;
  nnesto:string;
  nesto:variant;

implementation

uses Glavna, Prijelaz;

{$R *.dfm}

procedure TfrmPrilagodbe.btPisacClick(Sender: TObject);
begin
frmglavna.Printer.Execute;
end;

procedure TfrmPrilagodbe.btPovratakClick(Sender: TObject);
begin
frmGlavna.Caption:='Registar';
frmPrijelaz.FormStyle:=fsMDIChild;
frmPrijelaz.WindowState:=wsMaximized;
end;

procedure TfrmPrilagodbe.btSifraClick(Sender: TObject);
var nova,stara,potvrda:string;
    k:integer;
begin
nova:=edNova.text;
stara:=edStara.text;
potvrda:=edPotvrda.text;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Admin';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Sifra']; nnesto:=nesto;
frmglavna.podaci.close;
k:=0;
if (k=0) and (nnesto<>stara) then begin
  application.MessageBox('Kriva lozinka!', 'Registar - greška', mb_OK);
  k:=1;
  ednova.Clear; edstara.Clear; edPotvrda.Clear;
  ednova.SetFocus;
end;
if (k=0) and (nova<>potvrda) then begin
  application.MessageBox('Kriva potvrda!', 'Registar - greška', mb_OK);
  k:=1;
  ednova.Clear; edstara.Clear; edPotvrda.Clear;
  ednova.SetFocus;
end;
if (nova=potvrda) and (stara=nnesto) then begin
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('update Admin set Sifra='+chr(39)+nova+chr(39));
  frmglavna.baza.close;
  application.MessageBox('Lozinka uspješno promijenjena!', 'Registar - promjena lozinke', mb_OK);
  ednova.Clear; edstara.Clear; edPotvrda.Clear;
  ednova.SetFocus;
end;

end;

procedure TfrmPrilagodbe.FormActivate(Sender: TObject);
begin
frmGlavna.Caption:='Registar - Prilagodba programa';
end;

end.
