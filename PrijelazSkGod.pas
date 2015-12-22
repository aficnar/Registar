unit PrijelazSkGod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfrmPrijelazSkGod = class(TForm)
    bar: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    kp: TEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrijelazSkGod: TfrmPrijelazSkGod;

implementation

uses Glavna, Ponavljaci;

{$R *.dfm}

procedure TfrmPrijelazSkGod.FormActivate(Sender: TObject);
var  hrv,jez1,jez2,lat,grc,glz,lik,psi,log,fil,soc,pov,zem,mat,fiz,kem,bio,inf,pig,tzk:string;
     dod1,dod2,dod3,izb1,izb2,fak1,fak2,Opr,neo,pjez,djez,idod1,idod2:string;
     idod3,iizb1,iizb2,ifak1,ifak2,idd,razred,sto,ubaci,raz,hehe:string;
     ik,mbroj,ime,prezime,datrod,spol,jmbg,mjrod,drzrod,drz,nar,adresa,imemajke,prezimemajke,imeoca,prezimeoca,datupisa,skgod:string;
     i,br,br2,broj,brojcek,c,varijabla:integer;
     naslov,rad,izborni1,izborni2,od,doo,rbroj,datum,zapisnik,osl,tren,mj,hehe1,hehe2,razr,kk:string;
     vvrsta,iisprava,sstatus,nnesto,kklasa,uurbroj:string;
     niz,niz2:array[1..1000] of string;
     nizina:array[1..1000] of integer;
     nesto:variant;

begin
frmglavna.podaci2.Close;
frmglavna.podaci2.CommandText:='select * from Ponavljaci';
frmglavna.podaci2.ExecuteOptions;
frmglavna.podaci2.Open; br:=0;
if (frmglavna.podaci2.Recordset.RecordCount>0) and (kp.Text='') then begin
frmglavna.podaci2.close;
frmponavljaci.show;

end else begin
kp.Text:='';
frmglavna.podaci2.close;
label1.Caption:='Molim, prièekajte,';
label2.Caption:='prijelaz školske godine u tijeku...';

frmglavna.podaci2.Close;
frmglavna.podaci2.CommandText:='select * from Ponavljaci';
frmglavna.podaci2.ExecuteOptions;
frmglavna.podaci2.Open; br:=0;
for i:=1 to 1000 do nizina[i]:=0;
while not frmglavna.podaci2.Recordset.EOF do begin
  nesto:=frmglavna.podaci2.Recordset.fields.item['broj']; nnesto:=nesto;
  val(nnesto,varijabla,c);
  nizina[varijabla]:=1;
  frmglavna.podaci2.Recordset.MoveNext;
end;


frmglavna.podaci2.Close;
frmglavna.podaci2.CommandText:='select * from Kraj';
frmglavna.podaci2.ExecuteOptions;
frmglavna.podaci2.Open; br:=0;
while not frmglavna.podaci2.Recordset.EOF do begin
  nesto:=frmglavna.podaci2.Recordset.fields.item['ID']; nnesto:=nesto; idd:=nnesto;
  val(nnesto,varijabla,c);
  if nizina[varijabla]=0 then begin
    br:=br+1;
    niz[br]:=idd;
  end;
  frmglavna.podaci2.Recordset.MoveNext;
end;

bar.StepIt;
for i:=1 to br do begin
  frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici where ID='+niz[i];
  frmglavna.podaci.ExecuteOptions;
  frmglavna.podaci.Open;
  nesto:=frmglavna.podaci.Recordset.fields.item['Razred']; nnesto:=nesto;
  frmglavna.podaci.Close;
  razred:='Ocjene'+nnesto[1];
  frmglavna.podaci2.Close;
  frmglavna.podaci2.CommandText:='select * from Kraj where ID='+niz[i];
  frmglavna.podaci2.ExecuteOptions;
  frmglavna.podaci2.Open;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Hrv']; nnesto:=nesto; hrv:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['1Jez']; nnesto:=nesto; jez1:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['2Jez']; nnesto:=nesto; jez2:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Lat']; nnesto:=nesto; lat:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Grc']; nnesto:=nesto; grc:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Glz']; nnesto:=nesto; glz:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Lik']; nnesto:=nesto; lik:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Psi']; nnesto:=nesto; psi:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Log']; nnesto:=nesto; log:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Fil']; nnesto:=nesto; fil:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Soc']; nnesto:=nesto; soc:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Pov']; nnesto:=nesto; pov:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Zem']; nnesto:=nesto; zem:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Mat']; nnesto:=nesto; mat:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Fiz']; nnesto:=nesto; fiz:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Kem']; nnesto:=nesto; kem:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Bio']; nnesto:=nesto; bio:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Inf']; nnesto:=nesto; inf:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Pig']; nnesto:=nesto; pig:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Tzk']; nnesto:=nesto; tzk:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Dod1']; nnesto:=nesto;dod1:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Dod2']; nnesto:=nesto;dod2:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Dod3']; nnesto:=nesto;dod3:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Izb1']; nnesto:=nesto;izb1:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Izb2']; nnesto:=nesto;izb2:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Fak1']; nnesto:=nesto;fak1:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Fak2']; nnesto:=nesto;fak2:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Opravdani']; nnesto:=nesto; Opr:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Neopravdani']; nnesto:=nesto; Neo:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['PrviJezik']; nnesto:=nesto; pjez:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['DrugiJezik']; nnesto:=nesto; djez:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Dodatni1']; nnesto:=nesto; IDod1:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Dodatni2']; nnesto:=nesto; IDod2:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Dodatni3']; nnesto:=nesto; IDod3:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Izborni1']; nnesto:=nesto; IIzb1:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Izborni2']; nnesto:=nesto; IIzb2:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Fakultativni1']; nnesto:=nesto; IFak1:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['Fakultativni2']; nnesto:=nesto; IFak2:=nnesto;
  sto:=razred+'(ID,hrv,1jez,2jez,lat,grc,glz,lik,psi,log,fil,soc,pov,zem,mat,fiz,kem,bio,inf,pig,tzk,'+
    'dod1,dod2,dod3,izb1,izb2,fak1,fak2,Opravdani,neopravdani,prvijezik,drugijezik,dodatni1,dodatni2,'+
    'dodatni3,izborni1,izborni2,fakultativni1,fakultativni2)';
  ubaci:=niz[i]+','+chr(39)+hrv+chr(39)+','+chr(39)+jez1+chr(39)+','+chr(39)+jez2+chr(39)+','+chr(39)+
    lat+chr(39)+','+chr(39)+ grc+chr(39)+','+chr(39)+ glz+chr(39)+','+chr(39)+ lik+chr(39)+','+chr(39)+
    psi+chr(39)+','+chr(39)+ log+chr(39)+','+chr(39)+ fil+chr(39)+','+chr(39)+ soc+chr(39)+','+chr(39)+
    pov+chr(39)+','+chr(39)+ zem+chr(39)+','+chr(39)+ mat+chr(39)+','+chr(39)+ fiz+chr(39)+','+chr(39)+
    kem+chr(39)+','+chr(39)+ bio+chr(39)+','+chr(39)+ inf+chr(39)+','+chr(39)+ pig+chr(39)+','+chr(39)+
    tzk+chr(39)+','+chr(39)+ dod1+chr(39)+','+chr(39)+ dod2+chr(39)+','+chr(39)+ dod3+chr(39)+','+chr(39)+
    izb1+chr(39)+','+chr(39)+ izb2+chr(39)+','+chr(39)+ fak1+chr(39)+','+chr(39)+ fak2+chr(39)+','+chr(39)+
    opr+chr(39)+','+chr(39)+ neo+chr(39)+','+chr(39)+ pjez+chr(39)+','+chr(39)+ djez+chr(39)+','+chr(39)+
    idod1+chr(39)+','+chr(39)+ idod2+chr(39)+','+chr(39)+ idod3+chr(39)+','+chr(39)+ iizb1+chr(39)+','+chr(39)+
    iizb2+chr(39)+','+chr(39)+ ifak1+chr(39)+','+chr(39)+ ifak2+chr(39);
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('insert into '+sto+' values('+ubaci+')');
  frmglavna.Baza.close;
end;
frmglavna.podaci2.Close;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; br:=0;
bar.StepIt;
while not frmglavna.podaci.Recordset.eof do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['Razred']; nnesto:=nesto; raz:=nnesto;
  if raz[1]='4' then begin
    nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto; hehe:=nnesto;
    val(nnesto,varijabla,c);
    if nizina[varijabla]=0 then begin
      br:=br+1;
      niz2[br]:=hehe;
    end;
  end;
  frmglavna.podaci.Recordset.MoveNext;
end;
bar.StepIt;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Postavke';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['SkGod']; nnesto:=nesto; skgod:=nnesto;
frmglavna.podaci.Close;
skgod:=skgod[7]+skgod[8]+skgod[9]+skgod[10];
for i:=1 to br do begin
  frmglavna.podaci.Close;
  frmglavna.podaci.CommandText:='select * from Ucenici where ID='+niz2[i];
  frmglavna.podaci.ExecuteOptions;
  frmglavna.podaci.Open;
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto; ik:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Mbroj']; nnesto:=nesto; mbroj:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['ime']; nnesto:=nesto; ime:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['prezime']; nnesto:=nesto; prezime:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Datrod']; nnesto:=nesto; datrod:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['spol']; nnesto:=nesto; spol:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['jmbg']; nnesto:=nesto; jmbg:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['mjrod']; nnesto:=nesto; mjrod:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['drzrod']; nnesto:=nesto; drzrod:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['drz']; nnesto:=nesto; drz:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['nar']; nnesto:=nesto; nar:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['adresa']; nnesto:=nesto; adresa:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['imemajke']; nnesto:=nesto; imemajke:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['prezimemajke']; nnesto:=nesto; prezimemajke:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['imeoca']; nnesto:=nesto; imeoca:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['prezimeoca']; nnesto:=nesto; prezimeoca:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['datupisa']; nnesto:=nesto; datupisa:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['razred']; nnesto:=nesto; razred:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['vrsta']; nnesto:=nesto; vvrsta:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['isprava']; nnesto:=nesto; iisprava:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['status']; nnesto:=nesto; sstatus:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['klasa']; nnesto:=nesto; kklasa:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['urbroj']; nnesto:=nesto; uurbroj:=nnesto;
  razred:=razred[2];
  ubaci:=ik+','+chr(39)+mbroj+chr(39)+','+chr(39)+ime+chr(39)+','+chr(39)+prezime+chr(39)+','+chr(39)+
    datrod+chr(39)+','+chr(39)+spol+chr(39)+','+chr(39)+jmbg+chr(39)+','+chr(39)+mjrod+chr(39)+','+chr(39)+
    drzrod+chr(39)+','+chr(39)+drz+chr(39)+','+chr(39)+nar+chr(39)+','+chr(39)+adresa+chr(39)+','+chr(39)+
    imemajke+chr(39)+','+chr(39)+prezimemajke+chr(39)+','+chr(39)+imeoca+chr(39)+','+chr(39)+prezimeoca+chr(39)+','+chr(39)+
    datupisa+chr(39)+','+chr(39)+razred+chr(39)+','+chr(39)+skgod+chr(39)+','+chr(39)+vvrsta+chr(39)+','+chr(39)+iisprava+chr(39)+','+chr(39)+sstatus+chr(39)+','+chr(39)+kklasa+chr(39)+','+chr(39)+uurbroj+chr(39);
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('insert into Arhiva(ID,mbroj,ime,prezime,datrod,spol,jmbg,mjrod,drzrod,drz,nar,adresa,imemajke,prezimemajke,imeoca,prezimeoca,datupisa,razred,matura,vrsta,isprava,status,klasa,urbroj) values('+ubaci+')');
  frmglavna.baza.close;
end;

frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Matura';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
br:=0;
bar.StepIt;
while not frmglavna.podaci.Recordset.EOF do begin
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto; hehe:=nnesto;
  val(nnesto,varijabla,c);
  if nizina[varijabla]=0 then begin
    br:=br+1;
    niz2[br]:=hehe;
  end;
  frmglavna.podaci.Recordset.MoveNext;
end;
frmglavna.podaci.close;
bar.StepIt;
for i:=1 to br do begin
  frmglavna.podaci.Close;
  frmglavna.podaci.CommandText:='select * from Matura where ID='+niz2[i];
  frmglavna.podaci.ExecuteOptions;
  frmglavna.podaci.Open;
  nesto:=frmglavna.podaci.Recordset.fields.item['Naslov']; nnesto:=nesto; Naslov:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Mat']; nnesto:=nesto; Rad:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Hrv']; nnesto:=nesto; Hrv:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Izb1']; nnesto:=nesto; Izb1:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Izb2']; nnesto:=nesto; Izb2:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Izborni1']; nnesto:=nesto; Izborni1:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Izborni2']; nnesto:=nesto; Izborni2:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Od']; nnesto:=nesto; Od:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Do']; nnesto:=nesto; Doo:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['RBroj']; nnesto:=nesto; Rbroj:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Datum']; nnesto:=nesto; datum:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Zapisnik']; nnesto:=nesto; zapisnik:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['Osl']; nnesto:=nesto; osl:=nnesto;
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto; ik:=nnesto;
  ubaci:=ik+','+chr(39)+naslov+chr(39)+','+chr(39)+rad+chr(39)+','+chr(39)+hrv+chr(39)+','+chr(39)+
    izb1+chr(39)+','+chr(39)+izb2+chr(39)+','+chr(39)+izborni1+chr(39)+','+chr(39)+izborni2+chr(39)+','+chr(39)+
    od+chr(39)+','+chr(39)+doo+chr(39)+','+chr(39)+rbroj+chr(39)+','+chr(39)+datum+chr(39)+','+chr(39)+
    zapisnik+chr(39)+','+chr(39)+osl+chr(39);
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('insert into ArhivaMat(ID,naslov,mat,hrv,izb1,izb2,izborni1,izborni2,od,do,rbroj,datum,zapisnik,osl) values('+ubaci+')');
  frmglavna.baza.close;
end;

frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Kraj';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
br:=0;
bar.StepIt;
while not frmglavna.podaci.Recordset.EOF do begin
  br:=br+1;
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto; hehe:=nnesto;
  niz[br]:=hehe;
  frmglavna.podaci.Recordset.MoveNext;
end;
frmglavna.podaci.close;

frmglavna.podaci2.Close;
frmglavna.podaci2.CommandText:='select * from Ucenici';
frmglavna.podaci2.ExecuteOptions;
frmglavna.podaci2.Open; br2:=0;
bar.StepIt;
while not frmglavna.podaci2.Recordset.eof do begin
  nesto:=frmglavna.podaci2.Recordset.fields.item['Razred']; nnesto:=nesto; raz:=nnesto;
  nesto:=frmglavna.podaci2.Recordset.fields.item['ID']; nnesto:=nesto; hehe:=nnesto;
  val(nnesto,varijabla,c);
  if (raz[1]<>'4') or (nizina[varijabla]=1) then begin
    br2:=br2+1;
    niz2[br2]:=hehe;
  end;
  frmglavna.podaci2.Recordset.MoveNext;
end;
frmglavna.podaci2.Close;
bar.StepIt;
for i:=1 to br do begin
  tren:=niz[i];
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('delete from Kraj where ID='+tren);
  frmglavna.Baza.Execute('delete from Matura where ID='+tren);
  frmglavna.Baza.Execute('delete from Polugodiste where ID='+tren);
  frmglavna.Baza.close;
end;
for i:=1 to br2 do begin
  tren:=niz2[i];
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('insert into Polugodiste(ID) values('+tren+')');
  frmglavna.Baza.Execute('insert into Kraj(ID) values('+tren+')');
  frmglavna.Baza.close;
end;
 
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Postavke';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open;
nesto:=frmglavna.podaci.Recordset.fields.item['SkGod']; nnesto:=nesto; hehe:=nnesto;
nesto:=frmglavna.podaci.Recordset.fields.item['Mjesto']; nnesto:=nesto; mj:=nnesto;
frmglavna.podaci.close;
mj:=chr(39)+mj+chr(39);
hehe1:=hehe[7]+hehe[8]+hehe[9]+hehe[10];
val(hehe1,broj,c);
broj:=broj+1;
str(broj,hehe2);
skgod:=chr(39)+hehe1+'./'+hehe2+'.'+chr(39);
frmglavna.Baza.open;
frmglavna.Baza.Execute('update Postavke set SkGod='+skgod+' where Mjesto='+mj);
frmglavna.Baza.close;

frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Razredi';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; br:=0;
bar.StepIt;
while not frmglavna.podaci.Recordset.eof do begin
 nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto:=nesto; raz:=nnesto;
  if raz[1]='4' then begin
    br:=br+1;
    nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto; hehe:=nnesto;
    niz[br]:=hehe;
  end;
  frmglavna.podaci.Recordset.MoveNext;
end;
for i:=1 to br do begin
  tren:=niz[i];
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('delete from Razredi where ID='+tren);
  frmglavna.Baza.close;
end;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Razredi';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; br:=0;
while not frmglavna.podaci.Recordset.eof do begin
 nesto:=frmglavna.podaci.Recordset.fields.item['Ime']; nnesto:=nesto; raz:=nnesto;
  if raz[1]<>'4' then begin
    br:=br+1;
    nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto; hehe:=nnesto;
    niz[br]:=hehe;
    niz2[br]:=raz;
  end;
  frmglavna.podaci.Recordset.MoveNext;
end; bar.StepIt;
for i:=1 to br do begin
  tren:=niz[i];
  razr:=niz2[i];
  val(razr[1],brojcek,c);
  brojcek:=brojcek+1;
  str(brojcek,kk);
  razr:=kk+razr[2];
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('update Razredi set Ime='+chr(39)+razr+chr(39)+' where ID='+tren);
  frmglavna.Baza.close;
end;

frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; br:=0;
while not frmglavna.podaci.Recordset.eof do begin
 nesto:=frmglavna.podaci.Recordset.fields.item['Razred']; nnesto:=nesto; raz:=nnesto;
 nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto; hehe:=nnesto;
 val(nnesto,varijabla,c);
  if (raz[1]='4') and (nizina[varijabla]=0) then begin
    br:=br+1;
    niz[br]:=hehe;
  end;
  frmglavna.podaci.Recordset.MoveNext;
end;       bar.StepIt;
for i:=1 to br do begin
  tren:=niz[i];
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('delete from Ucenici where ID='+tren);
  frmglavna.Baza.close;
end;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ucenici';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; br:=0;
while not frmglavna.podaci.Recordset.eof do begin
 nesto:=frmglavna.podaci.Recordset.fields.item['Razred']; nnesto:=nesto; raz:=nnesto;
 nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto; hehe:=nnesto;
 val(nnesto,varijabla,c);
  if (raz[1]<>'4') and (nizina[varijabla]=0) then begin
    br:=br+1;
    niz[br]:=hehe;
    niz2[br]:=raz;
  end;
  frmglavna.podaci.Recordset.MoveNext;
end;      bar.StepIt;
for i:=1 to br do begin
  tren:=niz[i];
  razr:=niz2[i];
  val(razr[1],brojcek,c);
  brojcek:=brojcek+1;
  str(brojcek,kk);
  razr:=kk+razr[2];
  frmglavna.Baza.open;
  frmglavna.Baza.Execute('update Ucenici set Razred='+chr(39)+razr+chr(39)+' where ID='+tren);
  frmglavna.Baza.close;
end;
frmglavna.podaci.Close;
frmglavna.podaci.CommandText:='select * from Ponavljaci';
frmglavna.podaci.ExecuteOptions;
frmglavna.podaci.Open; br:=0;
frmglavna.podaci.Recordset.MoveFirst;
while not frmglavna.podaci.recordset.EOF do begin
  br:=br+1;
  nesto:=frmglavna.podaci.Recordset.fields.item['ID']; nnesto:=nesto;
  niz[br]:=nnesto;
  frmglavna.podaci.Recordset.MoveNext;
end;
frmglavna.podaci.close;
for i:=1 to br do begin
  frmglavna.Baza.Open;
  frmglavna.Baza.Execute('delete from ponavljaci where ID='+niz[i]);
end;
frmglavna.Baza.close;
label1.Caption:='Prijelaz gotov.';
label2.Caption:='';
application.MessageBox('Prijelaz godine uspješno izvršen.', 'Registar - prijelaz godine', mb_OK);
end;
end;
end.
