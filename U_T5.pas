unit U_T5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, MPlayer;

type
  Tfrmt5 = class(TForm)
    Image1: TImage;
    tmt5: TTimer;
    mpt5: TMediaPlayer;
    procedure tmt5Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmt5: Tfrmt5;
  cont5 : integer;

implementation

uses U_Mapa5;

{$R *.dfm}

procedure Tfrmt5.tmt5Timer(Sender: TObject);
begin
 if (cont5 < 2) then
 begin
  cont5 := cont5 + 1;
 end
 else if (cont5 > 1) then
 begin
    Tmt5.Enabled := false;
    Application.CreateForm(Tfrmfd5, frmfd5);
    frmfd5.Show();
    frmt5.Close();
 end
end;

procedure Tfrmt5.FormShow(Sender: TObject);
begin
  cont5 := 0;
  Tmt5.Enabled := true;
  mpt5.FileName:=('musicas\ark.mp3');
  mpt5.Open();
  mpt5.Play();
end;

end.
