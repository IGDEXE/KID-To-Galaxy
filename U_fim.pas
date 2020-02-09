unit U_fim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  Tfrmfim = class(TForm)
    Image1: TImage;
    tmfim: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    procedure tmfimTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfim: Tfrmfim;
  contf : integer;

implementation

uses U_Menu, U_Cred;

{$R *.dfm}

procedure Tfrmfim.tmfimTimer(Sender: TObject);
begin
   if (contf < 10) then
 begin
  contf := contf + 1;
 end
 else if (contf > 9) then
 begin
    Tmfim.Enabled := false;
    frmcred.mpcred.Close();
    frmmenu.Show();
    frmfim.Close();
 end
end;

procedure Tfrmfim.FormShow(Sender: TObject);
begin
  contf := 0;
  Tmfim.Enabled := true;
end;

end.
