unit U_T3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, MPlayer;

type
  Tfrmt3 = class(TForm)
    Image1: TImage;
    tmt3: TTimer;
    mpt3: TMediaPlayer;
    procedure tmt3Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmt3: Tfrmt3;
  cont3 : integer;

implementation

uses U_Mapa3;

{$R *.dfm}

procedure Tfrmt3.tmt3Timer(Sender: TObject);
begin
       if (cont3 < 2) then
 begin
  cont3 := cont3 + 1;
 end
 else if (cont3 > 1) then
 begin
    Tmt3.Enabled := false;
    Application.CreateForm(Tfrmfd3, frmfd3);
    frmfd3.Show();
    frmt3.Close();
 end
end;

procedure Tfrmt3.FormShow(Sender: TObject);
begin
  tmt3.Enabled := true;
  cont3 := 0;
  mpt3.FileName:=('musicas\welcome.mp3');
  mpt3.Open();
  mpt3.Play();
end;

end.
