object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Funcion'#225'rio'
  ClientHeight = 275
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 310
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Setor'
    end
    object Label2: TLabel
      Left = 454
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Permiss'#227'o'
    end
    object edtNome: TLabeledEdit
      Left = 24
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 0
    end
    object edtNomeLider: TLabeledEdit
      Left = 168
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do l'#237'der'
      TabOrder = 1
    end
    object btnIncluir: TButton
      Left = 454
      Top = 72
      Width = 121
      Height = 25
      Caption = 'Incluir'
      TabOrder = 4
      OnClick = btnIncluirClick
    end
    object cmbSetor: TComboBox
      Left = 310
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 2
      Items.Strings = (
        'TI'
        'Admnistra'#231#227'o'
        'Financeiro'
        'Limpeza')
    end
    object cmbPermissao: TComboBox
      Left = 454
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 3
      Items.Strings = (
        'Visualizar'
        'Supervisor'
        'Normal ')
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 113
    Width = 591
    Height = 162
    Align = alClient
    TabOrder = 1
  end
end
