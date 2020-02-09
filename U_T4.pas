unit U_T4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, MPlayer;

type
  Tfrmt4 = class(TForm)
    Image1: TImage;
    tmt4: TTimer;
    mpt4: TMediaPlayer;
    procedure tmt4Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmt4: Tfrmt4;
  cont4 : integer;

implementation

uses U_Mapa4;

{$R *.dfm}

procedure Tfrmt4.tmt4Timer(Sender: TObject);
begin
       if (cont4 < 2) then
 begin
  cont4 := cont4 + 1;
 end
 else if (cont4 > 1) then
 begin
    Tmt4.Enabled := false;
    Application.CreateForm(Tfrmfd4, frmfd4);
    frmfd4.Show();
    frmt4.Close();
 end
end;

procedure Tfrmt4.FormShow(Sender: TObject);
begin
  cont4 := 0;
  Tmt4.Enabled := true;
  mpt4.FileName:=('musicas\wildfire.mp3');
  mpt4.Open();
  mpt4.Play();
end;

end.
