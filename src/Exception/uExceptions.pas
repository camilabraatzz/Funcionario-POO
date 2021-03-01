unit uExceptions;

interface

uses
  Winapi.Windows, System.SysUtils;

type
  ECampoObrigatorio = class(Exception)
  public
    constructor Create; reintroduce;
  end;
implementation

{ ECampoObrigatorio }

constructor ECampoObrigatorio.Create;
begin
  Self.Message := 'Preencha os campos em branco';
end;

end.
