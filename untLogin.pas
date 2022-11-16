unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmLogin = class(TForm)
    qryUsers: TFDQuery;
    qryUsersID_USER: TIntegerField;
    qryUsersNAME: TStringField;
    qryUsersPASSWORD: TStringField;
    pnPrincipal: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnEntrar: TPanel;
    btnEntrar: TSpeedButton;
    pnCriarConta: TPanel;
    btnCriarConta: TSpeedButton;
    Panel1: TPanel;
    procedure btnEntrarMouseEnter(Sender: TObject);
    procedure btnEntrarMouseLeave(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    function FVerificaUser(Name, Password : String): Boolean;
    procedure edtUsuarioExit(Sender: TObject);
    procedure edtSenhaExit(Sender: TObject);
    procedure btnCriarContaClick(Sender: TObject);
  private
    { Private declarations }
  public
    vCodUsuario : Integer;
    vUsuario : String;

  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses untPrincipal, untDm, untCriarUsuario;

procedure TfrmLogin.btnCriarContaClick(Sender: TObject);
begin
  try
    frmCriarUsuario := TfrmCriarUsuario.Create(nil);
    frmCriarUsuario.ShowModal;
  finally
    frmCriarUsuario.Release;
    FreeAndNil(frmCriarUsuario);
  end;
end;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin

  if FVerificaUser(Trim(edtUsuario.Text), Trim(edtSenha.Text)) then
  begin
      try
        frmPrincipal := TfrmPrincipal.Create(nil);
        frmPrincipal.ShowModal;
      finally
        frmPrincipal.Release;
        FreeAndNil(frmPrincipal);
      end;
  end
  else
  begin
    ShowMessage('Usuário ou Senha incorreto!');
    edtUsuario.SetFocus;
    exit
  end;
end;

procedure TfrmLogin.btnEntrarMouseEnter(Sender: TObject);
begin
  pnEntrar.Color := $00408000;
end;

procedure TfrmLogin.btnEntrarMouseLeave(Sender: TObject);
begin
   pnEntrar.Color := $0080FF00;
end;

procedure TfrmLogin.edtSenhaExit(Sender: TObject);
begin
  if edtSenha.Text = '' then
  begin
    ShowMessage('Campo senha é obrigatório!');
    edtSenha.SetFocus;
    exit;
  end;
end;

procedure TfrmLogin.edtUsuarioExit(Sender: TObject);
begin
  if edtUsuario.Text = '' then
  begin
    ShowMessage('Campo usuário é obrigatório!');
    edtUsuario.SetFocus;
    exit;
  end;
end;

function TfrmLogin.FVerificaUser(Name, Password: String): Boolean;
begin
  qryUsers.Close;
  qryUsers.Sql.Clear;
  qryUsers.SQL.Add('SELECT * FROM USERS WHERE UPPER(NAME) = :NAME');
  qryUsers.SQL.Add('AND PASSWORD = :PASSWORD');
  qryUsers.ParamByName('NAME').Value     := UpperCase(Name);
  qryUsers.ParamByName('PASSWORD').Value := Password;
  qryUsers.Open;


  result := qryUsers.RecordCount > 0;

  if result then
  begin
    vUsuario := Name;
    vCodUsuario := qryUsersID_USER.AsInteger;
  end;
end;

end.
