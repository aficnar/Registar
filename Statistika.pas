unit Statistika;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RpCon, RpBase, RpSystem, RpDefine, RpRave,
  RVClass, RVProj, RVCsStd, ExtCtrls;

type
  TfrmStatistika = class(TForm)
    gbIspis: TGroupBox;
    lblIzvjesce: TLabel;
    lblSvjedodzba: TLabel;
    rbskolska: TRadioButton;
    rbrazredna: TRadioButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    rbkraj: TRadioButton;
    rbpol: TRadioButton;
  GroupBox2: TGroupBox;
    cbrazredna: TComboBox;
    lbrazredna: TLabel;
    Label3: TLabel;
    rbispis: TRadioButton;
    rbprev: TRadioButton;
    Label4: TLabel;
    rbfile: TRadioButton;
    Label5: TLabel;
    btPovratak: TButton;
    lblpdf: TLabel;
    lblhtml: TLabel;
    lblSkr: TLabel;
    rbskr: TCheckBox;
    rbpdf: TCheckBox;
    rbhtml: TCheckBox;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape1: TShape;
    Shape5: TShape;
    Shape6: TShape;
    btOdustani: TButton;
    procedure FormActivate(Sender: TObject);
    procedure rbrazrednaClick(Sender: TObject);
    procedure rbskolskaClick(Sender: TObject);
    procedure btPovratakClick(Sender: TObject);
    procedure rbfileClick(Sender: TObject);
    procedure rbprevClick(Sender: TObject);
    procedure rbispisClick(Sender: TObject);
    procedure btOdustaniClick(Sender: TObject);
    procedure rbhtmlClick(Sender: TObject);
    procedure rbpdfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  frmStatistika: TfrmStatistika;
  nnesto,nnesto1,nnesto2:string;
  nesto:variant;
  naziv1,naziv2,poc,trazeni,trenutni,odaberi,khm1,khm2,helou,umetanje,osl:string;
  nom,jmbg,spol,roditelji,rodjen,datumrodjenja,mjestorodjenja:string;
  drzavljanstvo,narodnost,hrv,eng,njem,lat,grc,lik,glz,psi,log,fil,soc,pov,zem,mat,fiz:string;
  kem,bio,inf,pig,tzk,dodatni1,dodatni2,dodatni3,dod1,dod2,dod3,izborni1,izborni2,izb1,izb2,izb11,izb12:string;
  fakultativni1,fakultativni2,fak1,fak2,ucenik,uspjeh,zavrsio,izostanci,datum:string;
  stra:TRavePage;
  komp:TRaveText;

implementation

uses Glavna, Prijelaz;

{$R *.dfm}

procedure TfrmStatistika.FormActivate(Sender: TObject);
begin
cbrazredna.Clear;
frmGlavna.Caption:='Registar - Pregled i ispis statistike';
cbrazredna.Enabled:=false;
lbrazredna.Enabled:=false;
lblpdf.Enabled:=false;
lblhtml.Enabled:=false;
rbpdf.Enabled:=false;
rbhtml.Enabled:=false;
cbrazredna.Enabled:=false;
lbrazredna.Enabled:=false;
rbskr.Enabled:=false;
lblskr.Enabled:=false;
rbrazredna.Checked:=false;
rbskolska.Checked:=false;
rbpol.Checked:=false;
rbkraj.Checked:=false;
rbispis.Checked:=false;
rbprev.Checked:=false;
rbfile.Checked:=false;

cbrazredna.Clear;
frmglavna.podaci3.Close;
frmglavna.podaci3.CommandText:='select * from Razredi order by ime';
frmglavna.podaci3.ExecuteOptions;
frmglavna.podaci3.Open;
frmglavna.podaci3.Recordset.MoveFirst;
while not (frmglavna.podaci3.Recordset.eof) do begin
  nesto:=frmglavna.podaci3.Recordset.fields.item['Ime'].value; if nesto<> null then nnesto:=nesto;
  if nnesto<>'' then cbrazredna.Items.add(nnesto);
  frmglavna.podaci3.Recordset.MoveNext;
end;
frmglavna.podaci3.close;

end;

procedure TfrmStatistika.rbrazrednaClick(Sender: TObject);
begin
if rbrazredna.Checked=true then begin
  cbrazredna.Enabled:=true;
  lbrazredna.Enabled:=true;
  rbskr.Enabled:=true;
  lblskr.Enabled:=true;
end;
end;

procedure TfrmStatistika.rbskolskaClick(Sender: TObject);
begin
if rbskolska.Checked=true then begin
  cbrazredna.Enabled:=false;
  cbrazredna.Text:='';
  lbrazredna.Enabled:=false;
  rbskr.Enabled:=false;
  rbskr.Checked:=false;
  lblskr.Enabled:=false;
end;
end;

procedure TfrmStatistika.btPovratakClick(Sender: TObject);
var jbr1, nbr1, oc1, br1,
jbr2, nbr2, oc2, br2,
jbr3, nbr3, oc3, br3,
jbr4, nbr4, oc4, br4,
jbr5, nbr5, oc5, br5,
jbr6, nbr6, oc6, br6,
jbr7, nbr7, oc7, br7,
jbr8, nbr8, oc8, br8,
jbr9, nbr9, oc9, br9,
jbr10, nbr10, oc10, br10,
jbr11, nbr11, oc11, br11,
jbr12, nbr12, oc12, br12,
jbr13, nbr13, oc13, br13,
jbr14, nbr14, oc14, br14,
jbr15, nbr15, oc15, br15,
jbr16, nbr16, oc16, br16,
jbr17, nbr17, oc17, br17,
jbr18, nbr18, oc18, br18,
jbr19, nbr19, oc19, br19, k, ind:integer;
i,v1,v2,c,brojac,uk,neo,ned,vk:integer;
opr,ne,vx,nneo,nned,jez1,jez2,prk,kk,skola,adresa,naslov,bb,kraz,razk,aa,ab,datgod,datoteka:string;
niz,nizr:array[1..100] of string;
m,z,ukopr,ukneopr,jedna,dvije,tri,ukneo,odl,vd,dob,dov,kbr,j,ind1:integer;
pr,indr,ukpr,uksr,suksr:real;
rum,ruz,ruodl,ruvd,rudob,rudov,rujedna,rudvije,rutri,
brojacrazreda,ruopr,runeopr,runeo:integer;
sum,suz,suodl,suvd,sudob,sudov,sujedna,sudvije,sutri,
suopr,suneopr,suneo,velbroj,bug:integer;
label neide;
begin
bug:=0;
if (rbfile.Checked=true) and (rbpdf.Checked=false) and (rbhtml.Checked=false) then bug:=3;
if (rbrazredna.Checked=true) and (cbrazredna.Text='') then bug:=2;
if (rbskolska.Checked=false) and (rbrazredna.Checked=false) then bug:=1;
if (rbkraj.Checked=false) and (rbpol.Checked=false) then bug:=1;
if (rbispis.Checked=false) and (rbprev.Checked=false) and (rbfile.Checked=false) then bug:=1;

if bug>0 then begin
  if bug=1 then begin application.MessageBox('Potrebno je u svakom polju odabrati nešto.', 'Registar - statistika', mb_OK); goto neide; end;
  if bug=2 then begin application.MessageBox('Potrebno je odabrati razred.', 'Registar - statistika', mb_OK); goto neide; end;
  if bug=3 then begin application.MessageBox('Potrebno je odabrati format datoteke.', 'Registar - statistika', mb_OK); goto neide; end;
end;

if (rbrazredna.Checked=true) and (rbskr.checked=false) then begin
kraz:=cbrazredna.text;
jbr1:=0; nbr1:=0; oc1:=0; br1:=0;
jbr2:=0; nbr2:=0; oc2:=0; br2:=0;
jbr3:=0; nbr3:=0; oc3:=0; br3:=0;
jbr4:=0; nbr4:=0; oc4:=0; br4:=0;
jbr5:=0; nbr5:=0; oc5:=0; br5:=0;
jbr6:=0; nbr6:=0; oc6:=0; br6:=0;
jbr7:=0; nbr7:=0; oc7:=0; br7:=0;
jbr8:=0; nbr8:=0; oc8:=0; br8:=0;
jbr9:=0; nbr9:=0; oc9:=0; br9:=0;
jbr10:=0; nbr10:=0; oc10:=0; br10:=0;
jbr11:=0; nbr11:=0; oc11:=0; br11:=0;
jbr12:=0; nbr12:=0; oc12:=0; br12:=0;
jbr13:=0; nbr13:=0; oc13:=0; br13:=0;
jbr14:=0; nbr14:=0; oc14:=0; br14:=0;
jbr15:=0; nbr15:=0; oc15:=0; br15:=0;
jbr16:=0; nbr16:=0; oc16:=0; br16:=0;
jbr17:=0; nbr17:=0; oc17:=0; br17:=0;
jbr18:=0; nbr18:=0; oc18:=0; br18:=0;
jbr19:=0; nbr19:=0; oc19:=0; br19:=0;

if kraz[1]='4' then begin
if rbpol.Checked=true then frmglavna.rejv2.ProjectFile:='razredna4p.rav' else frmglavna.rejv2.ProjectFile:='razredna4k.rav';
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where Razred='+chr(39)+cbrazredna.Text+chr(39)+' order by prezime';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; k:=0;
while not frmglavna.podaci.Recordset.eof do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto;
  k:=k+1;
  niz[k]:=nnesto;
  frmglavna.podaci.Recordset.MoveNext;
end;

frmglavna.podaci.close;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Postavke';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Skola']; nnesto:=nesto;
skola:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Adresa']; nnesto1:=nesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Mjesto']; nnesto2:=nesto;
adresa:=nnesto1+', '+nnesto2;
nesto:=frmglavna.podaci.Recordset.fields.item['Skgod']; nnesto:=nesto; datgod:=nnesto;
insert('_',datgod,pos('/',datgod)); delete(datgod,pos('/',datgod),1);
if rbpol.Checked=true then naslov:='Izvješæe na kraju 1. polugodišta školske godine '+nnesto else naslov:='Izvješæe na kraju školske godine '+nnesto;
frmglavna.podaci.close;


ind:=1;
frmglavna.rejv2.open;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    komp:=FindRaveComponent('skola',stra) as TRaveText; komp.Text:=skola;
    komp:=FindRaveComponent('adresa',stra) as TRaveText; komp.Text:=adresa;
    komp:=FindRaveComponent('naslov',stra) as TRaveText; komp.Text:=naslov;
    komp:=FindRaveComponent('razred',stra) as TRaveText; komp.Text:=cbrazredna.Text;
end;

for i:=1 to k do begin
  trazeni:=niz[i];
  frmglavna.podaci.Close;
  frmglavna.podaci.CommandText:='select * from Ucenici where ID='+trazeni;
  frmglavna.podaci.ExecuteOptions;
  frmglavna.podaci.Open;
  frmglavna.podaci2.Close;
  if rbpol.Checked=true then frmglavna.podaci2.CommandText:='select * from Polugodiste where ID='+trazeni else frmglavna.podaci2.CommandText:='select * from Kraj where ID='+trazeni;
  frmglavna.podaci2.ExecuteOptions;
  frmglavna.podaci2.Open;
  nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto1:=nesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Prezime']; nnesto2:=nesto;
  nom:=nnesto2+' '+nnesto1;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Opravdani']; nnesto1:=nesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Neopravdani']; nnesto2:=nesto;
  val(nnesto1,v1,c); val(nnesto2,v2,c);
  opr:=nnesto1; ne:=nnesto2;
  str(v1+v2,vx);
  brojac:=0; uk:=0; ned:=0; neo:=0;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Hrv']; nnesto:=nesto;
  if nnesto='' then hrv:='-' else begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr1:=jbr1+1; end;
    if vk=0 then begin neo:=neo+1; nbr1:=nbr1+1; end;
    if vk<>0 then begin br1:=br1+1; oc1:=oc1+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['1jez']; nnesto:=nesto;
  if nnesto='' then jez1:='-' else begin
    val(nnesto,vk,c); jez1:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr2:=jbr2+1; end;
    if vk=0 then begin neo:=neo+1; nbr2:=nbr2+1; end;
    if vk<>0 then begin br2:=br2+1; oc2:=oc2+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['2jez']; nnesto:=nesto;
  if nnesto='' then jez2:='-' else begin
    val(nnesto,vk,c); jez2:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr3:=jbr3+1; end;
    if vk=0 then begin neo:=neo+1; nbr3:=nbr3+1; end;
    if vk<>0 then begin br3:=br3+1; oc3:=oc3+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fil']; nnesto:=nesto;
  if nnesto='' then fil:='-' else begin
    val(nnesto,vk,c); fil:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr4:=jbr4+1; end;
    if vk=0 then begin neo:=neo+1; nbr4:=nbr4+1; end;
    if vk<>0 then begin br4:=br4+1; oc4:=oc4+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['pig']; nnesto:=nesto;
  if nnesto='' then pig:='-' else begin
    val(nnesto,vk,c); pig:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr5:=jbr5+1; end;
    if vk=0 then begin neo:=neo+1; nbr5:=nbr5+1; end;
    if vk<>0 then begin br5:=br5+1; oc5:=oc5+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['pov']; nnesto:=nesto;
  if nnesto='' then pov:='-' else begin
    val(nnesto,vk,c); pov:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr6:=jbr6+1; end;
    if vk=0 then begin neo:=neo+1; nbr6:=nbr6+1; end;
    if vk<>0 then begin br6:=br6+1; oc6:=oc6+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['zem']; nnesto:=nesto;
  if nnesto='' then zem:='-' else begin
    val(nnesto,vk,c); zem:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr7:=jbr7+1; end;
    if vk=0 then begin neo:=neo+1; nbr7:=nbr7+1; end;
    if vk<>0 then begin br7:=br7+1; oc7:=oc7+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['mat']; nnesto:=nesto;
  if nnesto='' then mat:='-' else begin
    val(nnesto,vk,c); mat:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr8:=jbr8+1; end;
    if vk=0 then begin neo:=neo+1; nbr8:=nbr8+1; end;
    if vk<>0 then begin br8:=br8+1; oc8:=oc8+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fiz']; nnesto:=nesto;
  if nnesto='' then fiz:='-' else begin
    val(nnesto,vk,c); fiz:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr9:=jbr9+1; end;
    if vk=0 then begin neo:=neo+1; nbr9:=nbr9+1; end;
    if vk<>0 then begin br9:=br9+1; oc9:=oc9+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['kem']; nnesto:=nesto;
  if nnesto='' then kem:='-' else begin
    val(nnesto,vk,c); kem:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr10:=jbr10+1; end;
    if vk=0 then begin neo:=neo+1; nbr10:=nbr10+1; end;
    if vk<>0 then begin br10:=br10+1; oc10:=oc10+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['bio']; nnesto:=nesto;
  if nnesto='' then bio:='-' else begin
    val(nnesto,vk,c); bio:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr11:=jbr11+1; end;
    if vk=0 then begin neo:=neo+1; nbr11:=nbr11+1; end;
    if vk<>0 then begin br11:=br11+1; oc11:=oc11+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['inf']; nnesto:=nesto;
  if nnesto='' then inf:='-' else begin
    val(nnesto,vk,c); inf:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr12:=jbr12+1; end;
    if vk=0 then begin neo:=neo+1; nbr12:=nbr12+1; end;
    if vk<>0 then begin br12:=br12+1; oc12:=oc12+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['tzk']; nnesto:=nesto;
  if nnesto='' then tzk:='-' else begin
    val(nnesto,vk,c); tzk:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr13:=jbr13+1; end;
    if vk=0 then begin neo:=neo+1; nbr13:=nbr13+1; end;
    if vk<>0 then begin br13:=br13+1; oc13:=oc13+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izb1']; nnesto:=nesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izborni1']; nnesto1:=nesto;
  if (nnesto1='Etika') or (nnesto1='etika') then begin
    if nnesto='' then begin izb11:='-'; izb12:='-'; end else begin
      val(nnesto,vk,c); izb11:=nnesto; brojac:=brojac+1; uk:=uk+vk; izb12:='-';
      if vk=1 then begin ned:=ned+1; jbr14:=jbr14+1; end;
      if vk=0 then begin neo:=neo+1; nbr14:=nbr14+1; end;
      if vk<>0 then begin br14:=br14+1; oc14:=oc14+vk end;
    end;
  end;
  if (nnesto1='vjeronauk') or (nnesto1='Vjeronauk') then begin
    if nnesto='' then begin izb11:='-'; izb12:='-'; end else begin
      val(nnesto,vk,c); izb12:=nnesto; brojac:=brojac+1; uk:=uk+vk; izb11:='-';
      if vk=1 then begin ned:=ned+1; jbr15:=jbr15+1; end;
      if vk=0 then begin neo:=neo+1; nbr15:=nbr15+1; end;
      if vk<>0 then begin br15:=br15+1; oc15:=oc15+vk end;
    end;
  end;
  if nnesto1='' then begin izb11:='-'; izb12:='-'; end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['dod1']; nnesto:=nesto;
  if nnesto='' then dod1:='-' else begin
    val(nnesto,vk,c); dod1:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr16:=jbr16+1; end;
    if vk=0 then begin neo:=neo+1; nbr16:=nbr16+1; end;
    if vk<>0 then begin br16:=br16+1; oc16:=oc16+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izb2']; nnesto:=nesto;
  if nnesto='' then izb2:='-' else begin
    val(nnesto,vk,c); izb2:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr17:=jbr17+1; end;
    if vk=0 then begin neo:=neo+1; nbr17:=nbr17+1; end;
    if vk<>0 then begin br17:=br17+1; oc17:=oc17+vk end;
  end;

  nesto:=frmglavna.podaci2.Recordset.fields.item['fak1']; nnesto:=nesto;
  if nnesto='' then fak1:='-' else begin
    val(nnesto,vk,c); fak1:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr18:=jbr18+1; end;
    if vk=0 then begin neo:=neo+1; nbr18:=nbr18+1; end;
    if vk<>0 then begin br18:=br18+1; oc18:=oc18+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fak2']; nnesto:=nesto;
  if nnesto='' then fak2:='-' else begin
    val(nnesto,vk,c); fak2:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr19:=jbr19+1; end;
    if vk=0 then begin neo:=neo+1; nbr19:=nbr19+1; end;
    if vk<>0 then begin br19:=br19+1; oc19:=oc19+vk end;
  end;
  if brojac>0 then pr:=uk/brojac else begin pr:=0; uspjeh:='0'; end;
  str(pr:0:2,prk);
  if pr>=4.5 then uspjeh:='5';
  if (pr<4.5) and (pr>=3.5) then uspjeh:='4';
  if (pr<3.5) and (pr>=2.5) then uspjeh:='3';
  if (pr<2.5) and (pr>=1.5) then uspjeh:='2';
  if ned>0 then uspjeh:='1';
  if rbpol.checked=true then if neo>0 then uspjeh:='N';
  str(ned,nned); str(neo,nneo);
  if opr='' then opr:='0'; if ne='' then ne:='0';
  with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=nom;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=hrv;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=jez1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=jez2;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=fil;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=pig;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=pov;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=zem;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=mat;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=fiz;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=kem;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bio;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=inf;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=tzk;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=izb11;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=izb12;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=dod1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=izb2;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=fak1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=fak2;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=opr;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=ne;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=vx;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=nned;
    if rbpol.Checked=true then begin
      str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=nneo;
    end else ind:=ind+1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=uspjeh;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=prk;
  end;


end;
ind:=(k+1)*27+1;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:='NED. OCJENJENI';
    str(jbr1,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr2,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr3,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr4,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr5,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr6,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr7,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr8,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr9,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr10,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr11,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr12,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr13,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr14,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr15,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr16,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr17,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr18,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr19,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    ind:=(k+2)*27+1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:='NEOCJENJENI';
    str(nbr1,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr2,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr3,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr4,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr5,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr6,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr7,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr8,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr9,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr10,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr11,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr12,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr13,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr14,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr15,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr16,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr17,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr18,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr19,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    ind:=(k+3)*27+1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:='SREDNJA OCJENA';
    if br1>0 then str((oc1/br1):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br2>0 then str((oc2/br2):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br3>0 then str((oc3/br3):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br4>0 then str((oc4/br4):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br5>0 then str((oc5/br5):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br6>0 then str((oc6/br6):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br7>0 then str((oc7/br7):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br8>0 then str((oc8/br8):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br9>0 then str((oc9/br9):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br10>0 then str((oc10/br10):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br11>0 then str((oc11/br11):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br12>0 then str((oc12/br12):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br13>0 then str((oc13/br13):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br14>0 then str((oc14/br14):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br15>0 then str((oc15/br15):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br16>0 then str((oc16/br16):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br17>0 then str((oc17/br17):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br18>0 then str((oc18/br18):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br19>0 then str((oc19/br19):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
  end;
if rbpdf.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.ides;
  if rbpol.Checked=true then datoteka:='Statistika\Razredna statistika '+kraz+' na kraju polugodista SkGod '+datgod+'.pdf' else datoteka:='Statistika\Razredna statistika '+kraz+' na kraju SkGod '+datgod+'.pdf';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbhtml.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.jei;
  if rbpol.Checked=true then datoteka:='Statistika\Razredna statistika '+kraz+' na kraju polugodista SkGod '+datgod+'.html' else datoteka:='Statistika\Razredna statistika '+kraz+' na kraju SkGod '+datgod+'.html';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbprev.Checked=true then frmglavna.sistem.DefaultDest:=rdPreview;
if rbispis.Checked=true then frmglavna.sistem.DefaultDest:=rdPrinter;
frmglavna.sistem.DoNativeOutput := false;
frmglavna.sistem.SystemSetups := frmglavna.sistem.SystemSetups - [ssAllowSetup];
frmglavna.rejv2.ExecuteReport('Report1');
frmglavna.rejv2.Close;
application.MessageBox('Statistika uspješno izvršena.', 'Registar - statistika', mb_OK);
end;

if kraz[1]='3' then begin
if rbpol.Checked=true then frmglavna.rejv2.ProjectFile:='razredna3p.rav' else frmglavna.rejv2.ProjectFile:='razredna3k.rav';
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where Razred='+chr(39)+cbrazredna.Text+chr(39)+' order by Prezime';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; k:=0;
while not frmglavna.podaci.Recordset.eof do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto;
  k:=k+1;
  niz[k]:=nnesto;
  frmglavna.podaci.Recordset.MoveNext;
end;

frmglavna.podaci.close;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Postavke';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Skola']; nnesto:=nesto;
skola:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Adresa']; nnesto1:=nesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Mjesto']; nnesto2:=nesto;
adresa:=nnesto1+', '+nnesto2;
nesto:=frmglavna.podaci.Recordset.fields.item['Skgod']; nnesto:=nesto;  datgod:=nnesto;
insert('_',datgod,pos('/',datgod)); delete(datgod,pos('/',datgod),1);
if rbpol.Checked=true then naslov:='Izvješæe na kraju 1. polugodišta školske godine '+nnesto else naslov:='Izvješæe na kraju školske godine '+nnesto;
frmglavna.podaci.close;


ind:=1;
frmglavna.rejv2.open;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    komp:=FindRaveComponent('skola',stra) as TRaveText; komp.Text:=skola;
    komp:=FindRaveComponent('adresa',stra) as TRaveText; komp.Text:=adresa;
    komp:=FindRaveComponent('naslov',stra) as TRaveText; komp.Text:=naslov;
    komp:=FindRaveComponent('razred',stra) as TRaveText; komp.Text:=cbrazredna.Text;
end;

for i:=1 to k do begin
  trazeni:=niz[i];
  frmglavna.podaci.Close;
  frmglavna.podaci.CommandText:='select * from Ucenici where ID='+trazeni;
  frmglavna.podaci.ExecuteOptions;
  frmglavna.podaci.Open;
  frmglavna.podaci2.Close;
  if rbpol.Checked=true then frmglavna.podaci2.CommandText:='select * from Polugodiste where ID='+trazeni else frmglavna.podaci2.CommandText:='select * from Kraj where ID='+trazeni;
  frmglavna.podaci2.ExecuteOptions;
  frmglavna.podaci2.Open;
  nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto1:=nesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Prezime']; nnesto2:=nesto;
  nom:=nnesto2+' '+nnesto1;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Opravdani']; nnesto1:=nesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Neopravdani']; nnesto2:=nesto;
  val(nnesto1,v1,c); val(nnesto2,v2,c);
  opr:=nnesto1; ne:=nnesto2;
  str(v1+v2,vx);
  brojac:=0; uk:=0; ned:=0; neo:=0;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Hrv']; nnesto:=nesto;
  if nnesto='' then hrv:='-' else begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr1:=jbr1+1; end;
    if vk=0 then begin neo:=neo+1; nbr1:=nbr1+1; end;
    if vk<>0 then begin br1:=br1+1; oc1:=oc1+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['1jez']; nnesto:=nesto;
  if nnesto='' then jez1:='-' else begin
    val(nnesto,vk,c); jez1:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr2:=jbr2+1; end;
    if vk=0 then begin neo:=neo+1; nbr2:=nbr2+1; end;
    if vk<>0 then begin br2:=br2+1; oc2:=oc2+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['2jez']; nnesto:=nesto;
  if nnesto='' then jez2:='-' else begin
    val(nnesto,vk,c); jez2:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr3:=jbr3+1; end;
    if vk=0 then begin neo:=neo+1; nbr3:=nbr3+1; end;
    if vk<>0 then begin br3:=br3+1; oc3:=oc3+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['psi']; nnesto:=nesto;
  if nnesto='' then psi:='-' else begin
    val(nnesto,vk,c); psi:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr4:=jbr4+1; end;
    if vk=0 then begin neo:=neo+1; nbr4:=nbr4+1; end;
    if vk<>0 then begin br4:=br4+1; oc4:=oc4+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['log']; nnesto:=nesto;
  if nnesto='' then log:='-' else begin
    val(nnesto,vk,c); log:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr5:=jbr5+1; end;
    if vk=0 then begin neo:=neo+1; nbr5:=nbr5+1; end;
    if vk<>0 then begin br5:=br5+1; oc5:=oc5+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['soc']; nnesto:=nesto;
  if nnesto='' then soc:='-' else begin
    val(nnesto,vk,c); soc:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr6:=jbr6+1; end;
    if vk=0 then begin neo:=neo+1; nbr6:=nbr6+1; end;
    if vk<>0 then begin br6:=br6+1; oc6:=oc6+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['pov']; nnesto:=nesto;
  if nnesto='' then pov:='-' else begin
    val(nnesto,vk,c); pov:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr7:=jbr7+1; end;
    if vk=0 then begin neo:=neo+1; nbr7:=nbr7+1; end;
    if vk<>0 then begin br7:=br7+1; oc7:=oc7+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['zem']; nnesto:=nesto;
  if nnesto='' then zem:='-' else begin
    val(nnesto,vk,c); zem:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr8:=jbr8+1; end;
    if vk=0 then begin neo:=neo+1; nbr8:=nbr8+1; end;
    if vk<>0 then begin br8:=br8+1; oc8:=oc8+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['mat']; nnesto:=nesto;
  if nnesto='' then mat:='-' else begin
    val(nnesto,vk,c); mat:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr9:=jbr9+1; end;
    if vk=0 then begin neo:=neo+1; nbr9:=nbr9+1; end;
    if vk<>0 then begin br9:=br9+1; oc9:=oc9+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fiz']; nnesto:=nesto;
  if nnesto='' then fiz:='-' else begin
    val(nnesto,vk,c); fiz:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr10:=jbr10+1; end;
    if vk=0 then begin neo:=neo+1; nbr10:=nbr10+1; end;
    if vk<>0 then begin br10:=br10+1; oc10:=oc10+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['kem']; nnesto:=nesto;
  if nnesto='' then kem:='-' else begin
    val(nnesto,vk,c); kem:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr11:=jbr11+1; end;
    if vk=0 then begin neo:=neo+1; nbr11:=nbr11+1; end;
    if vk<>0 then begin br11:=br11+1; oc11:=oc11+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['bio']; nnesto:=nesto;
  if nnesto='' then bio:='-' else begin
    val(nnesto,vk,c); bio:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr12:=jbr12+1; end;
    if vk=0 then begin neo:=neo+1; nbr12:=nbr12+1; end;
    if vk<>0 then begin br12:=br12+1; oc12:=oc12+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['inf']; nnesto:=nesto;
  if nnesto='' then inf:='-' else begin
    val(nnesto,vk,c); inf:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr13:=jbr13+1; end;
    if vk=0 then begin neo:=neo+1; nbr13:=nbr13+1; end;
    if vk<>0 then begin br13:=br13+1; oc13:=oc13+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['tzk']; nnesto:=nesto;
  if nnesto='' then tzk:='-' else begin
    val(nnesto,vk,c); tzk:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr14:=jbr14+1; end;
    if vk=0 then begin neo:=neo+1; nbr14:=nbr14+1; end;
    if vk<>0 then begin br14:=br14+1; oc14:=oc14+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izb1']; nnesto:=nesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izborni1']; nnesto1:=nesto;
  if (nnesto1='Etika') or (nnesto1='etika') then begin
    if nnesto='' then begin izb11:='-'; izb12:='-'; end else begin
      val(nnesto,vk,c); izb11:=nnesto; brojac:=brojac+1; uk:=uk+vk; izb12:='-';
      if vk=1 then begin ned:=ned+1; jbr15:=jbr15+1; end;
      if vk=0 then begin neo:=neo+1; nbr15:=nbr15+1; end;
      if vk<>0 then begin br15:=br15+1; oc15:=oc15+vk end;
    end;
  end;
  if (nnesto1='vjeronauk') or (nnesto1='Vjeronauk') then begin
    if nnesto='' then begin izb11:='-'; izb12:='-'; end else begin
      val(nnesto,vk,c); izb12:=nnesto; brojac:=brojac+1; uk:=uk+vk; izb11:='-';
      if vk=1 then begin ned:=ned+1; jbr16:=jbr16+1; end;
      if vk=0 then begin neo:=neo+1; nbr16:=nbr16+1; end;
      if vk<>0 then begin br16:=br16+1; oc16:=oc16+vk end;
    end;
  end;
  if nnesto1='' then begin izb11:='-'; izb12:='-'; end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['dod1']; nnesto:=nesto;
  if nnesto='' then dod1:='-' else begin
    val(nnesto,vk,c); dod1:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr17:=jbr17+1; end;
    if vk=0 then begin neo:=neo+1; nbr17:=nbr17+1; end;
    if vk<>0 then begin br17:=br17+1; oc17:=oc17+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izb2']; nnesto:=nesto;
  if nnesto='' then izb2:='-' else begin
    val(nnesto,vk,c); izb2:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr18:=jbr18+1; end;
    if vk=0 then begin neo:=neo+1; nbr18:=nbr18+1; end;
    if vk<>0 then begin br18:=br18+1; oc18:=oc18+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fak1']; nnesto:=nesto;
  if nnesto='' then fak1:='-' else begin
    val(nnesto,vk,c); fak1:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr19:=jbr19+1; end;
    if vk=0 then begin neo:=neo+1; nbr19:=nbr19+1; end;
    if vk<>0 then begin br19:=br19+1; oc19:=oc19+vk end;
  end;
  if brojac>0 then pr:=uk/brojac else begin pr:=0; uspjeh:='0'; end;
  str(pr:0:2,prk);
  if pr>=4.5 then uspjeh:='5';
  if (pr<4.5) and (pr>=3.5) then uspjeh:='4';
  if (pr<3.5) and (pr>=2.5) then uspjeh:='3';
  if (pr<2.5) and (pr>=1.5) then uspjeh:='2';
  if ned>0 then uspjeh:='1';
  if rbpol.checked=true then if neo>0 then uspjeh:='N';
  str(ned,nned); str(neo,nneo);
  if opr='' then opr:='0'; if ne='' then ne:='0';

  with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=nom;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=hrv;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=jez1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=jez2;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=psi;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=log;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=soc;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=pov;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=zem;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=mat;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=fiz;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=kem;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bio;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=inf;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=tzk;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=izb11;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=izb12;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=dod1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=izb2;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=fak1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=opr;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=ne;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=vx;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=nned;
    if rbpol.Checked=true then begin
      str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=nneo;
    end else ind:=ind+1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=uspjeh;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=prk;
  end;


end;
ind:=(k+1)*27+1;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:='NED. OCJENJENI';
    str(jbr1,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr2,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr3,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr4,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr5,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr6,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr7,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr8,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr9,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr10,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr11,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr12,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr13,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr14,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr15,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr16,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr17,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr18,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr19,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    ind:=(k+2)*27+1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:='NEOCJENJENI';
    str(nbr1,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr2,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr3,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr4,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr5,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr6,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr7,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr8,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr9,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr10,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr11,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr12,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr13,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr14,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr15,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr16,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr17,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr18,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr19,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    ind:=(k+3)*27+1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:='SREDNJA OCJENA';
    if br1>0 then str((oc1/br1):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br2>0 then str((oc2/br2):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br3>0 then str((oc3/br3):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br4>0 then str((oc4/br4):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br5>0 then str((oc5/br5):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br6>0 then str((oc6/br6):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br7>0 then str((oc7/br7):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br8>0 then str((oc8/br8):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br9>0 then str((oc9/br9):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br10>0 then str((oc10/br10):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br11>0 then str((oc11/br11):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br12>0 then str((oc12/br12):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br13>0 then str((oc13/br13):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br14>0 then str((oc14/br14):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br15>0 then str((oc15/br15):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br16>0 then str((oc16/br16):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br17>0 then str((oc17/br17):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br18>0 then str((oc18/br18):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br19>0 then str((oc19/br19):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
  end;


if rbpdf.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.ides;
  if rbpol.Checked=true then datoteka:='Statistika\Razredna statistika '+kraz+' na kraju polugodista SkGod '+datgod+'.pdf' else datoteka:='Statistika\Razredna statistika '+kraz+' na kraju SkGod '+datgod+'.pdf';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbhtml.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.jei;
  if rbpol.Checked=true then datoteka:='Statistika\Razredna statistika '+kraz+' na kraju polugodista SkGod '+datgod+'.html' else datoteka:='Statistika\Razredna statistika '+kraz+' na kraju SkGod '+datgod+'.html';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbprev.Checked=true then frmglavna.sistem.DefaultDest:=rdPreview;
if rbispis.Checked=true then frmglavna.sistem.DefaultDest:=rdPrinter;

frmglavna.sistem.DoNativeOutput := false;
frmglavna.sistem.SystemSetups := frmglavna.sistem.SystemSetups - [ssAllowSetup];
frmglavna.rejv2.ExecuteReport('Report1');
frmglavna.rejv2.Close;
application.MessageBox('Statistika uspješno izvršena.', 'Registar - statistika', mb_OK);
end;








if (kraz[1]='2') or (kraz[1]='1') then begin
if rbpol.Checked=true then frmglavna.rejv2.ProjectFile:='razredna12p.rav' else frmglavna.rejv2.ProjectFile:='razredna12k.rav';
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where Razred='+chr(39)+cbrazredna.Text+chr(39);
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; k:=0;
while not frmglavna.podaci.Recordset.eof do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto;
  k:=k+1;
  niz[k]:=nnesto;
  frmglavna.podaci.Recordset.MoveNext;
end;

frmglavna.podaci.close;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Postavke';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Skola']; nnesto:=nesto;
skola:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Adresa']; nnesto1:=nesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Mjesto']; nnesto2:=nesto;
adresa:=nnesto1+', '+nnesto2;
nesto:=frmglavna.podaci.Recordset.fields.item['Skgod']; nnesto:=nesto; datgod:=nnesto;
insert('_',datgod,pos('/',datgod)); delete(datgod,pos('/',datgod),1);
if rbpol.Checked=true then naslov:='Izvješæe na kraju 1. polugodišta školske godine '+nnesto else naslov:='Izvješæe na kraju školske godine '+nnesto;
frmglavna.podaci.close;


ind:=1;
frmglavna.rejv2.open;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    komp:=FindRaveComponent('skola',stra) as TRaveText; komp.Text:=skola;
    komp:=FindRaveComponent('adresa',stra) as TRaveText; komp.Text:=adresa;
    komp:=FindRaveComponent('naslov',stra) as TRaveText; komp.Text:=naslov;
    komp:=FindRaveComponent('razred',stra) as TRaveText; komp.Text:=cbrazredna.Text;
end;

for i:=1 to k do begin
  trazeni:=niz[i];
  frmglavna.podaci.Close;
  frmglavna.podaci.CommandText:='select * from Ucenici where ID='+trazeni;
  frmglavna.podaci.ExecuteOptions;
  frmglavna.podaci.Open;
  frmglavna.podaci2.Close;
  if rbpol.Checked=true then frmglavna.podaci2.CommandText:='select * from Polugodiste where ID='+trazeni else frmglavna.podaci2.CommandText:='select * from Kraj where ID='+trazeni;
  frmglavna.podaci2.ExecuteOptions;
  frmglavna.podaci2.Open;
  nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto1:=nesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Prezime']; nnesto2:=nesto;
  nom:=nnesto2+' '+nnesto1;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Opravdani']; nnesto1:=nesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Neopravdani']; nnesto2:=nesto;
  val(nnesto1,v1,c); val(nnesto2,v2,c);
  opr:=nnesto1; ne:=nnesto2;
  str(v1+v2,vx);
  brojac:=0; uk:=0; ned:=0; neo:=0;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Hrv']; nnesto:=nesto;
  if nnesto='' then hrv:='-' else begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr1:=jbr1+1; end;
    if vk=0 then begin neo:=neo+1; nbr1:=nbr1+1; end;
    if vk<>0 then begin br1:=br1+1; oc1:=oc1+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['1jez']; nnesto:=nesto;
  if nnesto='' then jez1:='-' else begin
    val(nnesto,vk,c); jez1:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr2:=jbr2+1; end;
    if vk=0 then begin neo:=neo+1; nbr2:=nbr2+1; end;
    if vk<>0 then begin br2:=br2+1; oc2:=oc2+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['2jez']; nnesto:=nesto;
  if nnesto='' then jez2:='-' else begin
    val(nnesto,vk,c); jez2:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr3:=jbr3+1; end;
    if vk=0 then begin neo:=neo+1; nbr3:=nbr3+1; end;
    if vk<>0 then begin br3:=br3+1; oc3:=oc3+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['lat']; nnesto:=nesto;
  if nnesto='' then lat:='-' else begin
    val(nnesto,vk,c); lat:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr4:=jbr4+1; end;
    if vk=0 then begin neo:=neo+1; nbr4:=nbr4+1; end;
    if vk<>0 then begin br4:=br4+1; oc4:=oc4+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['glz']; nnesto:=nesto;
  if nnesto='' then glz:='-' else begin
    val(nnesto,vk,c); glz:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr5:=jbr5+1; end;
    if vk=0 then begin neo:=neo+1; nbr5:=nbr5+1; end;
    if vk<>0 then begin br5:=br5+1; oc5:=oc5+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['lik']; nnesto:=nesto;
  if nnesto='' then lik:='-' else begin
    val(nnesto,vk,c); lik:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr6:=jbr6+1; end;
    if vk=0 then begin neo:=neo+1; nbr6:=nbr6+1; end;
    if vk<>0 then begin br6:=br6+1; oc6:=oc6+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['pov']; nnesto:=nesto;
  if nnesto='' then pov:='-' else begin
    val(nnesto,vk,c); pov:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr7:=jbr7+1; end;
    if vk=0 then begin neo:=neo+1; nbr7:=nbr7+1; end;
    if vk<>0 then begin br7:=br7+1; oc7:=oc7+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['zem']; nnesto:=nesto;
  if nnesto='' then zem:='-' else begin
    val(nnesto,vk,c); zem:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr8:=jbr8+1; end;
    if vk=0 then begin neo:=neo+1; nbr8:=nbr8+1; end;
    if vk<>0 then begin br8:=br8+1; oc8:=oc8+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['mat']; nnesto:=nesto;
  if nnesto='' then mat:='-' else begin
    val(nnesto,vk,c); mat:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr9:=jbr9+1; end;
    if vk=0 then begin neo:=neo+1; nbr9:=nbr9+1; end;
    if vk<>0 then begin br9:=br9+1; oc9:=oc9+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fiz']; nnesto:=nesto;
  if nnesto='' then fiz:='-' else begin
    val(nnesto,vk,c); fiz:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr10:=jbr10+1; end;
    if vk=0 then begin neo:=neo+1; nbr10:=nbr10+1; end;
    if vk<>0 then begin br10:=br10+1; oc10:=oc10+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['kem']; nnesto:=nesto;
  if nnesto='' then kem:='-' else begin
    val(nnesto,vk,c); kem:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr11:=jbr11+1; end;
    if vk=0 then begin neo:=neo+1; nbr11:=nbr11+1; end;
    if vk<>0 then begin br11:=br11+1; oc11:=oc11+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['bio']; nnesto:=nesto;
  if nnesto='' then bio:='-' else begin
    val(nnesto,vk,c); bio:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr12:=jbr12+1; end;
    if vk=0 then begin neo:=neo+1; nbr12:=nbr12+1; end;
    if vk<>0 then begin br12:=br12+1; oc12:=oc12+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['inf']; nnesto:=nesto;
  if nnesto='' then inf:='-' else begin
    val(nnesto,vk,c); inf:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr13:=jbr13+1; end;
    if vk=0 then begin neo:=neo+1; nbr13:=nbr13+1; end;
    if vk<>0 then begin br13:=br13+1; oc13:=oc13+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['tzk']; nnesto:=nesto;
  if nnesto='' then tzk:='-' else begin
    val(nnesto,vk,c); tzk:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr14:=jbr14+1; end;
    if vk=0 then begin neo:=neo+1; nbr14:=nbr14+1; end;
    if vk<>0 then begin br14:=br14+1; oc14:=oc14+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izb1']; nnesto:=nesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izborni1']; nnesto1:=nesto;
  if (nnesto1='Etika') or (nnesto1='etika') then begin
    if nnesto='' then begin izb11:='-'; izb12:='-'; end else begin
      val(nnesto,vk,c); izb11:=nnesto; brojac:=brojac+1; uk:=uk+vk; izb12:='-';
      if vk=1 then begin ned:=ned+1; jbr15:=jbr15+1; end;
      if vk=0 then begin neo:=neo+1; nbr15:=nbr15+1; end;
      if vk<>0 then begin br15:=br15+1; oc15:=oc15+vk end;
    end;
  end;
  if (nnesto1='vjeronauk') or (nnesto1='Vjeronauk') then begin
    if nnesto='' then begin izb11:='-'; izb12:='-'; end else begin
      val(nnesto,vk,c); izb12:=nnesto; brojac:=brojac+1; uk:=uk+vk; izb11:='-';
      if vk=1 then begin ned:=ned+1; jbr16:=jbr16+1; end;
      if vk=0 then begin neo:=neo+1; nbr16:=nbr16+1; end;
      if vk<>0 then begin br16:=br16+1; oc16:=oc16+vk end;
    end;
  end;
  if nnesto1='' then begin izb11:='-'; izb12:='-'; end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['dod1']; nnesto:=nesto;
  if nnesto='' then dod1:='-' else begin
    val(nnesto,vk,c); dod1:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr17:=jbr17+1; end;
    if vk=0 then begin neo:=neo+1; nbr17:=nbr17+1; end;
    if vk<>0 then begin br17:=br17+1; oc17:=oc17+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izb2']; nnesto:=nesto;
  if nnesto='' then izb2:='-' else begin
    val(nnesto,vk,c); izb2:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr18:=jbr18+1; end;
    if vk=0 then begin neo:=neo+1; nbr18:=nbr18+1; end;
    if vk<>0 then begin br18:=br18+1; oc18:=oc18+vk end;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fak1']; nnesto:=nesto;
  if nnesto='' then fak1:='-' else begin
    val(nnesto,vk,c); fak1:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then begin ned:=ned+1; jbr19:=jbr19+1; end;
    if vk=0 then begin neo:=neo+1; nbr19:=nbr19+1; end;
    if vk<>0 then begin br19:=br19+1; oc19:=oc19+vk end;
  end;
  if brojac>0 then pr:=uk/brojac else begin pr:=0; uspjeh:='0'; end;
  str(pr:0:2,prk);
  if pr>=4.5 then uspjeh:='5';
  if (pr<4.5) and (pr>=3.5) then uspjeh:='4';
  if (pr<3.5) and (pr>=2.5) then uspjeh:='3';
  if (pr<2.5) and (pr>=1.5) then uspjeh:='2';
  if ned>0 then uspjeh:='1';
  if rbpol.checked=true then if neo>0 then uspjeh:='N';
  str(ned,nned); str(neo,nneo);
  if opr='' then opr:='0'; if ne='' then ne:='0';

  with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=nom;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=hrv;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=jez1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=jez2;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=lat;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=glz;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=lik;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=pov;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=zem;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=mat;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=fiz;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=kem;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bio;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=inf;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=tzk;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=izb11;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=izb12;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=dod1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=izb2;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=fak1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=opr;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=ne;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=vx;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=nned;
    if rbpol.Checked=true then begin
      str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=nneo;
    end else ind:=ind+1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=uspjeh;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=prk;
  end;


end;
ind:=(k+1)*27+1;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:='NED. OCJENJENI';
    str(jbr1,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr2,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr3,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr4,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr5,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr6,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr7,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr8,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr9,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr10,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr11,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr12,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr13,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr14,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr15,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr16,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr17,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr18,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(jbr19,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    ind:=(k+2)*27+1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:='NEOCJENJENI';
    str(nbr1,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr2,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr3,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr4,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr5,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr6,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr7,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr8,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr9,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr10,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr11,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr12,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr13,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr14,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr15,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr16,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr17,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr18,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    str(nbr19,bb); str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    ind:=(k+3)*27+1;
    str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:='SREDNJA OCJENA';
    if br1>0 then str((oc1/br1):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br2>0 then str((oc2/br2):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br3>0 then str((oc3/br3):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br4>0 then str((oc4/br4):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br5>0 then str((oc5/br5):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br6>0 then str((oc6/br6):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br7>0 then str((oc7/br7):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br8>0 then str((oc8/br8):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br9>0 then str((oc9/br9):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br10>0 then str((oc10/br10):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br11>0 then str((oc11/br11):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br12>0 then str((oc12/br12):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br13>0 then str((oc13/br13):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br14>0 then str((oc14/br14):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br15>0 then str((oc15/br15):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br16>0 then str((oc16/br16):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br17>0 then str((oc17/br17):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br18>0 then str((oc18/br18):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
    if br19>0 then str((oc19/br19):0:2,bb) else bb:='0.00'; str(ind,kk); komp:=FindRaveComponent('Text'+kk,stra) as TRaveText; ind:=ind+1; komp.Text:=bb;
  end;



if rbpdf.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.ides;
  if rbpol.Checked=true then datoteka:='Statistika\Razredna statistika '+kraz+' na kraju polugodista SkGod '+datgod+'.pdf' else datoteka:='Statistika\Razredna statistika '+kraz+' na kraju SkGod '+datgod+'.pdf';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbhtml.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.jei;
  if rbpol.Checked=true then datoteka:='Statistika\Razredna statistika '+kraz+' na kraju polugodista SkGod '+datgod+'.html' else datoteka:='Statistika\Razredna statistika '+kraz+' na kraju SkGod '+datgod+'.html';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbprev.Checked=true then frmglavna.sistem.DefaultDest:=rdPreview;
if rbispis.Checked=true then frmglavna.sistem.DefaultDest:=rdPrinter;
frmglavna.sistem.DoNativeOutput := false;
frmglavna.sistem.SystemSetups := frmglavna.sistem.SystemSetups - [ssAllowSetup];
frmglavna.rejv2.ExecuteReport('Report1');
frmglavna.rejv2.Close;
application.MessageBox('Statistika uspješno izvršena.', 'Registar - statistika', mb_OK);
end;
end;


if rbskr.Checked=true then begin
kraz:=cbrazredna.Text;
if rbpol.Checked=true then frmglavna.rejv2.ProjectFile:='skracenip.rav' else frmglavna.rejv2.ProjectFile:='skracenik.rav';
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where Razred='+chr(39)+cbrazredna.Text+chr(39);
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; k:=0;
while not frmglavna.podaci.Recordset.eof do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto;
  k:=k+1;
  niz[k]:=nnesto;
  frmglavna.podaci.Recordset.MoveNext;
end;

frmglavna.podaci.close;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Postavke';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Skola']; nnesto:=nesto;
skola:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Adresa']; nnesto1:=nesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Mjesto']; nnesto2:=nesto;
adresa:=nnesto1+', '+nnesto2;
nesto:=frmglavna.podaci.Recordset.fields.item['Skgod']; nnesto:=nesto; datgod:=nnesto;
insert('_',datgod,pos('/',datgod)); delete(datgod,pos('/',datgod),1);
if rbpol.Checked=true then naslov:='na kraju 1. polugodišta školske godine '+nnesto else naslov:='na kraju školske godine '+nnesto;
frmglavna.podaci.close;


ind:=1;
frmglavna.rejv2.open;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    komp:=FindRaveComponent('skola',stra) as TRaveText; komp.Text:=skola;
    komp:=FindRaveComponent('adresa',stra) as TRaveText; komp.Text:=adresa;
    komp:=FindRaveComponent('naslov',stra) as TRaveText; komp.Text:=naslov;
    komp:=FindRaveComponent('razred',stra) as TRaveText; komp.Text:=cbrazredna.Text;
end;
m:=0; z:=0; ukpr:=0;
ukopr:=0; ukneo:=0; jedna:=0; dvije:=0; tri:=0; odl:=0; vd:=0; dob:=0; dov:=0;

for i:=1 to k do begin
  trazeni:=niz[i];
  frmglavna.podaci.Close;
  frmglavna.podaci.CommandText:='select * from Ucenici where ID='+trazeni;
  frmglavna.podaci.ExecuteOptions;
  frmglavna.podaci.Open;
  frmglavna.podaci2.Close;
  if rbpol.Checked=true then frmglavna.podaci2.CommandText:='select * from Polugodiste where ID='+trazeni else frmglavna.podaci2.CommandText:='select * from Kraj where ID='+trazeni;
  frmglavna.podaci2.ExecuteOptions;
  frmglavna.podaci2.Open;
  nesto:=frmglavna.podaci.Recordset.fields.item['Spol']; nnesto:=nesto;
  if nnesto='M' then m:=m+1 else z:=z+1;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Opravdani']; nnesto1:=nesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Neopravdani']; nnesto2:=nesto;
  val(nnesto1,v1,c); val(nnesto2,v2,c);
  opr:=nnesto1; ne:=nnesto2;
  str(v1+v2,vx);
  brojac:=0; uk:=0; ned:=0; neo:=0;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Hrv']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['1jez']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['2jez']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['lat']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['grc']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['glz']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['lik']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['psi']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['log']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fil']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['soc']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['pov']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['zem']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['mat']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fiz']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['kem']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['bio']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['inf']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['pig']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['tzk']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['dod1']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['dod2']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['dod3']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izb1']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izb2']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fak1']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fak2']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  if brojac>0 then pr:=uk/brojac else pr:=0;
  str(pr:0:2,prk);
  ukpr:=ukpr+pr;
  ukopr:=ukopr+v1;
  ukneopr:=ukneopr+v2;
  if neo>0 then ukneo:=ukneo+1;
  if neo=0 then begin
    if ned>0 then uspjeh:='1';
    if ned=1 then jedna:=jedna+1;
    if ned=2 then dvije:=dvije+1;
    if ned>3 then tri:=tri+1;
  end;
  if (pr>=4.5) and (ned=0) and (neo=0) then odl:=odl+1;
  if (pr<4.5) and (pr>=3.5) and (ned=0) and (neo=0) then vd:=vd+1;
  if (pr<3.5) and (pr>=2.5) and (ned=0) and (neo=0) then dob:=dob+1;
  if (pr<2.5) and (pr>=1.5) and (ned=0) and (neo=0) then dov:=dov+1;

  str(ned,nned); str(neo,nneo);
  if opr='' then opr:='0'; if ne='' then ne:='0';

end;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    ind:=k;
    str(ind,kk); komp:=FindRaveComponent('br',stra) as TRaveText; komp.Text:=kk;
    ind:=m;
    str(ind,kk); komp:=FindRaveComponent('brm',stra) as TRaveText; komp.Text:=kk;
    ind:=z;
    str(ind,kk); komp:=FindRaveComponent('brz',stra) as TRaveText; komp.Text:=kk;
    ind:=odl+vd+dob+dov;
    str(ind,kk); komp:=FindRaveComponent('poz',stra) as TRaveText; komp.Text:=kk;
    if k<>0 then indr:=100*ind/k else indr:=0;
    str(indr:0:0,kk); komp:=FindRaveComponent('ppoz',stra) as TRaveText; komp.Text:=kk+'%';
    ind:=odl;
    str(ind,kk); komp:=FindRaveComponent('odl',stra) as TRaveText; komp.Text:=kk;
    ind:=vd;
    str(ind,kk); komp:=FindRaveComponent('vd',stra) as TRaveText; komp.Text:=kk;
    ind:=dob;
    str(ind,kk); komp:=FindRaveComponent('d',stra) as TRaveText; komp.Text:=kk;
    ind:=dov;
    str(ind,kk); komp:=FindRaveComponent('dov',stra) as TRaveText; komp.Text:=kk;
    ind:=jedna+dvije+tri;
    str(ind,kk); komp:=FindRaveComponent('neg',stra) as TRaveText; komp.Text:=kk;
    if k<>0 then indr:=100*ind/k else indr:=0;
    str(indr:0:0,kk); komp:=FindRaveComponent('pneg',stra) as TRaveText; komp.Text:=kk+'%';
    ind:=jedna;
    str(ind,kk); komp:=FindRaveComponent('jedna',stra) as TRaveText; komp.Text:=kk;
    ind:=dvije;
    str(ind,kk); komp:=FindRaveComponent('dvije',stra) as TRaveText; komp.Text:=kk;
    ind:=tri;
    str(ind,kk); komp:=FindRaveComponent('tri',stra) as TRaveText; komp.Text:=kk;
    ind:=ukneo;
    if rbpol.Checked=true then begin str(ind,kk); komp:=FindRaveComponent('neoc',stra) as TRaveText; komp.Text:=kk; end;
    if k<>0 then indr:=100*ind/k else indr:=0;
    if rbpol.Checked=true then begin str(indr:0:0,kk); komp:=FindRaveComponent('pneoc',stra) as TRaveText; komp.Text:=kk+'%'; end;
    ind:=ukopr+ukneopr;
    str(ind,kk); komp:=FindRaveComponent('iz',stra) as TRaveText; komp.Text:=kk;
    ind:=ukopr;
    str(ind,kk); komp:=FindRaveComponent('opr',stra) as TRaveText; komp.Text:=kk;
    ind:=ukneopr;
    str(ind,kk); komp:=FindRaveComponent('neo',stra) as TRaveText; komp.Text:=kk;
    if k<>0 then indr:=(ukneopr+ukopr)/k else indr:=0;
    str(indr:0:2,kk); komp:=FindRaveComponent('pros',stra) as TRaveText; komp.Text:=kk;
    if (odl+vd+dob+dov+jedna+dvije+tri)<>0 then indr:=(odl*5+vd*4+dob*3+dov*2+jedna+dvije+tri)/(odl+vd+dob+dov+jedna+dvije+tri) else indr:=0;
    str(indr:0:2,kk); komp:=FindRaveComponent('sr',stra) as TRaveText; komp.Text:=kk;
  end;
if rbpdf.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.ides;
  if rbpol.Checked=true then datoteka:='Statistika\Skracena razredna statistika '+kraz+' na kraju polugodista SkGod '+datgod+'.pdf' else datoteka:='Statistika\Skracena razredna statistika '+kraz+' na kraju SkGod '+datgod+'.pdf';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbhtml.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.jei;
  if rbpol.Checked=true then datoteka:='Statistika\Skracena razredna statistika '+kraz+' na kraju polugodista SkGod '+datgod+'.html' else datoteka:='Statistika\Skracena razredna statistika '+kraz+' na kraju SkGod '+datgod+'.html';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbprev.Checked=true then frmglavna.sistem.DefaultDest:=rdPreview;
if rbispis.Checked=true then frmglavna.sistem.DefaultDest:=rdPrinter;
frmglavna.sistem.DoNativeOutput := false;
frmglavna.sistem.SystemSetups:=frmglavna.sistem.SystemSetups - [ssAllowSetup];
frmglavna.rejv2.ExecuteReport('Report1');
frmglavna.rejv2.Close;
application.MessageBox('Statistika uspješno izvršena.', 'Registar - statistika', mb_OK);
end;




if rbskolska.Checked=true then begin
if rbpol.Checked=true then frmglavna.rejv2.ProjectFile:='skolskap.rav' else frmglavna.rejv2.ProjectFile:='skolskak.rav';
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Razredi order by ime';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; kbr:=0;
while not frmglavna.podaci.Recordset.EOF do begin
  kbr:=kbr+1;
  nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto:=nesto;
  nizr[kbr]:=nnesto;
  frmglavna.podaci.Recordset.MoveNext;
end;
nizr[kbr+1]:='5a';
frmglavna.podaci.Close;
frmglavna.podaci.close;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Postavke';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['Skola']; nnesto:=nesto;
skola:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Adresa']; nnesto1:=nesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Mjesto']; nnesto2:=nesto;
adresa:=nnesto1+', '+nnesto2;
nesto:=frmglavna.podaci.Recordset.fields.item['Skgod']; nnesto:=nesto; datgod:=nnesto;
insert('_',datgod,pos('/',datgod)); delete(datgod,pos('/',datgod),1);
if rbpol.Checked=true then naslov:='Izvješæe na kraju 1. polugodišta školske godine '+nnesto else naslov:='na kraju školske godine '+nnesto;
frmglavna.podaci.close;
ind:=1;
frmglavna.rejv2.open;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    komp:=FindRaveComponent('skola',stra) as TRaveText; komp.Text:=skola;
    komp:=FindRaveComponent('adresa',stra) as TRaveText; komp.Text:=adresa;
    komp:=FindRaveComponent('naslov',stra) as TRaveText; komp.Text:=naslov;
end;
   velbroj:=0;
 sum:=0;suz:=0;suodl:=0;suvd:=0;sudob:=0;sudov:=0;sujedna:=0;sudvije:=0;sutri:=0;
  brojacrazreda:=0;suopr:=0;suneopr:=0;suneo:=0;suksr:=0;
for j:=1 to kbr do begin
razk:=nizr[j];
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where Razred='+chr(39)+razk+chr(39);
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; k:=0;

while not frmglavna.podaci.Recordset.eof do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto;
  k:=k+1;
  niz[k]:=nnesto;
  frmglavna.podaci.Recordset.MoveNext;
end;
ukopr:=0; ukneo:=0; jedna:=0; dvije:=0; tri:=0; odl:=0; vd:=0; dob:=0; dov:=0;
m:=0; z:=0; ukpr:=0;
brojacrazreda:=brojacrazreda+1;
for i:=1 to k do begin
  trazeni:=niz[i];
  frmglavna.podaci.Close;
  frmglavna.podaci.CommandText:='select * from Ucenici where ID='+trazeni;
  frmglavna.podaci.ExecuteOptions;
  frmglavna.podaci.Open;
  frmglavna.podaci2.Close;
  if rbpol.Checked=true then frmglavna.podaci2.CommandText:='select * from Polugodiste where ID='+trazeni else frmglavna.podaci2.CommandText:='select * from Kraj where ID='+trazeni;
  frmglavna.podaci2.ExecuteOptions;
  frmglavna.podaci2.Open;
  nesto:=frmglavna.podaci.Recordset.fields.item['Spol']; nnesto:=nesto;
  if nnesto='M' then m:=m+1 else z:=z+1;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Opravdani']; nnesto1:=nesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Neopravdani']; nnesto2:=nesto;
  val(nnesto1,v1,c); val(nnesto2,v2,c);
  opr:=nnesto1; ne:=nnesto2;
  str(v1+v2,vx);
  brojac:=0; uk:=0; ned:=0; neo:=0;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Hrv']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['1jez']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['2jez']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['lat']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['grc']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['glz']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['lik']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['psi']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['log']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fil']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['soc']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['pov']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['zem']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['mat']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fiz']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['kem']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['bio']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['inf']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['pig']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['tzk']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['dod1']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['dod2']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['dod3']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;

  nesto:=frmglavna.podaci2.Recordset.fields.item['izb1']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['izb2']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fak1']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  nesto:=frmglavna.podaci2.Recordset.fields.item['fak2']; nnesto:=nesto;
  if nnesto<>'' then begin
    val(nnesto,vk,c); hrv:=nnesto; brojac:=brojac+1; uk:=uk+vk;
    if vk=1 then ned:=ned+1; if vk=0 then neo:=neo+1;
  end;
  if brojac>0 then pr:=uk/brojac else pr:=0;
  str(pr:0:2,prk);
  ukpr:=ukpr+pr;
  ukopr:=ukopr+v1;
  ukneopr:=ukneopr+v2;
if neo=0 then begin
    if ned>0 then uspjeh:='1';
    if ned=1 then jedna:=jedna+1;
    if ned=2 then dvije:=dvije+1;
    if ned>3 then tri:=tri+1;
  end;
  if neo>0 then ukneo:=ukneo+1;
  if (pr>=4.5) and (ned=0) and (neo=0) then odl:=odl+1;
  if (pr<4.5) and (pr>=3.5) and (ned=0) and (neo=0) then vd:=vd+1;
  if (pr<3.5) and (pr>=2.5) and (ned=0) and (neo=0) then dob:=dob+1;
  if (pr<2.5) and (pr>=1.5) and (ned=0) and (neo=0) then dov:=dov+1;

  str(ned,nned); str(neo,nneo);
  if opr='' then opr:='0'; if ne='' then ne:='0';

end;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    ind:=k; ind1:=ind1+1; str(ind1,bb);
    komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=razk;
    ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=m; ind1:=ind1+1; str(ind1,bb); rum:=rum+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=z;     ind1:=ind1+1; str(ind1,bb); ruz:=ruz+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=odl+vd+dob+dov;   ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if k<>0 then indr:=100*ind/k else indr:=0;  ind1:=ind1+1; str(ind1,bb);
    str(indr:0:0,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk+'%';
    ind:=odl;     ind1:=ind1+1; str(ind1,bb); ruodl:=ruodl+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=vd;      ind1:=ind1+1; str(ind1,bb);ruvd:=ruvd+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=dob;ind1:=ind1+1; str(ind1,bb);rudob:=rudob+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=dov;ind1:=ind1+1; str(ind1,bb);rudov:=rudov+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=jedna+dvije+tri;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if k<>0 then indr:=100*ind/k else indr:=0; ind1:=ind1+1; str(ind1,bb);
    str(indr:0:0,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk+'%';
    ind:=jedna;ind1:=ind1+1; str(ind1,bb);rujedna:=rujedna+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=dvije;ind1:=ind1+1; str(ind1,bb);rudvije:=rudvije+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=tri; ind1:=ind1+1; str(ind1,bb);rutri:=rutri+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=ukneo;ind1:=ind1+1; str(ind1,bb); runeo:=runeo+ind;
    if rbpol.Checked=true then begin str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk; end;
    if k<>0 then indr:=100*ind/k else indr:=0; ind1:=ind1+1; str(ind1,bb);
    if rbpol.Checked=true then begin str(indr:0:0,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk+'%'; end;
    ind:=ukopr+ukneopr;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=ukopr;ind1:=ind1+1; str(ind1,bb); ruopr:=ruopr+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=ukneopr;  ind1:=ind1+1; str(ind1,bb);runeopr:=runeopr+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if k<>0 then indr:=(ukneopr+ukopr)/k else indr:=0; ind1:=ind1+1; str(ind1,bb);
    str(indr:0:2,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if (odl+vd+dob+jedna+dvije+tri)<>0 then indr:=(odl*5+vd*4+dob*3+dov*2+jedna+dvije+tri)/(odl+vd+dob+dov+jedna+dvije+tri) else indr:=0; ind1:=ind1+1; str(ind1,bb);
    uksr:=uksr+indr;
    str(indr:0:2,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind1:=ind1+5;
  end;
  aa:=nizr[j];
  ab:=nizr[j+1];
if aa[1]<>ab[1] then begin
  with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    ind:=rum+ruz; ind1:=ind1+1; str(ind1,bb);
    komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:='UK';
    ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=rum; ind1:=ind1+1; str(ind1,bb); sum:=sum+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=ruz;     ind1:=ind1+1; str(ind1,bb); suz:=suz+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=ruodl+ruvd+rudob+rudov;   ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if (rum+ruz)<>0 then indr:=100*ind/(rum+ruz) else indr:=0;    ind1:=ind1+1; str(ind1,bb);
    str(indr:0:0,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk+'%';
    ind:=ruodl;     ind1:=ind1+1; str(ind1,bb); suodl:=suodl+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=ruvd;      ind1:=ind1+1; str(ind1,bb);suvd:=suvd+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=rudob;ind1:=ind1+1; str(ind1,bb);sudob:=sudob+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=rudov;ind1:=ind1+1; str(ind1,bb);sudov:=sudov+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=rujedna+rudvije+rutri;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if (rum+ruz)<>0 then indr:=100*ind/(rum+ruz)else indr:=0; ind1:=ind1+1; str(ind1,bb);
    str(indr:0:0,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk+'%';
    ind:=rujedna;ind1:=ind1+1; str(ind1,bb);sujedna:=sujedna+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=rudvije;ind1:=ind1+1; str(ind1,bb);sudvije:=sudvije+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=rutri; ind1:=ind1+1; str(ind1,bb);sutri:=sutri+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=runeo;ind1:=ind1+1; str(ind1,bb); suneo:=suneo+ind;
    if rbpol.Checked=true then begin str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk; end;
    if (rum+ruz)<>0 then indr:=100*ind/(rum+ruz) else indr:=0; ind1:=ind1+1; str(ind1,bb);
    if rbpol.Checked=true then begin str(indr:0:0,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk+'%'; end;
    ind:=ruopr+runeopr;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=ruopr;ind1:=ind1+1; str(ind1,bb); suopr:=suopr+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=runeopr;  ind1:=ind1+1; str(ind1,bb);suneopr:=suneopr+ind;
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if (rum+ruz)<>0 then indr:=(runeopr+ruopr)/(rum+ruz) else indr:=0; ind1:=ind1+1; str(ind1,bb);
    str(indr:0:2,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    indr:=uksr/brojacrazreda; ind1:=ind1+1; str(ind1,bb);
    suksr:=suksr+indr;
    str(indr:0:2,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind1:=ind1+5;
  end;
  rum:=0;ruz:=0;ruodl:=0;ruvd:=0;rudob:=0;rudov:=0;rujedna:=0;rudvije:=0;rutri:=0;
  brojacrazreda:=0;ruopr:=0;runeopr:=0;runeo:=0;uksr:=0;velbroj:=velbroj+1;
end;

end;
with frmglavna.rejv2.ProjMan do begin
    stra:=findravecomponent('Report1.Page1',nil) as Travepage;
    ind:=sum+suz; ind1:=ind1+1; str(ind1,bb);
    komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:='UKK';
    ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=sum; ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=suz;     ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=suodl+suvd+sudob+sudov;   ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if (sum+suz)<>0 then indr:=100*ind/(sum+suz) else indr:=0; ind1:=ind1+1; str(ind1,bb);
    str(indr:0:0,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk+'%';
    ind:=suodl;     ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=suvd;      ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=sudob;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=sudov;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=sujedna+sudvije+sutri;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if (sum+suz)<>0 then indr:=100*ind/(sum+suz) else indr:=0; ind1:=ind1+1; str(ind1,bb);
    str(indr:0:0,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk+'%';
    ind:=sujedna;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=sudvije;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=sutri; ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=suneo;ind1:=ind1+1; str(ind1,bb);
    if rbpol.Checked=true then begin str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk; end;
    if (sum+suz)<>0 then indr:=100*ind/(sum+suz) else indr:=0;ind1:=ind1+1; str(ind1,bb);
    if rbpol.Checked=true then begin str(indr:0:0,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk+'%'; end;
    ind:=ruopr+runeopr;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=suopr;ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind:=suneopr;  ind1:=ind1+1; str(ind1,bb);
    str(ind,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    if (sum+suz)<>0 then indr:=(suneopr+suopr)/(sum+suz) else indr:=0;ind1:=ind1+1; str(ind1,bb);
    str(indr:0:2,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    indr:=suksr/velbroj; ind1:=ind1+1; str(ind1,bb);
    str(indr:0:2,kk); komp:=FindRaveComponent('Text'+bb,stra) as TRaveText; komp.Text:=kk;
    ind1:=ind1+5;
end;


if rbpdf.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.ides;
  if rbpol.Checked=true then datoteka:='Statistika\Skolska statistika na kraju polugodista SkGod '+datgod+'.pdf' else datoteka:='Statistika\Skolska statistika na kraju SkGod '+datgod+'.pdf';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbhtml.Checked=true then begin
  frmglavna.sistem.DefaultDest:=rdFile;
  frmglavna.sistem.RenderObject:=frmglavna.jei;
  if rbpol.Checked=true then datoteka:='Statistika\Skolska statistika na kraju polugodista SkGod '+datgod+'.html' else datoteka:='Statistika\Skolska statistika na kraju SkGod '+datgod+'.html';
  frmglavna.sistem.OutputFileName:=datoteka;
end;
if rbprev.Checked=true then frmglavna.sistem.DefaultDest:=rdPreview;
if rbispis.Checked=true then frmglavna.sistem.DefaultDest:=rdPrinter;
frmglavna.sistem.DoNativeOutput := false;
frmglavna.sistem.SystemSetups := frmglavna.sistem.SystemSetups - [ssAllowSetup];
frmglavna.rejv2.ExecuteReport('Report1');
frmglavna.rejv2.Close;
application.MessageBox('Statistika uspješno izvršena.', 'Registar - statistika', mb_OK);

end;
neide:
end;

procedure TfrmStatistika.rbfileClick(Sender: TObject);
begin
  lblpdf.Enabled:=true;
lblhtml.Enabled:=true;
rbpdf.Enabled:=true;
rbhtml.Enabled:=true;
end;

procedure TfrmStatistika.rbprevClick(Sender: TObject);
begin
  lblpdf.Enabled:=false;
lblhtml.Enabled:=false;
rbpdf.Enabled:=false;
rbpdf.Checked:=false;
rbhtml.Checked:=false;
rbhtml.Enabled:=false;
end;

procedure TfrmStatistika.rbispisClick(Sender: TObject);
begin
   lblpdf.Enabled:=false;
lblhtml.Enabled:=false;
rbpdf.Enabled:=false;
rbpdf.Checked:=false;
rbhtml.Checked:=false;
rbhtml.Enabled:=false;
end;

procedure TfrmStatistika.btOdustaniClick(Sender: TObject);
begin
frmGlavna.Caption:='Registar';
frmPrijelaz.FormStyle:=fsMDIChild;
frmPrijelaz.WindowState:=wsMaximized;
end;

procedure TfrmStatistika.rbhtmlClick(Sender: TObject);
begin
if rbhtml.Checked=true then rbpdf.Checked:=false;

end;

procedure TfrmStatistika.rbpdfClick(Sender: TObject);
begin
if rbpdf.Checked=true then rbhtml.Checked:=false;

end;

end.

