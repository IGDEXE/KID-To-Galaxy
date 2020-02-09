unit U_T1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, MPlayer;

type
  Tfrmt1 = class(TForm)
    Image1: TImage;
    Tmt1: TTimer;
    mpt1: TMediaPlayer;
    procedure Tmt1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmt1: Tfrmt1;
  cont1:integer;

implementation

uses U_Mapa1;

{$R *.dfm}

procedure Tfrmt1.Tmt1Timer(Sender: TObject);
begin
   if (cont1 < 2) then
 begin
  cont1 := cont1 + 1;
 end
 else if (cont1 > 1) then
 begin
    Tmt1.Enabled := false;
    Application.CreateForm(Tfrmfd1, frmfd1);
    frmfd1.Show();
    frmt1.Hide();
 end
end;

procedure Tfrmt1.FormShow(Sender: TObject);
begin
  cont1 := 0;
  Tmt1.Enabled := true;
  mpt1.FileName:=('musicas\ToGalaxy.mp3');
  mpt1.Open();
  mpt1.Play();
end;

end.
