program Registar;
uses
  Forms,
  Ulaz in 'Ulaz.pas' {frmUlaz},
  Glavna in 'Glavna.pas' {frmGlavna},
  Novi in 'Novi.pas' {frmNovi},
  Pretraga in 'Pretraga.pas' {frmPretraga},
  Prijelaz in 'Prijelaz.pas' {frmPrijelaz},
  Polugodiste in 'Polugodiste.pas' {frmPolugodiste},
  Izmjena in 'Izmjena.pas' {frmIzmjena},
  Ispis in 'Ispis.pas' {frmIspis},
  Kraj in 'Kraj.pas' {frmKraj},
  Matura in 'Matura.pas' {frmMatura},
  Opcenito in 'Opcenito.pas' {frmOpcenito},
  Prilagodbe in 'Prilagodbe.pas' {frmPrilagodbe},
  Pregled in 'Pregled.pas' {frmPregled},
  Statistika in 'Statistika.pas' {frmStatistika},
  PrijelazSkGod in 'PrijelazSkGod.pas' {frmPrijelazSkGod},
  Ponavljaci in 'Ponavljaci.pas' {frmPonavljaci},
  Info in 'Info.pas' {frmInfo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmGlavna, frmGlavna);
  Application.CreateForm(TfrmUlaz, frmUlaz);
  Application.CreateForm(TfrmNovi, frmNovi);
  Application.CreateForm(TfrmPretraga, frmPretraga);
  Application.CreateForm(TfrmPrijelaz, frmPrijelaz);
  Application.CreateForm(TfrmPolugodiste, frmPolugodiste);
  Application.CreateForm(TfrmIzmjena, frmIzmjena);
  Application.CreateForm(TfrmIspis, frmIspis);
  Application.CreateForm(TfrmKraj, frmKraj);
  Application.CreateForm(TfrmMatura, frmMatura);
  Application.CreateForm(TfrmOpcenito, frmOpcenito);
  Application.CreateForm(TfrmPrilagodbe, frmPrilagodbe);
  Application.CreateForm(TfrmPregled, frmPregled);
  Application.CreateForm(TfrmStatistika, frmStatistika);
  Application.CreateForm(TfrmPrijelazSkGod, frmPrijelazSkGod);
  Application.CreateForm(TfrmPonavljaci, frmPonavljaci);
  Application.CreateForm(TfrmInfo, frmInfo);
  Application.ShowMainForm:=False;
  frmUlaz.Show;
  Application.Run;
end.
