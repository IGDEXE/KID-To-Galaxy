unit U_T2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, MPlayer;

type
  Tfrmt2 = class(TForm)
    Image1: TImage;
    tmt2: TTimer;
    mpt2: TMediaPlayer;
    procedure FormShow(Sender: TObject);
    procedure tmt2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmt2: Tfrmt2;
  cont2 : integer;

implementation

uses U_Mapa2;

{$R *.dfm}

procedure Tfrmt2.FormShow(Sender: TObject);
begin
  cont2 := 0;
  Tmt2.Enabled := true;
  mpt2.FileName:=('musicas\lost.mp3');
  mpt2.Open();
  mpt2.Play();
end;

procedure Tfrmt2.tmt2Timer(Sender: TObject);
begin
     if (cont2 < 2) then
 begin
  cont2 := cont2 + 1;
 end
 else if (cont2 > 1) then
 begin
    Tmt2.Enabled := false;
    Application.CreateForm(Tfrmfd2, frmfd2);
    frmfd2.Show();
    frmt2.Close();
 end
end;

end.
