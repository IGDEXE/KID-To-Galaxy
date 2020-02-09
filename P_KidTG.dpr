program P_KidTG;

uses
  Forms,
  U_Mapa1 in 'U_Mapa1.pas' {frmfd1},
  U_Mapa2 in 'U_Mapa2.pas' {frmfd2},
  U_Mapa3 in 'U_Mapa3.pas' {frmfd3},
  U_Gameover in 'U_Gameover.pas' {frmgameover},
  U_Mapa4 in 'U_Mapa4.pas' {frmfd4},
  U_Mapa5 in 'U_Mapa5.pas' {frmfd5},
  U_Mapa6 in 'U_Mapa6.pas' {frmfd6},
  U_Menu in 'U_Menu.pas' {frmmenu},
  U_T1 in 'U_T1.pas' {frmt1},
  U_T2 in 'U_T2.pas' {frmt2},
  U_T3 in 'U_T3.pas' {frmt3},
  U_T4 in 'U_T4.pas' {frmt4},
  U_T5 in 'U_T5.pas' {frmt5},
  U_T6 in 'U_T6.pas' {frmt6},
  U_Ini in 'U_Ini.pas' {frmini},
  U_fim in 'U_fim.pas' {frmfim},
  U_Cred in 'U_Cred.pas' {frmcred};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmini, frmini);
  Application.Run;
end.
