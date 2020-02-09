unit U_Mapa4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  Tfrmfd4 = class(TForm)
    imgfd4: TImage;
    imgp1: TImage;
    imgbt1: TImage;
    imgbt2: TImage;
    imgbt4: TImage;
    imgbt3: TImage;
    imgbt5: TImage;
    imgbt6: TImage;
    imgbt7: TImage;
    imgbt12: TImage;
    imgbt11: TImage;
    imgbt8: TImage;
    imgbt9: TImage;
    imgbt10: TImage;
    tmbt41: TTimer;
    tmbt42: TTimer;
    tmbt43: TTimer;
    tmbt44: TTimer;
    tmbt45: TTimer;
    tmbt46: TTimer;
    tmbt47: TTimer;
    tmbt48: TTimer;
    tmbt49: TTimer;
    tmbt410: TTimer;
    tmbt411: TTimer;
    tmbt412: TTimer;
    tmarea: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmbt41Timer(Sender: TObject);
    procedure tmbt42Timer(Sender: TObject);
    procedure tmbt43Timer(Sender: TObject);
    procedure tmbt44Timer(Sender: TObject);
    procedure tmbt45Timer(Sender: TObject);
    procedure tmbt46Timer(Sender: TObject);
    procedure tmbt47Timer(Sender: TObject);
    procedure tmbt48Timer(Sender: TObject);
    procedure tmbt49Timer(Sender: TObject);
    procedure tmbt410Timer(Sender: TObject);
    procedure tmbt411Timer(Sender: TObject);
    procedure tmbt412Timer(Sender: TObject);
    procedure tmareaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfd4: Tfrmfd4;
  movbt1, movbt2, movbt3, movbt4 ,movbt5 ,movbt6, movbt7 ,movbt8, movbt9 , movbt10, movbt11, movbt12 : integer;

implementation

uses U_Gameover, U_Mapa5, U_T5, U_T4;

{$R *.dfm}

procedure Tfrmfd4.FormShow(Sender: TObject);
begin
  DoubleBuffered := true;
  movbt8 := 1192;
  movbt9 := 1376;
  movbt10 := 1496;
  movbt11 := 1376;
  movbt12 := 1496;
  tmarea.enabled := true;
    tmbt41.Enabled := true;
    tmbt42.Enabled := true;
    tmbt43.Enabled := true;
    tmbt44.Enabled := true;
    tmbt45.Enabled := true;
    tmbt46.Enabled := true;
    tmbt47.Enabled := true;
    tmbt48.Enabled := true;
    tmbt49.Enabled := true;
    tmbt410.Enabled := true;
    tmbt411.Enabled := true;
    tmbt412.Enabled := true;
end;

procedure Tfrmfd4.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmfd4.tmbt41Timer(Sender: TObject);
begin
  if (movbt1 >= 1500) then
    begin
      movbt1 := 96;
      imgbt1.left := movbt1;
    end
    else if (movbt1 < 1500) then
    begin
      movbt1 := movbt1 + 20;
      imgbt1.Left := movbt1;
    end
end;

procedure Tfrmfd4.tmbt42Timer(Sender: TObject);
begin
   if (movbt2 >= 1500) then
    begin
      movbt2 := 0;
      imgbt2.left := movbt1;
    end
    else if (movbt1 < 1500) then
    begin
      movbt2 := movbt2 + 20;
      imgbt2.Left := movbt2;
    end
end;

procedure Tfrmfd4.tmbt43Timer(Sender: TObject);
begin
  if (movbt1 >= 1500) then
    begin
      movbt3 := 240;
      imgbt3.left := movbt3;
    end
    else if (movbt3 < 1500) then
    begin
      movbt3 := movbt3 + 20;
      imgbt3.Left := movbt3;
    end
end;

procedure Tfrmfd4.tmbt44Timer(Sender: TObject);
begin
  if (movbt4 >= 1500) then
    begin
      movbt4 := 240;
      imgbt4.left := movbt4;
    end
    else if (movbt4 < 1500) then
    begin
      movbt4 := movbt4 + 20;
      imgbt4.Left := movbt4;
    end
end;

procedure Tfrmfd4.tmbt45Timer(Sender: TObject);
begin
  if (movbt5 >= 1500) then
    begin
      movbt5 := 96;
      imgbt5.left := movbt5;
    end
    else if (movbt5 < 1500) then
    begin
      movbt5 := movbt5 + 20;
      imgbt5.Left := movbt5;
    end
end;

procedure Tfrmfd4.tmbt46Timer(Sender: TObject);
begin
  if (movbt6 >= 1500) then
    begin
      movbt6 := 0;
      imgbt6.left := movbt6;
    end
    else if (movbt6 < 1500) then
    begin
      movbt6 := movbt6 + 20;
      imgbt6.Left := movbt6;
    end
end;

procedure Tfrmfd4.tmbt47Timer(Sender: TObject);
begin
  if (movbt7 >= 1500) then
    begin
      movbt7 := 0;
      imgbt7.left := movbt7;
    end
    else if (movbt7 < 1500) then
    begin
      movbt7 := movbt7 + 35;
      imgbt7.Left := movbt7;
    end
end;

procedure Tfrmfd4.tmbt48Timer(Sender: TObject);
begin
  if (movbt8 < 0) then
    begin
      movbt8 := 1500;
      imgbt8.left := movbt8;
    end
    else if (movbt8 > 0) then
    begin
      movbt8 := movbt8 - 42;
      imgbt8.Left := movbt8;
    end
end;

procedure Tfrmfd4.tmbt49Timer(Sender: TObject);
begin
  if (movbt9 < 0) then
    begin
      movbt9 := 1500;
      imgbt9.left := movbt9;
    end
    else if (movbt9 > 0) then
    begin
      movbt9 := movbt9 - 22;
      imgbt9.Left := movbt9;
    end
end;

procedure Tfrmfd4.tmbt410Timer(Sender: TObject);
begin
  if (movbt10 < 0) then
    begin
      movbt10 := 1496;
      imgbt10.left := movbt10;
    end
    else if (movbt10 > 0) then
    begin
      movbt10 := movbt10 - 22;
      imgbt10.Left := movbt10;
    end
end;

procedure Tfrmfd4.tmbt411Timer(Sender: TObject);
begin
  if (movbt11 < 0) then
    begin
      movbt11 := 1500;
      imgbt11.left := movbt11;
    end
    else if (movbt11 > 0) then
    begin
      movbt11 := movbt11 - 22;
      imgbt11.Left := movbt11;
    end
end;

procedure Tfrmfd4.tmbt412Timer(Sender: TObject);
begin
  if (movbt12 < 0) then
    begin
      movbt12 := 1496;
      imgbt12.left := movbt12;
    end
    else if (movbt12 > 0) then
    begin
      movbt12 := movbt12 - 22;
      imgbt12.Left := movbt12;
    end
end;

procedure Tfrmfd4.tmareaTimer(Sender: TObject);
begin
       //Colisão das AIs
//------------------------------------------------------------------------------
  //Booth 1
  if (imgp1.top >= imgbt1.top - 70) and (imgp1.top <= imgbt1.top + 70) and (imgp1.left >= imgbt1.left - 70) and (imgp1.left <= imgbt1.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();

  end
//------------------------------------------------------------------------------
  //Booth 2
  else if (imgp1.top >= imgbt2.top - 70) and (imgp1.top <= imgbt2.top + 70) and (imgp1.left >= imgbt2.left - 70) and (imgp1.left <= imgbt2.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
  //Booth 3
  else if (imgp1.top >= imgbt3.top - 70) and (imgp1.top <= imgbt3.top + 70) and (imgp1.left >= imgbt3.left - 70) and (imgp1.left <= imgbt3.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
  //Booth 4
  else if (imgp1.top >= imgbt4.top - 70) and (imgp1.top <= imgbt4.top + 70) and (imgp1.left >= imgbt4.left - 70) and (imgp1.left <= imgbt4.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
//Booth 5
  else if  (imgp1.top >= imgbt5.top - 70) and (imgp1.top <= imgbt5.top + 70) and (imgp1.left >= imgbt5.left - 70) and (imgp1.left <= imgbt5.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
  //Booth 6
  else if (imgp1.top >= imgbt6.top - 70) and (imgp1.top <= imgbt6.top + 70) and (imgp1.left >= imgbt6.left - 70) and (imgp1.left <= imgbt6.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
//Booth 7
  else if (imgp1.top >= imgbt7.top - 70) and (imgp1.top <= imgbt7.top + 70) and (imgp1.left >= imgbt7.left - 70) and (imgp1.left <= imgbt7.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
//Booth 8
  else if (imgp1.top >= imgbt8.top - 70) and (imgp1.top <= imgbt8.top + 70) and (imgp1.left >= imgbt8.left - 70) and (imgp1.left <= imgbt8.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
//Booth 9
  else if (imgp1.top >= imgbt9.top - 70) and (imgp1.top <= imgbt9.top + 70) and (imgp1.left >= imgbt9.left - 70) and (imgp1.left <= imgbt9.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
//Booth 10
  else if (imgp1.top >= imgbt10.top - 70) and (imgp1.top <= imgbt10.top + 70) and (imgp1.left >= imgbt10.left - 70) and (imgp1.left <= imgbt10.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
//Booth 11
  else if (imgp1.top >= imgbt11.top - 70) and (imgp1.top <= imgbt11.top + 70) and (imgp1.left >= imgbt11.left - 70) and (imgp1.left <= imgbt11.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
//Booth 12
  else if (imgp1.top >= imgbt12.top - 70) and (imgp1.top <= imgbt12.top + 70) and (imgp1.left >= imgbt12.left - 70) and (imgp1.left <= imgbt12.left + 70) then
  begin
    frmgameover.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
//------------------------------------------------------------------------------
//Area onde fica o portal
//------------------------------------------------------------------------------
  else if (imgp1.Top > 100 ) and (imgp1.top < 200) and (imgp1.Left >= 1420 ) and (imgp1.left < 1500) then
  begin
    Application.CreateForm(Tfrmt5, frmt5);
    frmt5.Show();
    frmt4.mpt4.Close();
    tmarea.enabled := false;
    tmbt41.Enabled := false;
    tmbt42.Enabled := false;
    tmbt43.Enabled := false;
    tmbt44.Enabled := false;
    tmbt45.Enabled := false;
    tmbt46.Enabled := false;
    tmbt47.Enabled := false;
    tmbt48.Enabled := false;
    tmbt49.Enabled := false;
    tmbt410.Enabled := false;
    tmbt411.Enabled := false;
    tmbt412.Enabled := false;
    frmfd4.Close();
  end
end;

end.
