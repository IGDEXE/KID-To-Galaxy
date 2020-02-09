unit U_Mapa1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  Tfrmfd1 = class(TForm)
    imgfd1: TImage;
    imgp1: TImage;
    imgbt1: TImage;
    imgbt2: TImage;
    imgbt3: TImage;
    imgbt4: TImage;
    imgbt5: TImage;
    imgbt6: TImage;
    tmbt1: TTimer;
    tmbt2: TTimer;
    tmbt3: TTimer;
    tmbt4: TTimer;
    tmbt5: TTimer;
    tmbt6: TTimer;
    tmarea: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tmbt1Timer(Sender: TObject);
    procedure tmbt2Timer(Sender: TObject);
    procedure tmbt3Timer(Sender: TObject);
    procedure tmbt4Timer(Sender: TObject);
    procedure tmbt5Timer(Sender: TObject);
    procedure tmbt6Timer(Sender: TObject);
    procedure tmareaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfd1: Tfrmfd1;
  movbt1, movbt2, movbt3, movbt4 ,movbt5 ,movbt6 : integer;

implementation

uses U_Gameover, U_Mapa2, U_T2, U_T1;

{$R *.dfm}

procedure Tfrmfd1.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmfd1.FormShow(Sender: TObject);
begin
  DoubleBuffered := true;
  tmarea.enabled := true;
  tmbt1.Enabled := true;
  tmbt2.Enabled := true;
  tmbt3.Enabled := true;
  tmbt4.Enabled := true;
  tmbt5.Enabled := true;
  tmbt6.Enabled := true;
end;

procedure Tfrmfd1.tmbt1Timer(Sender: TObject);
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

procedure Tfrmfd1.tmbt2Timer(Sender: TObject);
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

procedure Tfrmfd1.tmbt3Timer(Sender: TObject);
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

procedure Tfrmfd1.tmbt4Timer(Sender: TObject);
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

procedure Tfrmfd1.tmbt5Timer(Sender: TObject);
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

procedure Tfrmfd1.tmbt6Timer(Sender: TObject);
begin
  if (movbt6 < 0) then
    begin
      movbt6 := 840;
      imgbt6.Top := movbt6;
    end
    else if (movbt5 < 840) then
    begin
      movbt6 := movbt6 - 38;
      imgbt6.Top := movbt6;
    end
end;

procedure Tfrmfd1.tmareaTimer(Sender: TObject);
begin
  //Colisão das AIs
//------------------------------------------------------------------------------
  //Booth 1
  if (imgp1.top >= imgbt1.top - 104) and (imgp1.top <= imgbt1.top + 104) and (imgp1.left >= imgbt1.left - 104) and (imgp1.left <= imgbt1.left + 104) then
  begin
    frmgameover.Show();
    tmarea.enabled := false;
    tmbt1.Enabled := false;
    tmbt2.Enabled := false;
    tmbt3.Enabled := false;
    tmbt4.Enabled := false;
    tmbt5.Enabled := false;
    tmbt6.Enabled := false;
    frmt1.mpt1.Close();
    frmfd1.Close();

  end
//------------------------------------------------------------------------------
  //Booth 2
  else if (imgp1.top >= imgbt2.top - 104) and (imgp1.top <= imgbt2.top + 104) and (imgp1.left >= imgbt2.left - 104) and (imgp1.left <= imgbt2.left + 104) then
  begin
    frmgameover.Show();
        tmarea.enabled := false;
    tmbt1.Enabled := false;
    tmbt2.Enabled := false;
    tmbt3.Enabled := false;
    tmbt4.Enabled := false;
    tmbt5.Enabled := false;
    tmbt6.Enabled := false;
    frmt1.mpt1.Close();
    frmfd1.Close();
  end
//------------------------------------------------------------------------------
  //Booth 3
  else if (imgp1.top >= imgbt3.top - 104) and (imgp1.top <= imgbt3.top + 104) and (imgp1.left >= imgbt3.left - 104) and (imgp1.left <= imgbt3.left + 104) then
  begin
    frmgameover.Show();
    tmarea.enabled := false;
    tmbt1.Enabled := false;
    tmbt2.Enabled := false;
    tmbt3.Enabled := false;
    tmbt4.Enabled := false;
    tmbt5.Enabled := false;
    tmbt6.Enabled := false;
    frmt1.mpt1.Close();
    frmfd1.Close();
  end
//------------------------------------------------------------------------------
  //Booth 4
  else if (imgp1.top >= imgbt4.top - 104) and (imgp1.top <= imgbt4.top + 104) and (imgp1.left >= imgbt4.left - 104) and (imgp1.left <= imgbt4.left + 104) then
  begin
    frmgameover.Show();
    tmarea.enabled := false;
    tmbt1.Enabled := false;
    tmbt2.Enabled := false;
    tmbt3.Enabled := false;
    tmbt4.Enabled := false;
    tmbt5.Enabled := false;
    tmbt6.Enabled := false;
    frmt1.mpt1.Close();
    frmfd1.Close();
  end
//------------------------------------------------------------------------------
//Booth 5
  else if (imgp1.top >= imgbt5.top - 104) and (imgp1.top <= imgbt5.top + 104) and (imgp1.left >= imgbt5.left - 104) and (imgp1.left <= imgbt5.left + 104) then
  begin
    frmgameover.Show();
    tmarea.enabled := false;
    tmbt1.Enabled := false;
    tmbt2.Enabled := false;
    tmbt3.Enabled := false;
    tmbt4.Enabled := false;
    tmbt5.Enabled := false;
    tmbt6.Enabled := false;
    frmt1.mpt1.Close();
    frmfd1.Close();
  end
//------------------------------------------------------------------------------
  //Booth 6
  else if (imgp1.top >= imgbt6.top - 104) and (imgp1.top <= imgbt6.top + 104) and (imgp1.left >= imgbt6.left - 104) and (imgp1.left <= imgbt6.left + 104) then
  begin
    frmgameover.Show();
     tmarea.enabled := false;
    tmbt1.Enabled := false;
    tmbt2.Enabled := false;
    tmbt3.Enabled := false;
    tmbt4.Enabled := false;
    tmbt5.Enabled := false;
    tmbt6.Enabled := false;
    frmt1.mpt1.Close();
    frmfd1.Close();
  end
//------------------------------------------------------------------------------
//Area onde fica o portal
//------------------------------------------------------------------------------
  else if (imgp1.Top > 56 ) and (imgp1.top < 280) and (imgp1.Left >= 1300 ) and (imgp1.left < 1328) then
  begin
    tmarea.enabled := false;
    tmbt1.Enabled := false;
    tmbt2.Enabled := false;
    tmbt3.Enabled := false;
    tmbt4.Enabled := false;
    tmbt5.Enabled := false;
    tmbt6.Enabled := false;
    frmt1.mpt1.Close();
    Application.CreateForm(Tfrmt2, frmt2);
    frmfd1.Close();
    frmt2.Show();
  end
end;

end.
