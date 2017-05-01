unit UnitAddServiceSuppliers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TFormAddServiceSuppliers = class(TForm)
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
  FormAddServiceSuppliers: TFormAddServiceSuppliers;

implementation

{$R *.dfm}

uses UnitDataModule, UnitMain;

procedure TFormAddServiceSuppliers.btn1Click(Sender: TObject);
begin
DataModule1.cmd1.CommandText:='Insert Into Услуги_поставщиков(Код_поставщика,Название,Стоимость) Values('+FormMain.id_suppliers+','''+edt1.Text+''','+edt2.Text+')';
DataModule1.cmd1.Execute;
ShowMessage('Услуга добавлена');
end;

end.
