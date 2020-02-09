unit U_Mapa3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  Tfrmfd3 = class(TForm)
    imgfd3: TImage;
    imgp1: TImage;
    imgbt1: TImage;
    imgbt2: TImage;
    imgbt3: TImage;
    imgbt4: TImage;
    imgbt5: TImage;
    imgbt6: TImage;
    imgbt7: TImage;
    imgbt8: TImage;
    imgbt9: TImage;
    imgbt10: TImage;
    tmbt31: TTimer;
    tmbt32: TTimer;
    tmbt33: TTimer;
    tmbt34: TTimer;
    tmbt35: TTimer;
    tmbt36: TTimer;
    tmbt37: TTimer;
    tmbt38: TTimer;
    tmbt39: TTimer;
    tmbt310: TTimer;
    tmarea: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tmbt31Timer(Sender: TObject);
    procedure tmbt32Timer(Sender: TObject);
    procedure tmbt33Timer(Sender: TObject);
    procedure tmbt34Timer(Sender: TObject);
    procedure tmbt35Timer(Sender: TObject);
    procedure tmbt36Timer(Sender: TObject);
    procedure tmbt37Timer(Sender: TObject);
    procedure tmbt38Timer(Sender: TObject);
    procedure tmbt39Timer(Sender: TObject);
    procedure tmbt310Timer(Sender: TObject);
    procedure tmareaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfd3: Tfrmfd3;
  movbt1, movbt2, movbt3, movbt4 ,movbt5 ,movbt6, movbt7 ,movbt8, movbt9 , movbt10 : integer;

implementation

uses U_Gameover, U_Mapa1, U_T4, U_T3;

{$R *.dfm}

procedure Tfrmfd3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //Area de movimentação
  //Serie de regras que permitem ao jogador andar pelo cenario
//------------------------------------------------------------------------------
  if (imgp1.Top >= 1) and(imgp1.Top <= 824) and (imgp1.Left >= 0) and (imgp1.Left <= 1512) then
   begin
//------------------------------------------------------------------------------
    if (key = 40) then
    //Quando precionar a tecla direcional para cima, faz a imagem subir, desde
    // que ela esteja dentro da tela
      begin
        imgp1.Top:=imgp1.Top-15;
          if (imgp1.Top <= 0) then
             begin
                imgp1.Top := 1;
             end
      end
//------------------------------------------------------------------------------
      else if (key = 38) then
      //Quando precionar a tecla direcional para baixo, faz a imagem descer,
      // desde que ela esteja dentro da tela
      begin
        imgp1.Top:=imgp1.Top+15;
          if (imgp1.Top >= 824) then
            begin
              imgp1.Top := 823;
            end
       end
//------------------------------------------------------------------------------
      else  if (key = 39) then
    //Quando precionar a tecla direcional para esquerda, faz a imagem ir para a
    // esquerda, desde que ela esteja dentro da tela
      begin
        imgp1.left:=imgp1.left-15;
           if (imgp1.left <= 0 ) then
             begin
               imgp1.left := 1 ;
             end
      end
//------------------------------------------------------------------------------
      else if (key = 37) then
    //Quando precionar a tecla direcional para direita, faz a imagem ir para a
    // direita, desde que ela esteja dentro da tela
      begin
        imgp1.left:=imgp1.left+15;
           if (imgp1.left >= 1512 ) then
             begin
               imgp1.left := 1511 ;
             end
      end;
//------------------------------------------------------------------------------
end ;
end;

procedure Tfrmfd3.FormShow(Sender: TObject);
begin
  DoubleBuffered := true;
 tmarea.enabled := true;
    tmbt31.Enabled := true;
    tmbt32.Enabled := true;
    tmbt33.Enabled := true;
    tmbt34.Enabled := true;
    tmbt35.Enabled := true;
    tmbt36.Enabled := true;
    tmbt37.Enabled := true;
    tmbt38.Enabled := true;
    tmbt39.Enabled := true;
    tmbt310.Enabled := true;
end;

procedure Tfrmfd3.tmbt31Timer(Sender: TObject);
begin
 if (movbt1 >= 840) then
    begin
      movbt1 := 0;
      imgbt1.Top := movbt1;
    end
    else if (movbt1 < 840) then
    begin
      movbt1 := movbt1 + 20;
      imgbt1.Top := movbt1;
    end
end;

procedure Tfrmfd3.tmbt32Timer(Sender: TObject);
begin
  if (movbt2 < 0) then
    begin
      movbt2 := 840;
      imgbt2.Top := movbt2;
    end
    else if (movbt1 < 840) then
    begin
      movbt2 := movbt2 - 20;
      imgbt2.Top := movbt2;
    end
end;

procedure Tfrmfd3.tmbt33Timer(Sender: TObject);
begin
  if (movbt3 >= 840) then
    begin
      movbt3 := 0;
      imgbt3.Top := movbt3;
    end
    else if (movbt3 < 840) then
    begin
      movbt3 := movbt3 + 30;
      imgbt3.Top := movbt3;
    end
end;

procedure Tfrmfd3.tmbt34Timer(Sender: TObject);
begin
  if (movbt4 < 0) then
    begin
      movbt4 := 840;
      imgbt4.Top := movbt4;
    end
    else if (movbt3 < 840) then
    begin
      movbt4 := movbt4 - 25;
      imgbt4.Top := movbt4;
    end
end;

procedure Tfrmfd3.tmbt35Timer(Sender: TObject);
begin
  if (movbt5 >= 840) then
    begin
      movbt5 := 0;
      imgbt5.Top := movbt5;
    end
    else if (movbt5 < 840) then
    begin
      movbt5 := movbt5 + 33;
      imgbt5.Top := movbt5;
    end
end;

procedure Tfrmfd3.tmbt36Timer(Sender: TObject);
begin
  if (movbt6 < 0) then
    begin
      movbt6 := 1499;
      imgbt6.left := movbt6;
    end
    else if (movbt5 < 1500) then
    begin
      movbt6 := movbt6 - 28;
      imgbt6.left := movbt6;
    end
end;

procedure Tfrmfd3.tmbt37Timer(Sender: TObject);
begin
  if (movbt7 >= 1500) then
    begin
      movbt7 := 0;
      imgbt7.left := movbt7;
    end
    else if (movbt7 < 1500) then
    begin
      movbt7 := movbt7 + 29;
      imgbt7.Left := movbt7;
    end
end;

procedure Tfrmfd3.tmbt38Timer(Sender: TObject);
begin
  if (movbt8 < 0) then
    begin
      movbt8 := 1499;
      imgbt8.left := movbt8;
    end
    else if (movbt7 < 1500) then
    begin
      movbt8 := movbt8 - 32;
      imgbt8.left := movbt8;
    end
end;

procedure Tfrmfd3.tmbt39Timer(Sender: TObject);
begin
  if (movbt9 < 0) then
    begin
      movbt9 := 1499;
      imgbt9.left := movbt9;
    end
    else if (movbt8 < 1500) then
    begin
      movbt9 := movbt9 - 36;
      imgbt9.left := movbt9;
    end
end;

procedure Tfrmfd3.tmbt310Timer(Sender: TObject);
begin
  if (movbt10 < 0) then
    begin
      movbt10 := 1499;
      imgbt10.left := movbt10;
    end
    else if (movbt9 < 1500) then
    begin
      movbt10 := movbt10 - 40;
      imgbt10.left := movbt10;
    end
end;

procedure Tfrmfd3.tmareaTimer(Sender: TObject);
begin
     //Colisão das AIs
//------------------------------------------------------------------------------
  //Booth 1
  if (imgp1.top >= imgbt1.top - 70) and (imgp1.top <= imgbt1.top + 70) and (imgp1.left >= imgbt1.left - 70) and (imgp1.left <= imgbt1.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();

  end
//------------------------------------------------------------------------------
  //Booth 2
  else if (imgp1.top >= imgbt2.top - 70) and (imgp1.top <= imgbt2.top + 70) and (imgp1.left >= imgbt2.left - 70) and (imgp1.left <= imgbt2.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();
  end
//------------------------------------------------------------------------------
  //Booth 3
  else if (imgp1.top >= imgbt3.top - 70) and (imgp1.top <= imgbt3.top + 70) and (imgp1.left >= imgbt3.left - 70) and (imgp1.left <= imgbt3.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();
  end
//------------------------------------------------------------------------------
  //Booth 4
  else if (imgp1.top >= imgbt4.top - 70) and (imgp1.top <= imgbt4.top + 70) and (imgp1.left >= imgbt4.left - 70) and (imgp1.left <= imgbt4.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();
  end
//------------------------------------------------------------------------------
//Booth 5
  else if  (imgp1.top >= imgbt5.top - 70) and (imgp1.top <= imgbt5.top + 70) and (imgp1.left >= imgbt5.left - 70) and (imgp1.left <= imgbt5.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();
  end
//------------------------------------------------------------------------------
  //Booth 6
  else if (imgp1.top >= imgbt6.top - 70) and (imgp1.top <= imgbt6.top + 70) and (imgp1.left >= imgbt6.left - 70) and (imgp1.left <= imgbt6.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();
  end
//------------------------------------------------------------------------------
//Booth 7
  else if (imgp1.top >= imgbt7.top - 70) and (imgp1.top <= imgbt7.top + 70) and (imgp1.left >= imgbt7.left - 70) and (imgp1.left <= imgbt7.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();
  end
//------------------------------------------------------------------------------
//Booth 8
  else if (imgp1.top >= imgbt8.top - 70) and (imgp1.top <= imgbt8.top + 70) and (imgp1.left >= imgbt8.left - 70) and (imgp1.left <= imgbt8.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();
  end
//------------------------------------------------------------------------------
//Booth 9
  else if (imgp1.top >= imgbt9.top - 70) and (imgp1.top <= imgbt9.top + 70) and (imgp1.left >= imgbt9.left - 70) and (imgp1.left <= imgbt9.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();
  end
//------------------------------------------------------------------------------
//Booth 10
  else if (imgp1.top >= imgbt10.top - 70) and (imgp1.top <= imgbt10.top + 70) and (imgp1.left >= imgbt10.left - 70) and (imgp1.left <= imgbt10.left + 70) then
  begin
    frmgameover.Show();
    frmt3.mpt3.Close();
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmfd3.Close();
  end
//------------------------------------------------------------------------------

//Area onde fica o portal
//------------------------------------------------------------------------------
  else if (imgp1.Top > 720 ) and (imgp1.top < 800) and (imgp1.Left >= 1420 ) and (imgp1.left < 1500) then
  begin
    tmarea.enabled := false;
    tmbt31.Enabled := false;
    tmbt32.Enabled := false;
    tmbt33.Enabled := false;
    tmbt34.Enabled := false;
    tmbt35.Enabled := false;
    tmbt36.Enabled := false;
    tmbt37.Enabled := false;
    tmbt38.Enabled := false;
    tmbt39.Enabled := false;
    tmbt310.Enabled := false;
    frmt3.mpt3.Close();
    Application.CreateForm(Tfrmt4, frmt4);
    frmfd3.Close();
    frmt4.Show();
  end
end;

end.
