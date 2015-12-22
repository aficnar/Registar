unit Info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmInfo = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btPovratak: TButton;
    Label8: TLabel;
    Label9: TLabel;
    procedure btPovratakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfo: TfrmInfo;

implementation

{$R *.dfm}

procedure TfrmInfo.btPovratakClick(Sender: TObject);
begin
frminfo.Hide;
end;

end.
