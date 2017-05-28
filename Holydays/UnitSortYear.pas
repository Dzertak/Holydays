unit UnitSortYear;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormSortYear = class(TForm)
    btn1: TSpeedButton;
    edt1: TEdit;
    lbl1: TLabel;
    procedure edt1Change(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSortYear: TFormSortYear;

implementation

{$R *.dfm}

uses UnitMain, UnitDataModule;

procedure TFormSortYear.btn1Click(Sender: TObject);
begin
if Length(edt1.Text)<>4 then
ShowMessage('�� ������ ������ ����')
else
begin
FormMain.year1:=edt1.text;
with DataModule1.qryHolydays do
begin
  Active:=False;
  SQL.Clear;
  SQL.Add('Select ���_���������,���_����_���������, ���_���������, ��������, �����_����������,����_����������,���������, �������,���_���������,��������');
  SQL.Add('From tmp');
  SQL.Add('Where ����_���������� Between #01/01/'+edt1.Text+'# AND #01/01/'+IntToStr(StrToInt(edt1.Text)+1)+'#');
  Open;
end;
FormSortYear.Close;
end;
end;

procedure TFormSortYear.edt1Change(Sender: TObject);
begin
 if Length(edt1.Text)>4 then
 edt1.Text:=Copy(edt1.Text,1,4);
end;

procedure TFormSortYear.edt1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', #8])then Key:=#0;
end;

end.
