unit U_Ini;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  Tfrmini = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmini: Tfrmini;
  cont : integer;

implementation

uses U_Menu;

{$R *.dfm}

procedure Tfrmini.Timer1Timer(Sender: TObject);
begin
   if (cont < 3) then
 begin
  cont := cont + 1;
 end
 else if (cont > 2) then
 begin
    Timer1.Enabled := false;
    Application.CreateForm(Tfrmmenu, frmmenu);
    frmmenu.Show();
    frmini.Hide();
 end
end;

procedure Tfrmini.FormShow(Sender: TObject);
begin
  cont := 0;
  Timer1.Enabled := true;
end;

end.
