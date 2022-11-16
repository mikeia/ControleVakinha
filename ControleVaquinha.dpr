program ControleVaquinha;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untDm in 'untDm.pas' {dm: TDataModule},
  untLancamento in 'untLancamento.pas' {frmLancamento},
  untLogin in 'untLogin.pas' {frmLogin},
  untCriarUsuario in 'untCriarUsuario.pas' {frmCriarUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCriarUsuario, frmCriarUsuario);
  Application.Run;
end.
