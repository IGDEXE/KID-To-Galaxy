unit U_Gameover;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, MPlayer;

type
  Tfrmgameover = class(TForm)
    imggo: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    mpgo: TMediaPlayer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgameover: Tfrmgameover;
  cr : integer;

implementation

uses U_Ini;

{$R *.dfm}

procedure Tfrmgameover.Timer1Timer(Sender: TObject);
begin
  if (cr > 0) then
   begin
     cr := cr - 1;
     Label1.Caption := inttostr(cr);
   end
   else if (cr = 0) then
   begin
      frmini.Close();
   end
end;

procedure Tfrmgameover.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
  cr := 10;
  mpgo.FileName:=('musicas\gameover.mp3');
  mpgo.Open();
  mpgo.Play();
end;

procedure Tfrmgameover.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) then
  begin
    Timer1.Enabled := false;
    mpgo.Close();
    frmini.Show();
    frmgameover.Close();

  end
end;

end.
