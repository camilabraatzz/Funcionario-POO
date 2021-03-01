program prjFuncionario;

uses
  Vcl.Forms,
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {FrmPrincipal},
  uFuncionario in 'Classe\uFuncionario.pas',
  uEnumFuncionario in 'Classe\uEnumFuncionario.pas',
  uExceptions in 'Exception\uExceptions.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
