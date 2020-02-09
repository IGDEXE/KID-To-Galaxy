unit U_T6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, MPlayer;

type
  Tfrmt6 = class(TForm)
    Image1: TImage;
    tmt6: TTimer;
    mpt6: TMediaPlayer;
    procedure tmt6Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmt6: Tfrmt6;
  cont6 : integer;

implementation

uses U_Mapa6;

{$R *.dfm}

procedure Tfrmt6.tmt6Timer(Sender: TObject);
begin
  if (cont6 < 2) then
 begin
  cont6 := cont6 + 1;
 end
 else if (cont6 > 1) then
 begin
    Tmt6.Enabled := false;
    Application.CreateForm(Tfrmfd6, frmfd6);
    frmfd6.Show();
    frmt6.Close();
 end
end;

procedure Tfrmt6.FormShow(Sender: TObject);
begin
  cont6 := 0;
  Tmt6.Enabled := true;
  mpt6.FileName:=('musicas\sephiron.mp3');
  mpt6.Open();
  mpt6.Play();
end;

end.
