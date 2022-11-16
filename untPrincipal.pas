unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    pnPrincipal: TPanel;
    pnTitulo: TPanel;
    pnRodape: TPanel;
    dbMovimentacoes: TDBGrid;
    dsMovimentacao: TDataSource;
    pnDeposito: TPanel;
    pnRetirada: TPanel;
    btnRetirada: TSpeedButton;
    btnDeposito: TSpeedButton;
    Label1: TLabel;
    rbFiltroTipoMov: TRadioGroup;
    rbFiltroUsuario: TRadioGroup;
    dtDataInicio: TDateTimePicker;
    dtDataFim: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    qryMov: TFDQuery;
    qrySaldo: TFDQuery;
    qrySaldoID_CONTA: TIntegerField;
    qrySaldoSALDO: TFMTBCDField;
    qryMovID: TIntegerField;
    qryMovTP_MOVIMENT: TStringField;
    qryMovMOTIVE: TStringField;
    qryMovDATE_MOVIMENTS: TDateField;
    qryMovVALUE_MOVIMENTS: TSingleField;
    qryMovID_USER: TIntegerField;
    qryMovNAME: TStringField;
    Panel1: TPanel;
    lblUsuario: TLabel;
    lblDataHora: TLabel;
    pnLogout: TPanel;
    btnLogout: TSpeedButton;
    Image1: TImage;
    pnPesquisar: TPanel;
    btnPesquisar: TSpeedButton;
    Panel2: TPanel;
    pnSaldo: TPanel;
    pnSair: TPanel;
    btnSair: TSpeedButton;
    Panel3: TPanel;
    lblSaldo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PAtualizaInfo();
    procedure btnDepositoClick(Sender: TObject);
    procedure btnRetiradaClick(Sender: TObject);
    procedure dbMovimentacoesDblClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure PEfetuaLogout();
    procedure btnDepositoMouseLeave(Sender: TObject);
    procedure btnDepositoMouseEnter(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private

  public
    vCodigo : Integer;
    vButton : Boolean;

  end;

var
  frmPrincipal: TfrmPrincipal;
  vSaldo : Double;
  vTpMoviment, vCodUsuario : Integer;

implementation

{$R *.dfm}

uses untDm, untLancamento, untLogin;

procedure TfrmPrincipal.btnDepositoClick(Sender: TObject);
begin
  vTpMoviment := 1;
  vButton := true;

  try
    frmLancamento := TfrmLancamento.Create(nil);
    frmLancamento.ShowModal;
  finally
    frmLancamento.Release;
    FreeAndNil(frmLancamento);
  end;
end;

procedure TfrmPrincipal.btnDepositoMouseEnter(Sender: TObject);
begin
  pnDeposito.Color := $00408000;
end;

procedure TfrmPrincipal.btnDepositoMouseLeave(Sender: TObject);
begin
   pnDeposito.Color := $0080FF00;
end;

procedure TfrmPrincipal.btnLogoutClick(Sender: TObject);
begin
  PEfetuaLogout();
end;

procedure TfrmPrincipal.btnPesquisarClick(Sender: TObject);
var
  Sql : String;
begin
  Sql := 'SELECT M.id,CASE M.tp_moviment WHEN 1 then ''Deposito'' WHEN 2 then ''Retirada''WHEN 3 then ''Sobra'' end as tp_moviment,' +
          'M.motive, M."DATE_MOVIMENTS", M."VALUE_MOVIMENTS", M.id_user, U.name FROM MOVIMENTS M INNER JOIN USERS U ON M.id_user = U.id_user';

  qryMov.Close;
  qryMov.SQL.Clear;
  qryMov.SQL.Add(Sql);
  qryMov.SQL.Add('WHERE DATE_MOVIMENTS >= :DATA_INICIO AND DATE_MOVIMENTS <= :DATA_FIM');
  qryMov.ParamByName('DATA_INICIO').AsDate := dtDataInicio.DateTime;
  qryMov.ParamByName('DATA_FIM').AsDate    := dtDataFim.DateTime;

  if rbFiltroUsuario.ItemIndex = 1  then
  begin
    qryMov.SQL.Add('AND M.ID_USER = :ID_USER');
    qryMov.ParamByName('ID_USER').AsInteger := vCodUsuario;
  end;

  if rbFiltroTipoMov.ItemIndex = 1 then
  begin
    qryMov.SQL.Add('AND TP_MOVIMENT = :TP_MOVIMENT');
    qryMov.ParamByName('TP_MOVIMENT').AsInteger := 1;
  end;

  if rbFiltroTipoMov.ItemIndex = 2 then
  begin
    qryMov.SQL.Add('AND TP_MOVIMENT = :TP_MOVIMENT');
    qryMov.ParamByName('TP_MOVIMENT').AsInteger := 2;
  end;

  qryMov.SQL.Add('ORDER BY ID DESC');
  qryMov.Open;

  if qryMov.IsEmpty then
    begin
      ShowMessage('Nenhum registro encontrado!');
      exit;
    end;

end;

procedure TfrmPrincipal.btnRetiradaClick(Sender: TObject);
begin
  vTpMoviment := 2;
  vButton := true;
  try
    frmLancamento := TfrmLancamento.Create(nil);
    frmLancamento.ShowModal;
  finally
    frmLancamento.Release;
    FreeAndNil(frmLancamento);
  end;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.dbMovimentacoesDblClick(Sender: TObject);
begin
  vCodigo := qryMovID.Value;
  vButton := false;
  
  if UpperCase(qryMovTP_MOVIMENT.AsString)  <> 'RETIRADA' then
    vTpMoviment := 1
  else
    vTpMoviment := 2;  
  
  try
    frmLancamento := TfrmLancamento.Create(nil);
    frmLancamento.ShowModal;
  finally
    if (frmPrincipal.vCodigo > 0) then
    begin
      frmLancamento.edtCod.Text := IntToStr(frmPrincipal.vCodigo);
      frmLancamento.edtCodExit(Sender);
    end;
  end; 
   
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryMov.Close;
  qrySaldo.Close;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  qryMov.Open;
  qrySaldo.Open;

  vCodUsuario := frmLogin.vCodUsuario;
  PAtualizaInfo;
end;

procedure TfrmPrincipal.PAtualizaInfo;
begin
  qrySaldo.Close;
  qrySaldo.Open;

  lblSaldo.Caption := 'R$ '+ FormatFloat(',0.00', StrToFloat(qrySaldoSALDO.AsString));
  lblUsuario.Caption  := 'Usuário logado: ' + frmLogin.vUsuario;//vUsuario;
  lblDataHora.Caption := DateToStr(Now);
end;

procedure TfrmPrincipal.PEfetuaLogout();
begin
  frmPrincipal.Close;
end;

end.
