unit untLancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TfrmLancamento = class(TForm)
    pnPrincipal: TPanel;
    qryLancaMov: TFDQuery;
    dsLancaMov: TDataSource;
    qryLancaMovID: TIntegerField;
    qryLancaMovTP_MOVIMENT: TStringField;
    qryLancaMovID_USER: TIntegerField;
    qryLancaMovMOTIVE: TStringField;
    qryLancaMovDATE_MOVIMENTS: TDateField;
    qryLancaMovVALUE_MOVIMENTS: TSingleField;
    Label2: TLabel;
    dbMotive: TDBEdit;
    Label3: TLabel;
    dbValue: TDBEdit;
    qryUltimo: TFDQuery;
    qryUltimoULTIMO: TIntegerField;
    edtCod: TEdit;
    Label1: TLabel;
    lblUsuarioLogado: TLabel;
    lblTitulo: TLabel;
    qryExec: TFDQuery;
    rdTipoDeposito: TRadioGroup;
    Panel1: TPanel;
    Image1: TImage;
    pnIncluir: TPanel;
    btnIncluir: TSpeedButton;
    pnCancel: TPanel;
    btnCancelar: TSpeedButton;
    pnGravar: TPanel;
    pnExcluir: TPanel;
    btnGravar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnClose: TSpeedButton;
    Panel2: TPanel;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtCodExit(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dsLancaMovStateChange(Sender: TObject);
    procedure dbValueExit(Sender: TObject);
  private
    { Private declarations }
  public
    {Public declarations}
  end;

var
  frmLancamento: TfrmLancamento;


implementation

{$R *.dfm}

uses untDm, untPrincipal, untLogin;

procedure TfrmLancamento.btnCloseClick(Sender: TObject);
begin
  frmLancamento.Close;
end;

procedure TfrmLancamento.btnCancelarClick(Sender: TObject);
begin
  qryLancaMov.Cancel;
  dbMotive.SetFocus;
end;

procedure TfrmLancamento.btnExcluirClick(Sender: TObject);
begin
  if edtCod.Text <> '' then
  begin
    if MessageDlg('Deseja excluir esse lan�amento?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
    begin
      qryLancaMov.ParamByName('ID').AsInteger := StrToInt(edtCod.Text);
      frmPrincipal.qrySaldo.Edit;

         //tipo 1 = Deposito | tipo 2 = Retirada | Tipo 3 = Sobra
      if (vTpMoviment = 1) or (vTpMoviment = 3) then
      begin
        if qryLancaMovVALUE_MOVIMENTS.AsFloat > frmPrincipal.qrySaldoSALDO.AsFloat  then
        begin
          ShowMessage('N�o � possivel exluir um Dep�sito maior que o Saldo Atual');
          btnCloseClick(sender);
          exit
        end
        else
        begin
          frmPrincipal.qrySaldoSALDO.AsFloat:=
                frmPrincipal.qrySaldoSALDO.AsFloat - qryLancaMovVALUE_MOVIMENTS.AsFloat;
        end;
      end
      else
      begin
        frmPrincipal.qrySaldoSALDO.AsFloat :=
                frmPrincipal.qrySaldoSALDO.AsFloat + qryLancaMovVALUE_MOVIMENTS.AsFloat;
      end;

      frmPrincipal.lblSaldo.Caption :=
                        'R$ '+ FormatFloat(',0.00', frmPrincipal.qrySaldoSALDO.AsFloat);

      frmPrincipal.qrySaldo.Post;

      qryLancaMov.Delete;
      ShowMessage('Lan�amento excluido com sucesso!');

      frmPrincipal.qryMov.Close;
      frmPrincipal.qryMov.Open;
      edtCod.Clear;

      btnCloseClick(Sender);
      exit;
    end
    else
    begin
      qryLancaMov.Cancel;
    end;
  end
  else
  begin
    ShowMessage('Nenhum lan�amento informado para exclus�o!');
    exit;
  end;
end;

procedure TfrmLancamento.btnGravarClick(Sender: TObject);
begin

  if (dbMotive.Text <> '') and (dbValue.Text <> '') then
  begin
    if qryLancaMov.State = dsInsert then
    begin
      qryUltimo.Close;
      qryUltimo.SQL.Clear;
      qryUltimo.SQL.Add('SELECT MAX(ID) AS ULTIMO FROM MOVIMENTS');
      qryUltimo.Open;

      qryLancaMovID.AsInteger := qryUltimo.FieldByName('ULTIMO').AsInteger + 1;
      edtCod.Text :=  qryLancaMovID.AsString;

      if vTpMoviment = 1 then
      begin
        case rdTipoDeposito.ItemIndex of
           0 : qryLancaMovTP_MOVIMENT.AsInteger := 1;
           1 : qryLancaMovTP_MOVIMENT.AsInteger := 3;
        end;
      end
      else
      begin
        qryLancaMovTP_MOVIMENT.AsInteger := 2;
      end;

      qryExec.Close;
      qryExec.SQL.Clear;
      qryExec.SQL.Add('SELECT SALDO FROM CONTA');
      qryExec.Open;

      if vTpMoviment = 2 then
      begin
        if (qryExec.FieldByName('SALDO').AsFloat) < StrToFloat(dbValue.Text)then
        begin
          ShowMessage('Valor de retirada n�o pode ser maior que Saldo Atual!');
          dbValue.Clear;
          dbValue.SetFocus;
          exit;
        end;
      end;

      qryLancaMovID_USER.AsInteger := frmLogin.vCodUsuario;
      qryLancaMovDATE_MOVIMENTS.AsDateTime := Now;
    end;

    qryLancaMov.Post;

    case vTpMoviment of
      1: ShowMessage('Dep�sito realizado com sucesso!');
      2: ShowMessage('Retirada realizada com sucesso!');
    end;

    frmLancamento.Close;
  end
  else
  begin
    ShowMessage('Descri��o e Valor s�o obrigat�rios ');
    dbMotive.SetFocus;
    exit;
  end;

  frmPrincipal.qrySaldo.Edit;

  case vTpMoviment of
    1 : frmPrincipal.qrySaldoSALDO.AsFloat :=  frmPrincipal.qrySaldoSALDO.AsFloat + StrToFloat(dbValue.Text);
    2 : frmPrincipal.qrySaldoSALDO.AsFloat :=  frmPrincipal.qrySaldoSALDO.AsFloat - StrToFloat(dbValue.Text);
    3 : frmPrincipal.qrySaldoSALDO.AsFloat :=  frmPrincipal.qrySaldoSALDO.AsFloat + StrToFloat(dbValue.Text);
  end;
  frmPrincipal.lblSaldo.Caption := 'R$ '+ FormatFloat(',0.00', frmPrincipal.qrySaldoSALDO.AsFloat);//FloatToStr(frmPrincipal.qrySaldoSALDO.AsFloat);
  frmPrincipal.qrySaldo.Post;

  frmPrincipal.qryMov.Close;
  frmPrincipal.qryMov.Open;
end;

procedure TfrmLancamento.btnIncluirClick(Sender: TObject);
begin
  dbMotive.SetFocus;
  qryLancaMov.Insert;
  edtCod.Clear;
  edtCod.Enabled := false;
  dbMotive.Enabled := true;
  dbValue.Enabled := true;


end;

procedure TfrmLancamento.dbValueExit(Sender: TObject);
begin
  if dbValue.Text <> '' then
  begin
    qryExec.Close;
    qryExec.SQL.Clear;
    qryExec.SQL.Add('SELECT SALDO FROM CONTA');
    qryExec.Open;

    if (qryExec.FieldByName('SALDO').AsFloat) > StrToFloat(dbValue.Text)then
    begin
        ShowMessage('Valor de retirada n�o pode ser maior que Saldo Atual!');
        dbValue.SetFocus;
        exit;
    end;
  end
  else
  begin
    ShowMessage('Nenhum valor informado!');
    dbValue.SetFocus;
    exit;
  end;

end;

procedure TfrmLancamento.dsLancaMovStateChange(Sender: TObject);
begin
  if (qryLancaMov.State in [dsInsert,dsEdit]) then
   begin
     btnIncluir.Enabled := False;
     btnGravar.Enabled  := True;
     btnCancelar.Enabled:= True;
     btnExcluir.Enabled := true;
   end
  else
   begin
     btnIncluir.Enabled := True;
     btnGravar.Enabled  := False;
     btnCancelar.Enabled:= False;
     btnExcluir.Enabled := true;
   end;
end;

procedure TfrmLancamento.edtCodExit(Sender: TObject);
begin
 if(edtCod.Text <> '')then
  begin
    qryLancaMov.Close;
    qryLancaMov.ParamByName('ID').AsInteger := StrToInt(edtCod.Text);
    qryLancaMov.Open;

    if vTpMoviment <> 2 then
    begin
      case qryLancaMovTP_MOVIMENT.AsInteger of
         1 : rdTipoDeposito.ItemIndex := 0;
         3 : rdTipoDeposito.ItemIndex := 1;
      end;
    end;

    dbMotive.Enabled := false;
    dbValue.Enabled := false;
  end;
end;

procedure TfrmLancamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryLancaMov.Close;
  edtCod.Clear;
end;

procedure TfrmLancamento.FormShow(Sender: TObject);
begin
  if frmPrincipal.vButton then
      dbMotive.SetFocus
  else
    edtCod.SetFocus;

  edtCod.Clear;

  qryLancaMov.Open;


  if (frmPrincipal.vCodigo <> 0) and not(frmPrincipal.vButton) then
  begin
    edtCod.Text := IntToStr(frmPrincipal.vCodigo);
    edtCodExit(Sender);
  end;

  if vTpMoviment = 1 then
  begin
     lblTitulo.Caption := 'Dep�sito';
     rdTipoDeposito.Visible := True;
  end
  else
  begin
     lblTitulo.Caption := 'Retirada';
     rdTipoDeposito.Visible := False;
  end;

 lblUsuarioLogado.Caption:= 'Usu�rio logado: ' + frmLogin.vUsuario;
end;

end.
