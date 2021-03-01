unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, 
  uEnumFuncionario, uFuncionario;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    edtNome: TLabeledEdit;
    edtNomeLider: TLabeledEdit;
    btnIncluir: TButton;
    cmbSetor: TComboBox;
    cmbPermissao: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }

    procedure ExibirFuncionario;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

{ TFrmPrincipal }

procedure TFrmPrincipal.btnIncluirClick(Sender: TObject);
begin
  ExibirFuncionario;
end;

procedure TFrmPrincipal.ExibirFuncionario;
var
  oFuncionario : TFuncionario;
begin
  oFuncionario           := TFuncionario.Create;
  oFuncionario.Nome      := edtNome.Text;
  oFuncionario.Setor     := tSetor(cmbSetor.ItemIndex);
  oFuncionario.Permissao := tPermissao(cmbPermissao.ItemIndex);
  oFuncionario.NomeLider := edtNomeLider.Text;

  Memo1.Lines.Add(oFuncionario.ToString);

  if Assigned(oFuncionario) then
    FreeAndNil(oFuncionario);
end;

end.
