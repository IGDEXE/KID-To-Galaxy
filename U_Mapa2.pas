unit U_Mapa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  Tfrmfd2 = class(TForm)
    imgfd2: TImage;
    imgp1: TImage;
    imgbt1: TImage;
    imgbt2: TImage;
    imgbt3: TImage;
    imgbt4: TImage;
    imgbt5: TImage;
    imgbt6: TImage;
    imgbt7: TImage;
    imgbt8: TImage;
    tmbt21: TTimer;
    tmbt22: TTimer;
    tmbt23: TTimer;
    tmbt24: TTimer;
    tmbt25: TTimer;
    tmbt26: TTimer;
    tmbt27: TTimer;
    tmbt28: TTimer;
    tmarea: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tmbt21Timer(Sender: TObject);
    procedure tmbt23Timer(Sender: TObject);
    procedure tmbt25Timer(Sender: TObject);
    procedure tmbt27Timer(Sender: TObject);
    procedure tmbt22Timer(Sender: TObject);
    procedure tmbt24Timer(Sender: TObject);
    procedure tmbt26Timer(Sender: TObject);
    procedure tmbt28Timer(Sender: TObject);
    procedure tmareaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfd2: Tfrmfd2;
  movbt1, movbt2, movbt3, movbt4 ,movbt5 ,movbt6, movbt7 ,movbt8 : integer;

implementation

uses U_Gameover, U_Mapa1, U_Mapa3, U_T3, U_T2;

{$R *.dfm}

procedure Tfrmfd2.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmfd2.FormShow(Sender: TObject);
begin
  DoubleBuffered := true;
  tmarea.enabled := true;
    tmbt21.Enabled := true;
    tmbt22.Enabled := true;
    tmbt23.Enabled := true;
    tmbt24.Enabled := true;
    tmbt25.Enabled := true;
    tmbt26.Enabled := true;
    tmbt27.Enabled := true;
    tmbt28.Enabled := true;
end;

procedure Tfrmfd2.tmbt21Timer(Sender: TObject);
begin
  if (movbt1 >= 1500) then
    begin
      movbt1 := 0;
      imgbt1.left := movbt1;
    end
    else if (movbt1 < 1500) then
    begin
      movbt1 := movbt1 + 20;
      imgbt1.Left := movbt1;
    end
end;

procedure Tfrmfd2.tmbt23Timer(Sender: TObject);
begin
  if (movbt3 >= 1500) then
    begin
      movbt3 := 0;
      imgbt3.left := movbt3;
    end
    else if (movbt3 < 1500) then
    begin
      movbt3 := movbt3 + 23;
      imgbt3.Left := movbt3;
    end
end;

procedure Tfrmfd2.tmbt25Timer(Sender: TObject);
begin
  if (movbt5 >= 1500) then
    begin
      movbt5 := 0;
      imgbt5.left := movbt5;
    end
    else if (movbt5 < 1500) then
    begin
      movbt5 := movbt5 + 26;
      imgbt5.Left := movbt5;
    end
end;

procedure Tfrmfd2.tmbt27Timer(Sender: TObject);
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

procedure Tfrmfd2.tmbt22Timer(Sender: TObject);
begin
  if (movbt2 < 0) then
    begin
      movbt2 := 1499;
      imgbt2.left := movbt2;
    end
    else if (movbt1 < 1500) then
    begin
      movbt2 := movbt2 - 20;
      imgbt2.left := movbt2;
    end
end;

procedure Tfrmfd2.tmbt24Timer(Sender: TObject);
begin
  if (movbt4 < 0) then
    begin
      movbt4 := 1499;
      imgbt4.left := movbt4;
    end
    else if (movbt3 < 1500) then
    begin
      movbt4 := movbt4 - 24;
      imgbt4.left := movbt4;
    end
end;

procedure Tfrmfd2.tmbt26Timer(Sender: TObject);
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

procedure Tfrmfd2.tmbt28Timer(Sender: TObject);
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

procedure Tfrmfd2.tmareaTimer(Sender: TObject);
begin
    //Colisão das AIs
//------------------------------------------------------------------------------
  //Booth 1
  if (imgp1.left >= imgbt1.left - 10) and (imgp1.left <= imgbt1.left + 10) then
  begin
    frmgameover.Show();
    frmt2.mpt2.Close();
    tmarea.enabled := false;
    tmbt21.Enabled := false;
    tmbt22.Enabled := false;
    tmbt23.Enabled := false;
    tmbt24.Enabled := false;
    tmbt25.Enabled := false;
    tmbt26.Enabled := false;
    tmbt27.Enabled := false;
    tmbt28.Enabled := false;
    frmfd2.Close();

  end
//------------------------------------------------------------------------------
  //Booth 2
  else if (imgp1.left >= imgbt2.left - 10) and (imgp1.left <= imgbt2.left + 10) then
  begin
    frmgameover.Show();
    frmt2.mpt2.Close();
    tmarea.enabled := false;
    tmbt21.Enabled := false;
    tmbt22.Enabled := false;
    tmbt23.Enabled := false;
    tmbt24.Enabled := false;
    tmbt25.Enabled := false;
    tmbt26.Enabled := false;
    tmbt27.Enabled := false;
    tmbt28.Enabled := false;
    frmfd2.Close();
  end
//------------------------------------------------------------------------------
  //Booth 3
  else if (imgp1.left >= imgbt3.left - 10) and (imgp1.left <= imgbt3.left + 10) then
  begin
    frmgameover.Show();
    frmt2.mpt2.Close();
    tmarea.enabled := false;
    tmbt21.Enabled := false;
    tmbt22.Enabled := false;
    tmbt23.Enabled := false;
    tmbt24.Enabled := false;
    tmbt25.Enabled := false;
    tmbt26.Enabled := false;
    tmbt27.Enabled := false;
    tmbt28.Enabled := false;
    frmfd2.Close();
  end
//------------------------------------------------------------------------------
  //Booth 4
  else if (imgp1.left >= imgbt4.left - 10) and (imgp1.left <= imgbt4.left + 10) then
  begin
    frmgameover.Show();
    frmt2.mpt2.Close();
    tmarea.enabled := false;
    tmbt21.Enabled := false;
    tmbt22.Enabled := false;
    tmbt23.Enabled := false;
    tmbt24.Enabled := false;
    tmbt25.Enabled := false;
    tmbt26.Enabled := false;
    tmbt27.Enabled := false;
    tmbt28.Enabled := false;
    frmfd2.Close();
  end
//------------------------------------------------------------------------------
//Booth 5
  else if  (imgp1.left >= imgbt5.left - 10) and (imgp1.left <= imgbt5.left + 10) then
  begin
    frmgameover.Show();
    frmt2.mpt2.Close();
    tmarea.enabled := false;
    tmbt21.Enabled := false;
    tmbt22.Enabled := false;
    tmbt23.Enabled := false;
    tmbt24.Enabled := false;
    tmbt25.Enabled := false;
    tmbt26.Enabled := false;
    tmbt27.Enabled := false;
    tmbt28.Enabled := false;
    frmfd2.Close();
  end
//------------------------------------------------------------------------------
  //Booth 6
  else if (imgp1.left >= imgbt6.left - 10) and (imgp1.left <= imgbt6.left + 10) then
  begin
    frmgameover.Show();
    frmt2.mpt2.Close();
    tmarea.enabled := false;
    tmbt21.Enabled := false;
    tmbt22.Enabled := false;
    tmbt23.Enabled := false;
    tmbt24.Enabled := false;
    tmbt25.Enabled := false;
    tmbt26.Enabled := false;
    tmbt27.Enabled := false;
    tmbt28.Enabled := false;
    frmfd2.Close();
  end
//------------------------------------------------------------------------------
//Booth 7
  else if (imgp1.left >= imgbt7.left - 10) and (imgp1.left <= imgbt7.left + 10) then
  begin
    frmgameover.Show();
    frmt2.mpt2.Close();
    tmarea.enabled := false;
    tmbt21.Enabled := false;
    tmbt22.Enabled := false;
    tmbt23.Enabled := false;
    tmbt24.Enabled := false;
    tmbt25.Enabled := false;
    tmbt26.Enabled := false;
    tmbt27.Enabled := false;
    tmbt28.Enabled := false;
    frmfd2.Close();
  end
//------------------------------------------------------------------------------
//Booth 8
  else if (imgp1.left >= imgbt8.left - 10) and (imgp1.left <= imgbt8.left + 10) then
  begin
    frmgameover.Show();
    frmt2.mpt2.Close();
    tmarea.enabled := false;
    tmbt21.Enabled := false;
    tmbt22.Enabled := false;
    tmbt23.Enabled := false;
    tmbt24.Enabled := false;
    tmbt25.Enabled := false;
    tmbt26.Enabled := false;
    tmbt27.Enabled := false;
    tmbt28.Enabled := false;
    frmfd2.Close();
  end
//------------------------------------------------------------------------------

//Area onde fica o portal
//------------------------------------------------------------------------------
  else if (imgp1.Top > 312 ) and (imgp1.top < 560) and (imgp1.Left >= 1400 ) and (imgp1.left < 1500) then
  begin
    tmarea.enabled := false;
    tmbt21.Enabled := false;
    tmbt22.Enabled := false;
    tmbt23.Enabled := false;
    tmbt24.Enabled := false;
    tmbt25.Enabled := false;
    tmbt26.Enabled := false;
    tmbt27.Enabled := false;
    tmbt28.Enabled := false;
    frmt2.mpt2.Close();
    Application.CreateForm(Tfrmt3, frmt3);
    frmfd2.Close();
    frmt3.Show();
  end
end;

end.
