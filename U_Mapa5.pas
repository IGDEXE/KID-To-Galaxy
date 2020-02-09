unit U_Mapa5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  Tfrmfd5 = class(TForm)
    imgfd5: TImage;
    imgp1: TImage;
    imgbt1: TImage;
    imgbt2: TImage;
    imgbt3: TImage;
    imgbt4: TImage;
    imgbt5: TImage;
    imgbt6: TImage;
    imgbt7: TImage;
    imgbt8: TImage;
    tmbt51: TTimer;
    tmbt52: TTimer;
    tmbt53: TTimer;
    tmbt54: TTimer;
    tmbt55: TTimer;
    tmbt56: TTimer;
    tmbt57: TTimer;
    tmbt58: TTimer;
    tmarea: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tmbt52Timer(Sender: TObject);
    procedure tmbt53Timer(Sender: TObject);
    procedure tmbt54Timer(Sender: TObject);
    procedure tmbt55Timer(Sender: TObject);
    procedure tmbt56Timer(Sender: TObject);
    procedure tmbt57Timer(Sender: TObject);
    procedure tmbt58Timer(Sender: TObject);
    procedure tmbt51Timer(Sender: TObject);
    procedure tmareaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfd5: Tfrmfd5;
  movbt1, movbt2, movbt3, movbt4 ,movbt5 ,movbt6, movbt7 ,movbt8: integer;


implementation

uses U_Gameover, U_T6, U_T5;

{$R *.dfm}

procedure Tfrmfd5.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrmfd5.FormShow(Sender: TObject);
begin
  DoubleBuffered := true;
  tmarea.enabled := true;
    tmbt51.Enabled := true;
    tmbt52.Enabled := true;
    tmbt53.Enabled := true;
    tmbt54.Enabled := true;
    tmbt55.Enabled := true;
    tmbt56.Enabled := true;
    tmbt57.Enabled := true;
    tmbt58.Enabled := true;
end;

procedure Tfrmfd5.tmbt52Timer(Sender: TObject);
begin
  if (movbt2 >= 840) then
    begin
      movbt2 := 0;
      imgbt2.Top := movbt2;
    end
    else if (movbt1 < 840) then
    begin
      movbt2 := movbt2 + 42;
      imgbt2.Top := movbt2;
    end
end;

procedure Tfrmfd5.tmbt53Timer(Sender: TObject);
begin
  if (movbt3 >= 840) then
    begin
      movbt3 := 0;
      imgbt3.Top := movbt3;
    end
    else if (movbt3 < 840) then
    begin
      movbt3 := movbt3 + 44;
      imgbt3.Top := movbt3;
    end
end;

procedure Tfrmfd5.tmbt54Timer(Sender: TObject);
begin
  if (movbt4 >= 840) then
    begin
      movbt4 := 0;
      imgbt4.Top := movbt4;
    end
    else if (movbt4 < 840) then
    begin
      movbt4 := movbt4 + 48;
      imgbt4.Top := movbt4;
    end
end;

procedure Tfrmfd5.tmbt55Timer(Sender: TObject);
begin
  if (movbt5 >= 840) then
    begin
      movbt5 := 0;
      imgbt5.Top := movbt5;
    end
    else if (movbt5 < 840) then
    begin
      movbt5 := movbt5 + 52;
      imgbt5.Top := movbt5;
    end
end;

procedure Tfrmfd5.tmbt56Timer(Sender: TObject);
begin
  if (movbt6 >= 840) then
    begin
      movbt6 := 0;
      imgbt6.Top := movbt6;
    end
    else if (movbt6 < 840) then
    begin
      movbt6 := movbt6 + 56;
      imgbt6.Top := movbt6;
    end
end;

procedure Tfrmfd5.tmbt57Timer(Sender: TObject);
begin
  if (movbt7 >= 840) then
    begin
      movbt7 := 0;
      imgbt7.Top := movbt7;
    end
    else if (movbt7 < 840) then
    begin
      movbt7 := movbt7 + 60;
      imgbt7.Top := movbt7;
    end
end;

procedure Tfrmfd5.tmbt58Timer(Sender: TObject);
begin
  if (movbt8 >= 840) then
    begin
      movbt8 := 0;
      imgbt8.Top := movbt8;
    end
    else if (movbt8 < 840) then
    begin
      movbt8 := movbt8 + 64;
      imgbt8.Top := movbt8;
    end
end;

procedure Tfrmfd5.tmbt51Timer(Sender: TObject);
begin
  if (movbt1 >= 1500) then
    begin
      movbt1 := 0;
      imgbt1.left := movbt1;
    end
    else if (movbt1 < 1500) then
    begin
      movbt1 := movbt1 + 15;
      imgbt1.Left := movbt1;
    end
end;

procedure Tfrmfd5.tmareaTimer(Sender: TObject);
begin
       //Colisão das AIs
//------------------------------------------------------------------------------
  //Booth 1
  if (imgp1.top >= imgbt1.top - 70) and (imgp1.top <= imgbt1.top + 70) and (imgp1.left >= imgbt1.left - 70) and (imgp1.left <= imgbt1.left + 70) then
  begin
    frmgameover.Show();
    frmt5.mpt5.Close();
    tmarea.enabled := false;
    tmbt51.Enabled := false;
    tmbt52.Enabled := false;
    tmbt53.Enabled := false;
    tmbt54.Enabled := false;
    tmbt55.Enabled := false;
    tmbt56.Enabled := false;
    tmbt57.Enabled := false;
    tmbt58.Enabled := false;
    frmfd5.Close();

  end
//------------------------------------------------------------------------------
  //Booth 2
  else if (imgp1.top >= imgbt2.top - 70) and (imgp1.top <= imgbt2.top + 70) and (imgp1.left >= imgbt2.left - 70) and (imgp1.left <= imgbt2.left + 70) then
  begin
    frmgameover.Show();
    frmt5.mpt5.Close();
    tmarea.enabled := false;
    tmbt51.Enabled := false;
    tmbt52.Enabled := false;
    tmbt53.Enabled := false;
    tmbt54.Enabled := false;
    tmbt55.Enabled := false;
    tmbt56.Enabled := false;
    tmbt57.Enabled := false;
    tmbt58.Enabled := false;
    frmfd5.Close();
  end
//------------------------------------------------------------------------------
  //Booth 3
  else if (imgp1.top >= imgbt3.top - 70) and (imgp1.top <= imgbt3.top + 70) and (imgp1.left >= imgbt3.left - 70) and (imgp1.left <= imgbt3.left + 70) then
  begin
    frmgameover.Show();
    frmt5.mpt5.Close();
    tmarea.enabled := false;
    tmbt51.Enabled := false;
    tmbt52.Enabled := false;
    tmbt53.Enabled := false;
    tmbt54.Enabled := false;
    tmbt55.Enabled := false;
    tmbt56.Enabled := false;
    tmbt57.Enabled := false;
    tmbt58.Enabled := false;
    frmfd5.Close();
  end
//------------------------------------------------------------------------------
  //Booth 4
  else if (imgp1.top >= imgbt4.top - 70) and (imgp1.top <= imgbt4.top + 70) and (imgp1.left >= imgbt4.left - 70) and (imgp1.left <= imgbt4.left + 70) then
  begin
    frmgameover.Show();
    frmt5.mpt5.Close();
    tmarea.enabled := false;
    tmbt51.Enabled := false;
    tmbt52.Enabled := false;
    tmbt53.Enabled := false;
    tmbt54.Enabled := false;
    tmbt55.Enabled := false;
    tmbt56.Enabled := false;
    tmbt57.Enabled := false;
    tmbt58.Enabled := false;
    frmfd5.Close();
  end
//------------------------------------------------------------------------------
//Booth 5
  else if  (imgp1.top >= imgbt5.top - 70) and (imgp1.top <= imgbt5.top + 70) and (imgp1.left >= imgbt5.left - 70) and (imgp1.left <= imgbt5.left + 70) then
  begin
    frmgameover.Show();
    frmt5.mpt5.Close();
    tmarea.enabled := false;
    tmbt51.Enabled := false;
    tmbt52.Enabled := false;
    tmbt53.Enabled := false;
    tmbt54.Enabled := false;
    tmbt55.Enabled := false;
    tmbt56.Enabled := false;
    tmbt57.Enabled := false;
    tmbt58.Enabled := false;
    frmfd5.Close();
  end
//------------------------------------------------------------------------------
  //Booth 6
  else if (imgp1.top >= imgbt6.top - 70) and (imgp1.top <= imgbt6.top + 70) and (imgp1.left >= imgbt6.left - 70) and (imgp1.left <= imgbt6.left + 70) then
  begin
    frmgameover.Show();
    frmt5.mpt5.Close();
    tmarea.enabled := false;
    tmbt51.Enabled := false;
    tmbt52.Enabled := false;
    tmbt53.Enabled := false;
    tmbt54.Enabled := false;
    tmbt55.Enabled := false;
    tmbt56.Enabled := false;
    tmbt57.Enabled := false;
    tmbt58.Enabled := false;
    frmfd5.Close();
  end
//------------------------------------------------------------------------------
//Booth 7
  else if (imgp1.top >= imgbt7.top - 70) and (imgp1.top <= imgbt7.top + 70) and (imgp1.left >= imgbt7.left - 70) and (imgp1.left <= imgbt7.left + 70) then
  begin
    frmgameover.Show();
    frmt5.mpt5.Close();
    tmarea.enabled := false;
    tmbt51.Enabled := false;
    tmbt52.Enabled := false;
    tmbt53.Enabled := false;
    tmbt54.Enabled := false;
    tmbt55.Enabled := false;
    tmbt56.Enabled := false;
    tmbt57.Enabled := false;
    tmbt58.Enabled := false;
    frmfd5.Close();
  end
//------------------------------------------------------------------------------
//Booth 8
  else if (imgp1.top >= imgbt8.top - 70) and (imgp1.top <= imgbt8.top + 70) and (imgp1.left >= imgbt8.left - 70) and (imgp1.left <= imgbt8.left + 70) then
  begin
    frmgameover.Show();
    frmt5.mpt5.Close();
    tmarea.enabled := false;
    tmbt51.Enabled := false;
    tmbt52.Enabled := false;
    tmbt53.Enabled := false;
    tmbt54.Enabled := false;
    tmbt55.Enabled := false;
    tmbt56.Enabled := false;
    tmbt57.Enabled := false;
    tmbt58.Enabled := false;
    frmfd5.Close();
  end
//------------------------------------------------------------------------------
//Area onde fica o portal
//------------------------------------------------------------------------------
  else if (imgbt1.Top > 424 ) and (imgbt1.top < 472) and (imgbt1.Left >= 928 ) and (imgbt1.left < 960) then
  begin
    tmarea.enabled := false;
    tmbt51.Enabled := false;
    tmbt52.Enabled := false;
    tmbt53.Enabled := false;
    tmbt54.Enabled := false;
    tmbt55.Enabled := false;
    tmbt56.Enabled := false;
    tmbt57.Enabled := false;
    tmbt58.Enabled := false;
    frmt5.mpt5.Close();
    Application.CreateForm(Tfrmt6, frmt6);
    frmt6.Show();
    frmfd5.Close();
  end
end;

end.
