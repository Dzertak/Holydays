unit UnitAddServiceExecutors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TFormAddServiceExecutors = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btn1: TSpeedButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAddServiceExecutors: TFormAddServiceExecutors;

implementation

{$R *.dfm}

uses UnitDataModule, UnitMain;

procedure TFormAddServiceExecutors.btn1Click(Sender: TObject);
begin
DataModule1.cmd1.CommandText:='Insert Into ������_������������(���_�����������,��������,���������) Values('+FormMain.id_executors+','''+edt1.Text+''','+edt2.Text+')';
DataModule1.cmd1.Execute;
ShowMessage('������ ���������');
end;

end.
