unit Ulaz;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask;
type
  TfrmUlaz = class(TForm)
    btUlaz: TButton;
    lblSifra: TLabel;
    btIzlaz: TButton;
    edtSifra: TEdit;
    Label1: TLabel;
procedure btIzlazClick(Sender: TObject);
    procedure btUlazClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUlaz: TfrmUlaz;
  d:textfile;

implementation

uses Glavna;
{$R *.dfm}
procedure TfrmUlaz.btIzlazClick(Sender: TObject);
begin
application.terminate;
end;
procedure TfrmUlaz.btUlazClick(Sender: TObject);
var ime,sifra,nnesto:string;
    nesto:variant;
begin
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from admin';
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Sifra'].value; nnesto:=nesto;
if nnesto=edtsifra.Text then begin
  frmUlaz.Hide;
  frmglavna.Show;
end else begin
  application.MessageBox('Lozinka neispravna. Molim, pokušajte ponovno.', 'Registar - izmjena zapisa', mb_OK);
  edtsifra.Clear;
  edtsifra.SetFocus;
end;


end;



end.
