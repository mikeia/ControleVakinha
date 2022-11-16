unit untCriarUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  TfrmCriarUsuario = class(TForm)
    pnPrincipal: TPanel;
    qryInsereUsuario: TFDQuery;
    qryInsereUsuarioID_USER: TIntegerField;
    qryInsereUsuarioNAME: TStringField;
    qryInsereUsuarioPASSWORD: TStringField;
    qryUltimo: TFDQuery;
    qryUltimoULTIMO: TIntegerField;
    DataSource1: TDataSource;
    pnFundo: TPanel;
    edtNome: TEdit;
    edtSenha: TEdit;
    edtConfirmSenha: TEdit;
    pnCriarConta: TPanel;
    btnCriarConta: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Image1: TImage;
    procedure btnCriarContaMouseLeave(Sender: TObject);
    procedure btnCriarContaMouseEnter(Sender: TObject);
    function FValidaCampo(Name, Password ,ConfirmPassword: String): Boolean;
    procedure btnCriarContaClick(Sender: TObject);
    procedure edtConfirmSenhaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCriarUsuario: TfrmCriarUsuario;

implementation

{$R *.dfm}

uses untLogin, untDm;

procedure TfrmCriarUsuario.btnCriarContaClick(Sender: TObject);
begin
if (FValidaCampo(edtNome.Text, edtSenha.Text, edtConfirmSenha.Text)) then
  begin
    if (edtConfirmSenha.Text = edtSenha.Text ) then
    begin

      qryInsereUsuario.Insert;
      qryInsereUsuarioID_USER.AsInteger := qryUltimoULTIMO.AsInteger + 1;
      qryInsereUsuarioNAME.AsString     := edtNome.Text;
      qryInsereUsuarioPASSWORD.AsString := edtSenha.Text;
      qryInsereUsuario.Post;

      ShowMessage('Usu�rio criado com sucesso!');

      frmCriarUsuario.Close;

    end
    else
      edtNome.SetFocus;
      exit;
  end;
end;

procedure TfrmCriarUsuario.btnCriarContaMouseEnter(Sender: TObject);
begin
  pnCriarConta.Color := $00408000;
end;

procedure TfrmCriarUsuario.btnCriarContaMouseLeave(Sender: TObject);
begin
   pnCriarConta.Color := $0080FF00;
end;

procedure TfrmCriarUsuario.edtConfirmSenhaExit(Sender: TObject);
begin
  if edtSenha.Text = '' then
  begin
    ShowMessage('Campo senha � obrigat�rio!');
    edtSenha.SetFocus;
    exit;
  end
  else if  edtSenha.Text <> edtConfirmSenha.Text then
  begin
     ShowMessage('Campo Senha e Confirma��o de senha n�o confere!');
     edtSenha.SetFocus;
     exit;
  end;
end;

procedure TfrmCriarUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryInsereUsuario.Close;
  qryUltimo.Close;
end;

procedure TfrmCriarUsuario.FormShow(Sender: TObject);
begin
  qryInsereUsuario.Open;
  qryUltimo.Open;
end;

function TfrmCriarUsuario.FValidaCampo(Name, Password,
  ConfirmPassword: String): Boolean;
begin
  result := false;

  if Name <> '' then
  begin
    if (Password <> '') then
    begin
      if (ConfirmPassword <> '') then
      begin
        result := true;
        exit;
      end
      else
      begin
        ShowMessage('Campo Confirma��o de senha � obrigat�rio');
        edtConfirmSenha.SetFocus;
        exit;
      end;
    end
    else
    begin
      ShowMessage('Campo Senha � obrigat�rio');
      edtSenha.SetFocus;
      exit;
    end;
  end
  else
  begin
    ShowMessage('Campo Nome � obrigat�rio');
    edtNome.SetFocus;
    exit;
  end;
end;

end.
