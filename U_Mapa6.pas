unit U_Mapa6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  Tfrmfd6 = class(TForm)
    imgfinal: TImage;
    imgp1: TImage;
    imgbt1: TImage;
    imgbt2: TImage;
    imgbt3: TImage;
    imgbt4: TImage;
    imgbt5: TImage;
    imgbt6: TImage;
    imgbt9: TImage;
    imgbt11: TImage;
    imgbt10: TImage;
    imgbt12: TImage;
    imgbt7: TImage;
    imgbt8: TImage;
    imgbt13: TImage;
    imgbt18: TImage;
    imgbt17: TImage;
    imgbt14: TImage;
    imgbt15: TImage;
    imgbt16: TImage;
    imgbt19: TImage;
    imgbt20: TImage;
    imgbt21: TImage;
    imgbt22: TImage;
    imgbt23: TImage;
    imgbt24: TImage;
    imgbt25: TImage;
    imgbt26: TImage;
    imgbt27: TImage;
    imgbt628: TImage;
    imgbt28: TImage;
    imgbt30: TImage;
    imgbt29: TImage;
    tmbt61: TTimer;
    tmbt62: TTimer;
    tmbt63: TTimer;
    tmbt64: TTimer;
    tmbt65: TTimer;
    tmbt66: TTimer;
    tmbt67: TTimer;
    tmbt68: TTimer;
    tmbt69: TTimer;
    tmbt610: TTimer;
    tmbt611: TTimer;
    tmbt612: TTimer;
    tmbt613: TTimer;
    tmbt614: TTimer;
    tmbt615: TTimer;
    tmbt616: TTimer;
    tmbt617: TTimer;
    tmbt618: TTimer;
    tmbt619: TTimer;
    tmbt620: TTimer;
    tmbt621: TTimer;
    tmbt622: TTimer;
    tmbt623: TTimer;
    tmbt624: TTimer;
    tmbt625: TTimer;
    tmbt626: TTimer;
    tmbt627: TTimer;
    tmbt628: TTimer;
    tmbt629: TTimer;
    tmarea: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tmbt61Timer(Sender: TObject);
    procedure tmbt62Timer(Sender: TObject);
    procedure tmbt63Timer(Sender: TObject);
    procedure tmbt64Timer(Sender: TObject);
    procedure tmbt65Timer(Sender: TObject);
    procedure tmbt66Timer(Sender: TObject);
    procedure tmbt67Timer(Sender: TObject);
    procedure tmbt68Timer(Sender: TObject);
    procedure tmbt69Timer(Sender: TObject);
    procedure tmbt610Timer(Sender: TObject);
    procedure tmbt611Timer(Sender: TObject);
    procedure tmbt612Timer(Sender: TObject);
    procedure tmbt613Timer(Sender: TObject);
    procedure tmbt614Timer(Sender: TObject);
    procedure tmbt615Timer(Sender: TObject);
    procedure tmbt616Timer(Sender: TObject);
    procedure tmbt617Timer(Sender: TObject);
    procedure tmbt618Timer(Sender: TObject);
    procedure tmbt619Timer(Sender: TObject);
    procedure tmbt620Timer(Sender: TObject);
    procedure tmbt621Timer(Sender: TObject);
    procedure tmbt622Timer(Sender: TObject);
    procedure tmbt623Timer(Sender: TObject);
    procedure tmbt624Timer(Sender: TObject);
    procedure tmbt625Timer(Sender: TObject);
    procedure tmbt626Timer(Sender: TObject);
    procedure tmbt627Timer(Sender: TObject);
    procedure tmbt628Timer(Sender: TObject);
    procedure tmbt629Timer(Sender: TObject);
    procedure tmareaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfd6: Tfrmfd6;
  movbt1, movbt2, movbt3, movbt4 ,movbt5 ,movbt6, movbt7 ,movbt8, movbt9 , movbt10, movbt11, movbt12, movbt13, movbt14, movbt15, movbt16 ,movbt17 ,movbt18, movbt19 ,movbt20, movbt21 , movbt22, movbt23, movbt24, movbt25 , movbt26 , movbt27 , movbt28 , movbt29,  movbt30 , movbt31 : integer;


implementation

uses U_Gameover, U_Mapa4, U_Cred, U_T6;

{$R *.dfm}

procedure Tfrmfd6.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmfd6.FormShow(Sender: TObject);
begin
  DoubleBuffered := true;
  movbt19 := 1496;
  movbt20 := 1496;
  movbt21 := 1496;
  movbt22 := 1496;
  movbt23 := 1496;
  movbt24 := 1496;
  movbt25 := 1496;
  movbt26 := 1496;
  movbt27 := 1496;
  movbt28 := 1496;
  movbt29 := 1496;
  movbt30 := 1496;
  movbt31 := 1496;
  tmarea.enabled := true;
    tmbt61.Enabled := true;
    tmbt62.Enabled := true;
    tmbt63.Enabled := true;
    tmbt64.Enabled := true;
    tmbt65.Enabled := true;
    tmbt66.Enabled := true;
    tmbt67.Enabled := true;
    tmbt68.Enabled := true;
    tmbt69.Enabled := true;
    tmbt610.Enabled := true;
    tmbt611.Enabled := true;
    tmbt612.Enabled := true;
    tmbt613.Enabled := true;
    tmbt614.Enabled := true;
    tmbt615.Enabled := true;
    tmbt616.Enabled := true;
    tmbt617.Enabled := true;
    tmbt618.Enabled := true;
    tmbt619.Enabled := true;
    tmbt620.Enabled := true;
    tmbt621.Enabled := true;
    tmbt622.Enabled := true;
    tmbt623.Enabled := true;
    tmbt624.Enabled := true;
    tmbt625.Enabled := true;
    tmbt626.Enabled := true;
    tmbt627.Enabled := true;
    tmbt628.Enabled := true;
    tmbt629.Enabled := true;
end;

procedure Tfrmfd6.tmbt61Timer(Sender: TObject);
begin
  if (movbt2 >= 840) then
    begin
      movbt2 := 0;
      imgbt2.Top := movbt2;
    end
    else if (movbt2 < 840) then
    begin
      movbt2 := movbt2 + 20;
      imgbt2.Top := movbt2;
    end
end;

procedure Tfrmfd6.tmbt62Timer(Sender: TObject);
begin
  if (movbt3 >= 840) then
    begin
      movbt3 := 0;
      imgbt3.Top := movbt3;
    end
    else if (movbt3 < 840) then
    begin
      movbt3 := movbt3 + 24;
      imgbt3.Top := movbt3;
    end
end;

procedure Tfrmfd6.tmbt63Timer(Sender: TObject);
begin
  if (movbt4 >= 840) then
    begin
      movbt4 := 0;
      imgbt4.Top := movbt4;
    end
    else if (movbt4 < 840) then
    begin
      movbt4 := movbt4 + 28;
      imgbt4.Top := movbt4;
    end
end;

procedure Tfrmfd6.tmbt64Timer(Sender: TObject);
begin
  if (movbt5 >= 840) then
    begin
      movbt5 := 0;
      imgbt5.Top := movbt5;
    end
    else if (movbt5 < 840) then
    begin
      movbt5 := movbt5 + 32;
      imgbt5.Top := movbt5;
    end
end;

procedure Tfrmfd6.tmbt65Timer(Sender: TObject);
begin
  if (movbt6 >= 840) then
    begin
      movbt6 := 0;
      imgbt6.Top := movbt6;
    end
    else if (movbt6 < 840) then
    begin
      movbt6 := movbt6 + 36;
      imgbt6.Top := movbt6;
    end
end;

procedure Tfrmfd6.tmbt66Timer(Sender: TObject);
begin
  if (movbt7 >= 840) then
    begin
      movbt7 := 0;
      imgbt7.Top := movbt7;
    end
    else if (movbt7 < 840) then
    begin
      movbt7 := movbt7 + 40;
      imgbt7.Top := movbt7;
    end
end;

procedure Tfrmfd6.tmbt67Timer(Sender: TObject);
begin
  if (movbt8 >= 840) then
    begin
      movbt8 := 0;
      imgbt8.Top := movbt8;
    end
    else if (movbt8 < 840) then
    begin
      movbt8 := movbt8 + 44;
      imgbt8.Top := movbt8;
    end
end;

procedure Tfrmfd6.tmbt68Timer(Sender: TObject);
begin
  if (movbt9 >= 840) then
    begin
      movbt9 := 0;
      imgbt9.Top := movbt9;
    end
    else if (movbt9 < 840) then
    begin
      movbt9 := movbt9 + 48;
      imgbt9.Top := movbt9;
    end
end;

procedure Tfrmfd6.tmbt69Timer(Sender: TObject);
begin
  if (movbt10 >= 840) then
    begin
      movbt10 := 0;
      imgbt10.Top := movbt10;
    end
    else if (movbt10 < 840) then
    begin
      movbt10 := movbt10 + 52;
      imgbt10.Top := movbt10;
    end
end;

procedure Tfrmfd6.tmbt610Timer(Sender: TObject);
begin
  if (movbt11 >= 840) then
    begin
      movbt11 := 0;
      imgbt11.Top := movbt11;
    end
    else if (movbt11 < 840) then
    begin
      movbt11 := movbt11 + 56;
      imgbt11.Top := movbt11;
    end
end;

procedure Tfrmfd6.tmbt611Timer(Sender: TObject);
begin
  if (movbt12 >= 840) then
    begin
      movbt12 := 0;
      imgbt12.Top := movbt12;
    end
    else if (movbt12 < 840) then
    begin
      movbt12 := movbt12 + 60;
      imgbt12.Top := movbt12;
    end
end;

procedure Tfrmfd6.tmbt612Timer(Sender: TObject);
begin
  if (movbt13 >= 840) then
    begin
      movbt13 := 0;
      imgbt13.Top := movbt13;
    end
    else if (movbt13 < 840) then
    begin
      movbt13 := movbt13 + 64;
      imgbt13.Top := movbt13;
    end
end;

procedure Tfrmfd6.tmbt613Timer(Sender: TObject);
begin
  if (movbt14 >= 840) then
    begin
      movbt14 := 0;
      imgbt14.Top := movbt14;
    end
    else if (movbt14 < 840) then
    begin
      movbt14 := movbt14 + 68;
      imgbt14.Top := movbt14;
    end
end;

procedure Tfrmfd6.tmbt614Timer(Sender: TObject);
begin
  if (movbt15 >= 840) then
    begin
      movbt15 := 0;
      imgbt15.Top := movbt15;
    end
    else if (movbt15 < 840) then
    begin
      movbt15 := movbt15 + 72;
      imgbt15.Top := movbt15;
    end
end;

procedure Tfrmfd6.tmbt615Timer(Sender: TObject);
begin
  if (movbt16 >= 840) then
    begin
      movbt16 := 0;
      imgbt16.Top := movbt16;
    end
    else if (movbt16 < 840) then
    begin
      movbt16 := movbt16 + 76;
      imgbt16.Top := movbt16;
    end
end;

procedure Tfrmfd6.tmbt616Timer(Sender: TObject);
begin
  if (movbt17 >= 840) then
    begin
      movbt17 := 0;
      imgbt17.Top := movbt17;
    end
    else if (movbt17 < 840) then
    begin
      movbt17 := movbt17 + 80;
      imgbt17.Top := movbt17;
    end
end;

procedure Tfrmfd6.tmbt617Timer(Sender: TObject);
begin
  if (movbt18 >= 840) then
    begin
      movbt18 := 0;
      imgbt18.Top := movbt18;
    end
    else if (movbt18 < 840) then
    begin
      movbt18 := movbt18 + 84;
      imgbt18.Top := movbt18;
    end
end;

procedure Tfrmfd6.tmbt618Timer(Sender: TObject);
begin
  if (movbt19 < 0) then
    begin
      movbt19 := 1496;
      imgbt19.left := movbt19;
    end
    else if (movbt19 > 0) then
    begin
      movbt19 := movbt19 - 22;
      imgbt19.Left := movbt19;
    end
end;

procedure Tfrmfd6.tmbt619Timer(Sender: TObject);
begin
  if (movbt21 < 0) then
    begin
      movbt21 := 1496;
      imgbt21.left := movbt21;
    end
    else if (movbt21 > 0) then
    begin
      movbt21 := movbt21 - 25;
      imgbt21.Left := movbt21;
    end
end;

procedure Tfrmfd6.tmbt620Timer(Sender: TObject);
begin
  if (movbt22 < 0) then
    begin
      movbt22 := 1496;
      imgbt22.left := movbt22;
    end
    else if (movbt22 > 0) then
    begin
      movbt22 := movbt22 - 28;
      imgbt22.Left := movbt22;
    end
end;

procedure Tfrmfd6.tmbt621Timer(Sender: TObject);
begin
  if (movbt23 < 0) then
    begin
      movbt23 := 1496;
      imgbt23.left := movbt23;
    end
    else if (movbt23 > 0) then
    begin
      movbt23 := movbt23 - 31;
      imgbt23.Left := movbt23;
    end
end;

procedure Tfrmfd6.tmbt622Timer(Sender: TObject);
begin
  if (movbt24 < 0) then
    begin
      movbt24 := 1496;
      imgbt24.left := movbt24;
    end
    else if (movbt10 > 0) then
    begin
      movbt24 := movbt24 - 34;
      imgbt24.Left := movbt24;
    end
end;

procedure Tfrmfd6.tmbt623Timer(Sender: TObject);
begin
  if (movbt20 < 0) then
    begin
      movbt20 := 1496;
      imgbt20.left := movbt20;
    end
    else if (movbt20 > 0) then
    begin
      movbt20 := movbt20 - 37;
      imgbt20.Left := movbt20;
    end
end;

procedure Tfrmfd6.tmbt624Timer(Sender: TObject);
begin
  if (movbt25 < 0) then
    begin
      movbt25 := 1496;
      imgbt25.left := movbt25;
    end
    else if (movbt25 > 0) then
    begin
      movbt25 := movbt25 - 40;
      imgbt25.Left := movbt25;
    end
end;

procedure Tfrmfd6.tmbt625Timer(Sender: TObject);
begin
  if (movbt26 < 0) then
    begin
      movbt26 := 1496;
      imgbt26.left := movbt26;
    end
    else if (movbt26 > 0) then
    begin
      movbt26 := movbt26 - 43;
      imgbt26.Left := movbt26;
    end
end;

procedure Tfrmfd6.tmbt626Timer(Sender: TObject);
begin
  if (movbt27 < 0) then
    begin
      movbt27 := 1496;
      imgbt27.left := movbt27;
    end
    else if (movbt27 > 0) then
    begin
      movbt27 := movbt27 - 46;
      imgbt27.Left := movbt27;
    end
end;

procedure Tfrmfd6.tmbt627Timer(Sender: TObject);
begin
  if (movbt28 < 0) then
    begin
      movbt28 := 1496;
      imgbt28.left := movbt28;
    end
    else if (movbt28 > 0) then
    begin
      movbt28 := movbt28 - 49;
      imgbt28.Left := movbt28;
    end
end;

procedure Tfrmfd6.tmbt628Timer(Sender: TObject);
begin
  if (movbt29 < 0) then
    begin
      movbt29 := 1496;
      imgbt29.left := movbt29;
    end
    else if (movbt29 > 0) then
    begin
      movbt29 := movbt29 - 52;
      imgbt29.Left := movbt29;
    end
end;

procedure Tfrmfd6.tmbt629Timer(Sender: TObject);
begin
  if (movbt30 < 0) then
    begin
      movbt30 := 1496;
      imgbt30.left := movbt30;
    end
    else if (movbt30 > 0) then
    begin
      movbt30 := movbt30 - 55;
      imgbt30.Left := movbt30;
    end
end;

procedure Tfrmfd6.tmareaTimer(Sender: TObject);
begin
         //Colisão das AIs
//------------------------------------------------------------------------------
  //Booth 1
  if (imgp1.top >= imgbt1.top - 70) and (imgp1.top <= imgbt1.top + 70) and (imgp1.left >= imgbt1.left - 70) and (imgp1.left <= imgbt1.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();

  end
//------------------------------------------------------------------------------
  //Booth 2
  else if (imgp1.top >= imgbt2.top - 70) and (imgp1.top <= imgbt2.top + 70) and (imgp1.left >= imgbt2.left - 70) and (imgp1.left <= imgbt2.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
  //Booth 3
  else if (imgp1.top >= imgbt3.top - 70) and (imgp1.top <= imgbt3.top + 70) and (imgp1.left >= imgbt3.left - 70) and (imgp1.left <= imgbt3.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
  //Booth 4
  else if (imgp1.top >= imgbt4.top - 70) and (imgp1.top <= imgbt4.top + 70) and (imgp1.left >= imgbt4.left - 70) and (imgp1.left <= imgbt4.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 5
  else if  (imgp1.top >= imgbt5.top - 70) and (imgp1.top <= imgbt5.top + 70) and (imgp1.left >= imgbt5.left - 70) and (imgp1.left <= imgbt5.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
   frmfd6.Close();
  end
//------------------------------------------------------------------------------
  //Booth 6
  else if (imgp1.top >= imgbt6.top - 70) and (imgp1.top <= imgbt6.top + 70) and (imgp1.left >= imgbt6.left - 70) and (imgp1.left <= imgbt6.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 7
  else if (imgp1.top >= imgbt7.top - 70) and (imgp1.top <= imgbt7.top + 70) and (imgp1.left >= imgbt7.left - 70) and (imgp1.left <= imgbt7.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 8
  else if (imgp1.top >= imgbt8.top - 70) and (imgp1.top <= imgbt8.top + 70) and (imgp1.left >= imgbt8.left - 70) and (imgp1.left <= imgbt8.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 9
  else if (imgp1.top >= imgbt9.top - 70) and (imgp1.top <= imgbt9.top + 70) and (imgp1.left >= imgbt9.left - 70) and (imgp1.left <= imgbt9.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 10
  else if (imgp1.top >= imgbt10.top - 70) and (imgp1.top <= imgbt10.top + 70) and (imgp1.left >= imgbt10.left - 70) and (imgp1.left <= imgbt10.left + 70) then
  begin
   frmgameover.Show();
   frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 11
  else if (imgp1.top >= imgbt11.top - 70) and (imgp1.top <= imgbt11.top + 70) and (imgp1.left >= imgbt11.left - 70) and (imgp1.left <= imgbt11.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 12
  else if (imgp1.top >= imgbt12.top - 70) and (imgp1.top <= imgbt12.top + 70) and (imgp1.left >= imgbt12.left - 70) and (imgp1.left <= imgbt12.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
  //Booth 13
  else if (imgp1.top >= imgbt13.top - 70) and (imgp1.top <= imgbt13.top + 70) and (imgp1.left >= imgbt13.left - 70) and (imgp1.left <= imgbt13.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();

  end
//------------------------------------------------------------------------------
  //Booth 14
  else if (imgp1.top >= imgbt14.top - 70) and (imgp1.top <= imgbt14.top + 70) and (imgp1.left >= imgbt14.left - 70) and (imgp1.left <= imgbt14.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
  //Booth 15
  else if (imgp1.top >= imgbt15.top - 70) and (imgp1.top <= imgbt15.top + 70) and (imgp1.left >= imgbt15.left - 70) and (imgp1.left <= imgbt15.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
  //Booth 16
  else if (imgp1.top >= imgbt16.top - 70) and (imgp1.top <= imgbt16.top + 70) and (imgp1.left >= imgbt16.left - 70) and (imgp1.left <= imgbt16.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 17
  else if  (imgp1.top >= imgbt17.top - 70) and (imgp1.top <= imgbt17.top + 70) and (imgp1.left >= imgbt17.left - 70) and (imgp1.left <= imgbt17.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
  //Booth 18
  else if (imgp1.top >= imgbt18.top - 70) and (imgp1.top <= imgbt18.top + 70) and (imgp1.left >= imgbt18.left - 70) and (imgp1.left <= imgbt18.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 19
  else if (imgp1.top >= imgbt19.top - 70) and (imgp1.top <= imgbt19.top + 70) and (imgp1.left >= imgbt19.left - 70) and (imgp1.left <= imgbt19.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 20
  else if (imgp1.top >= imgbt20.top - 70) and (imgp1.top <= imgbt20.top + 70) and (imgp1.left >= imgbt20.left - 70) and (imgp1.left <= imgbt20.left + 70) then
  begin
   frmgameover.Show();
   frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 21
  else if (imgp1.top >= imgbt21.top - 70) and (imgp1.top <= imgbt21.top + 70) and (imgp1.left >= imgbt21.left - 70) and (imgp1.left <= imgbt21.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 22
  else if (imgp1.top >= imgbt22.top - 70) and (imgp1.top <= imgbt22.top + 70) and (imgp1.left >= imgbt22.left - 70) and (imgp1.left <= imgbt22.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 23
  else if (imgp1.top >= imgbt23.top - 70) and (imgp1.top <= imgbt23.top + 70) and (imgp1.left >= imgbt23.left - 70) and (imgp1.left <= imgbt23.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 24
  else if (imgp1.top >= imgbt24.top - 70) and (imgp1.top <= imgbt24.top + 70) and (imgp1.left >= imgbt24.left - 70) and (imgp1.left <= imgbt24.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 25
  else if (imgp1.top >= imgbt25.top - 70) and (imgp1.top <= imgbt25.top + 70) and (imgp1.left >= imgbt25.left - 70) and (imgp1.left <= imgbt25.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 26
  else if (imgp1.top >= imgbt26.top - 70) and (imgp1.top <= imgbt26.top + 70) and (imgp1.left >= imgbt26.left - 70) and (imgp1.left <= imgbt26.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 27
  else if (imgp1.top >= imgbt27.top - 70) and (imgp1.top <= imgbt27.top + 70) and (imgp1.left >= imgbt27.left - 70) and (imgp1.left <= imgbt27.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 28
  else if (imgp1.top >= imgbt28.top - 70) and (imgp1.top <= imgbt28.top + 70) and (imgp1.left >= imgbt28.left - 70) and (imgp1.left <= imgbt28.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Booth 29
  else if (imgp1.top >= imgbt29.top - 70) and (imgp1.top <= imgbt29.top + 70) and (imgp1.left >= imgbt29.left - 70) and (imgp1.left <= imgbt29.left + 70) then
  begin
    frmgameover.Show();
    frmt6.mpt6.Close();
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmfd6.Close();
  end
//------------------------------------------------------------------------------
//Area onde fica o portal
//------------------------------------------------------------------------------
  else if (imgbt1.Top > 400 ) and (imgbt1.top < 456) and (imgbt1.Left >= 840 ) and (imgbt1.left < 920) then
  begin
    tmarea.enabled := false;
    tmbt61.Enabled := false;
    tmbt62.Enabled := false;
    tmbt63.Enabled := false;
    tmbt64.Enabled := false;
    tmbt65.Enabled := false;
    tmbt66.Enabled := false;
    tmbt67.Enabled := false;
    tmbt68.Enabled := false;
    tmbt69.Enabled := false;
    tmbt610.Enabled := false;
    tmbt611.Enabled := false;
    tmbt612.Enabled := false;
    tmbt613.Enabled := false;
    tmbt614.Enabled := false;
    tmbt615.Enabled := false;
    tmbt616.Enabled := false;
    tmbt617.Enabled := false;
    tmbt618.Enabled := false;
    tmbt619.Enabled := false;
    tmbt620.Enabled := false;
    tmbt621.Enabled := false;
    tmbt622.Enabled := false;
    tmbt623.Enabled := false;
    tmbt624.Enabled := false;
    tmbt625.Enabled := false;
    tmbt626.Enabled := false;
    tmbt627.Enabled := false;
    tmbt628.Enabled := false;
    tmbt629.Enabled := false;
    frmt6.mpt6.Close();
    Application.CreateForm(Tfrmcred, frmcred);
    frmcred.Show();
    frmfd6.Close();
  end
end;

end.
