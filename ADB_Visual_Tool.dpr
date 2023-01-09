program ADB_Visual_Tool;

uses
  Vcl.Forms,
  Forms.Main in 'Forms.Main.pas' {FormMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := FormMain.Caption;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Red Rock');
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
