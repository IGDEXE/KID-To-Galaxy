unit U_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, XPMan, MPlayer;

type
  Tfrmmenu = class(TForm)
    btnjogar: TButton;
    btnsair: TButton;
    Image1: TImage;
    XPManifest1: TXPManifest;
    mpmenu: TMediaPlayer;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnjogarClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmenu: Tfrmmenu;

implementation

uses U_T1, U_Gameover, U_Ini, U_Cred;

{$R *.dfm}

procedure Tfrmmenu.btnjogarClick(Sender: TObject);
begin
  mpmenu.Close();
  Application.CreateForm(Tfrmt1, frmt1);
  Application.CreateForm(Tfrmgameover, frmgameover);
  frmt1.show();
  frmmenu.Close();
end;

procedure Tfrmmenu.btnsairClick(Sender: TObject);
begin
  frmini.Close();
end;

procedure Tfrmmenu.FormShow(Sender: TObject);
begin
  mpmenu.Enabled := true;
  mpmenu.Close;
  mpmenu.FileName:=('musicas\menu.mp3');
  mpmenu.Open();
  mpmenu.Play();
end;

end.
