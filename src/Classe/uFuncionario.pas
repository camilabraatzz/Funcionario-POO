unit uFuncionario;

interface

uses
  uExceptions, System.SysUtils, uEnumFuncionario;

type
  TFuncionario = class
  private
    FNome         : String;
    FSetor        : tSetor;
    FPermissao    : tPermissao;
    FNomeLider    : String;
    FDataInclusao : TDateTime;
    function GetNome: string;
    function GetNomeLider: string;
    function GetPermissao: tPermissao;
    function GetSetor: tSetor;
    procedure SetNome(const Value: string);
    procedure SetNomeLider(const Value: string);
    procedure SetPermissao(const Value: tPermissao);
    procedure SetSetor(const Value: tSetor);
    function GetDataInc: TDateTime;

  public
    property Nome      : string read GetNome write SetNome;
    property Setor     : tSetor read GetSetor write SetSetor;
    property Permissao : tPermissao read GetPermissao write SetPermissao;
    property NomeLider : string read GetNomeLider write SetNomeLider;
    property DataInc   : TDateTime read GetDataInc;
    function ToString  : string; override;
    function SetorParaString: String;
    function PermissaoParaString: String;
    constructor Create;
  end;
implementation

{ TFuncionario }

constructor TFuncionario.Create;
begin
  FDataInclusao := Now;
end;

function TFuncionario.GetDataInc: TDateTime;
begin
  Result := FDataInclusao;
end;

function TFuncionario.GetNome: string;
begin
  Result := FNome;
end;

function TFuncionario.GetSetor: tSetor;
begin
  Result := FSetor;
end;

function TFuncionario.GetPermissao: tPermissao;
begin
  Result := FPermissao;
end;

function TFuncionario.GetNomeLider: string;
begin
  Result := FNomeLider;
end;

function TFuncionario.PermissaoParaString: String;
begin
  if FPermissao = tPermissao.tpVisualizar then
    Result := 'Vizualizar';

  if FPermissao = tPermissao.tpSupervisor then
    Result := 'Supervisor';

  if FPermissao = tPermissao.tpNormal then
    Result := 'Normal';
end;

procedure TFuncionario.SetNome(const Value: string);
begin
  if Value = '' then
    raise ECampoObrigatorio.Create;
  FNome := Value;
end;

procedure TFuncionario.SetSetor(const Value: tSetor);
begin
  if Value = tsVazio then
    raise ECampoObrigatorio.Create;
  FSetor := Value;
end;

procedure TFuncionario.SetPermissao(const Value: tPermissao);
begin
  if Value = tpVazio then
    raise ECampoObrigatorio.Create;
  FPermissao := Value;
end;

procedure TFuncionario.SetNomeLider(const Value: string);
begin
  if Value = '' then
    raise ECampoObrigatorio.Create;
  FNomeLider := Value;
end;

function TFuncionario.ToString: string;
begin
  Result := 'Nome: ' + FNome + sLineBreak
          + 'Nome do líder: ' + FNomeLider + sLineBreak
          + 'Setor: ' + SetorParaString + sLineBreak
          + 'Permissão: ' + PermissaoParaString + sLineBreak
          + 'Data de inclusão: ' + DateToStr(FDataInclusao);

end;

function TFuncionario.SetorParaString: String;
begin
  if FSetor = tsTi then
    Result := 'TI';

  if FSetor = tsAdm then
    Result := 'Administração';

  if FSetor = tsFinanceiro then
    Result := 'Financeiro';

  if FSetor = tsLimpeza then
    Result := 'Limpeza';
end;

end.
