unit U_Cred;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, MPlayer;

type
  Tfrmcred = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    tmcred: TTimer;
    mpcred: TMediaPlayer;
    Label19: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    procedure tmcredTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcred: Tfrmcred;
  contc : integer;

implementation

uses U_fim;

{$R *.dfm}

procedure Tfrmcred.tmcredTimer(Sender: TObject);
begin
    if (contc < 30) then
 begin
  contc := contc + 1;
 end
 else if (contc > 20) then
 begin
    Tmcred.Enabled := false;
    Application.CreateForm(Tfrmfim, frmfim);
    frmfim.Show();
    frmcred.Close();
 end
end;

procedure Tfrmcred.FormShow(Sender: TObject);
begin
  contc := 0;
  Tmcred.Enabled := true;
  mpcred.FileName:=('musicas\fim.mp3');
  mpcred.Open();
  mpcred.Play();
end;

end.
