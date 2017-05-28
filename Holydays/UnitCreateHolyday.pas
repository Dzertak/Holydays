unit UnitCreateHolyday;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask;

type
  TFormCreateHolyday = class(TForm)
    scrlbx1: TScrollBox;
    grp1: TGroupBox;
    btnAddZ: TSpeedButton;
    edtZFio: TEdit;
    edtZOrg: TEdit;
    edtZTel: TEdit;
    edtZEmail: TEdit;
    grp2: TGroupBox;
    img2: TImage;
    btn1: TSpeedButton;
    dbgrd4: TDBGrid;
    edt2: TEdit;
    dbgrd5: TDBGrid;
    dbgrd6: TDBGrid;
    grp3: TGroupBox;
    img1: TImage;
    btnAddServiceExecutor: TSpeedButton;
    dbgrd1: TDBGrid;
    edt1: TEdit;
    dbgrd2: TDBGrid;
    dbgrd3: TDBGrid;
    grp4: TGroupBox;
    btnAddHolyday: TSpeedButton;
    edtHcodeZ: TEdit;
    edtHcodeTH: TEdit;
    edtHname: TEdit;
    edtHplace: TEdit;
    dtpHdate: TDateTimePicker;
    edtHcost: TEdit;
    chkHcosted: TCheckBox;
    lbl1: TLabel;
    lbl2: TLabel;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    dbedt_2: TDBEdit;
    dbedt_3: TDBEdit;
    dbedtExeServ: TDBEdit;
    dbedtSupServ: TDBEdit;
    procedure btnAddZClick(Sender: TObject);
    procedure dbedt_Change(Sender: TObject);
    procedure dbedt_1Change(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure btnAddHolydayClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddServiceExecutorClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbedt_2Change(Sender: TObject);
    procedure dbedt_3Change(Sender: TObject);
  private
    { Private declarations }
  public
    id_holyday:string;
    costSerExe,costSerSup,sumCost:string;
  end;

var
  FormCreateHolyday: TFormCreateHolyday;

implementation

{$R *.dfm}

uses UnitDataModule, UnitMain;

procedure TFormCreateHolyday.btn1Click(Sender: TObject);
begin
if (Length(dbedtSupServ.Text)>0) then
begin
DataModule1.cmd1.CommandText:='Insert Into Заказы_поставщиков(Код_праздника,Код_услуги) Values('+id_holyday+','+dbedtSupServ.Text+')';
DataModule1.cmd1.Execute;
DataModule1.qryAddOrdSup.SQL.Clear;
DataModule1.qryAddOrdSup.SQL.Add('Select з.Код_заказа,по.Название,у.Название,у.Стоимость');
DataModule1.qryAddOrdSup.SQL.Add('from Заказы_поставщиков з, Праздники п, Поставщики по, Услуги_поставщиков у');
DataModule1.qryAddOrdSup.SQL.Add('Where п.Код_праздника='+id_holyday+' AND  з.Код_услуги=у.Код_услуги');
DataModule1.qryAddOrdSup.SQL.Add('AND по.Код_поставщика=у.Код_поставщиков  AND з.Код_праздника=п.Код_праздника');
DataModule1.qryAddOrdSup.Open;

DataModule1.qrySQL.SQL.Clear;
DataModule1.qrySQL.SQL.Add('Select SUM(у.Стоимость) as suma ');
DataModule1.qrySQL.SQL.Add('from Заказы_поставщиков з, Праздники п, Поставщики по, Услуги_поставщиков у') ;
DataModule1.qrySQL.SQL.Add('Where п.Код_праздника='+id_holyday+' AND  з.Код_услуги=у.Код_услуги');
DataModule1.qrySQL.SQL.Add('AND по.Код_поставщика=у.Код_поставщиков  AND з.Код_праздника=п.Код_праздника');
DataModule1.qrySQL.Open;

costSerSup:=DataModule1.qrySQL.FieldByName('suma').AsString;
lbl2.Caption:='Стоимость: '+costSerSup;

end else ShowMessage('Выберите услугу!');
end;

procedure TFormCreateHolyday.btn2Click(Sender: TObject);
begin
if(Length(dbedt_2.Text)>0)then
begin
DataModule1.cmd1.CommandText:='Delete From Заказы_исполнителей Where Код_заказа='+dbedt_2.Text;
DataModule1.cmd1.Execute;
DataModule1.qryAddOrdExe.SQL.Clear;
DataModule1.qryAddOrdExe.SQL.Add('Select з.Код_заказа, и.Имя_контактного_лица,у.Название,у.Стоимость');
DataModule1.qryAddOrdExe.SQL.Add('from Заказы_исполнителей з, Праздники п, Исполнители и, Услуги_исполнителей у');
DataModule1.qryAddOrdExe.SQL.Add('Where п.Код_праздника='+id_holyday+' AND  з.Код_услуги=у.Код_услуги');
DataModule1.qryAddOrdExe.SQL.Add('AND и.Код_исполнителя=у.Код_исполнителя  AND з.Код_праздника=п.Код_праздника');
DataModule1.qryAddOrdExe.Open;

DataModule1.qrySQL.SQL.Clear;
DataModule1.qrySQL.SQL.Add('Select SUM(у.Стоимость) as suma ');
DataModule1.qrySQL.SQL.Add('from Заказы_исполнителей з, Праздники п, Исполнители и, Услуги_исполнителей у') ;
DataModule1.qrySQL.SQL.Add('Where п.Код_праздника='+id_holyday+' AND  з.Код_услуги=у.Код_услуги');
DataModule1.qrySQL.SQL.Add('AND и.Код_исполнителя=у.Код_исполнителя  AND з.Код_праздника=п.Код_праздника');
DataModule1.qrySQL.Open;

costSerExe:=DataModule1.qrySQL.FieldByName('suma').AsString;
if Length(costSerExe)=0 then
costSerExe:= '0';

lbl1.Caption:='Стоимость: '+costSerExe;
end
end;

procedure TFormCreateHolyday.btn3Click(Sender: TObject);
begin
if(Length(dbedt_3.Text)>0)then
begin
DataModule1.cmd1.CommandText:='Delete From Заказы_поставщиков Where Код_заказа='+dbedt_3.Text;
DataModule1.cmd1.Execute;
DataModule1.qryAddOrdSup.SQL.Clear;
DataModule1.qryAddOrdSup.SQL.Add('Select з.Код_заказа,по.Название,у.Название,у.Стоимость');
DataModule1.qryAddOrdSup.SQL.Add('from Заказы_поставщиков з, Праздники п, Поставщики по, Услуги_поставщиков у');
DataModule1.qryAddOrdSup.SQL.Add('Where п.Код_праздника='+id_holyday+' AND  з.Код_услуги=у.Код_услуги');
DataModule1.qryAddOrdSup.SQL.Add('AND по.Код_поставщика=у.Код_поставщиков  AND з.Код_праздника=п.Код_праздника');
DataModule1.qryAddOrdSup.Open;

DataModule1.qrySQL.SQL.Clear;
DataModule1.qrySQL.SQL.Add('Select SUM(у.Стоимость) as suma ');
DataModule1.qrySQL.SQL.Add('from Заказы_поставщиков з, Праздники п, Поставщики по, Услуги_поставщиков у') ;
DataModule1.qrySQL.SQL.Add('Where п.Код_праздника='+id_holyday+' AND  з.Код_услуги=у.Код_услуги');
DataModule1.qrySQL.SQL.Add('AND по.Код_поставщика=у.Код_поставщиков  AND з.Код_праздника=п.Код_праздника');
DataModule1.qrySQL.Open;

costSerSup:=DataModule1.qrySQL.FieldByName('suma').AsString;
if Length(costSerSup)=0 then
costSerSup:= '0';

lbl2.Caption:='Стоимость: '+costSerSup;
end;
end;

procedure TFormCreateHolyday.btnAddHolydayClick(Sender: TObject);
var check:string;
begin
if(Length(btnAddHolyday.Caption)=1) then
begin
DataModule1.cmd1.CommandText:='Insert Into праздники(Код_заказчика,Код_типа_праздника, Название,Место_проведения,Дата_провидения) Values('+edtHcodeZ.Text+','+edtHcodeTH.Text+','''+edtHname.Text+''','''+edtHplace.Text+''','+FormatFloat('#', dtpHdate.Date)+')';
DataModule1.cmd1.Execute;
DataModule1.qrySQL.SQL.Clear;
DataModule1.qrySQL.SQL.Add('Select Max(код_праздника) as lastH From Праздники');
DataModule1.qrySQL.Open;
id_holyday:=DataModule1.qrySQL.FieldByName('lastH').AsString;
FormCreateHolyday.Caption:='Создание праздника №'+id_holyday;
btnAddHolyday.Caption:='ок';
chkHcosted.Enabled:=True;
grp2.Enabled:=True;
grp3.Enabled:=True;
ShowMessage('Праздник зарегестрирован! Подсчитайте стоимость услуг!');
end
else
begin
if chkHcosted.Checked then
check:='true'
else check:='false';
DataModule1.cmd1.CommandText:='Update Праздники set Стоимость='+IntToStr(StrToInt(costSerExe)+StrToInt(costSerSup))+', Оплачен='+check+' Where код_праздника='+id_holyday+'';
DataModule1.cmd1.Execute;
FormCreateHolyday.Caption:='Создание праздника';
id_holyday:='';
btnAddHolyday.Caption:='+';
chkHcosted.Enabled:=False;
grp2.Enabled:=False;
grp3.Enabled:=False;
costSerExe:='';
costSerSup:='';
ShowMessage('Праздник создан!');
Close();
end;
end;

procedure TFormCreateHolyday.btnAddServiceExecutorClick(Sender: TObject);
begin
if (Length(dbedtExeServ.Text)>0) then
begin


DataModule1.cmd1.CommandText:='Insert Into Заказы_исполнителей(Код_праздника,Код_услуги) Values('+id_holyday+','+dbedtExeServ.Text+')';
DataModule1.cmd1.Execute;
DataModule1.qryAddOrdExe.SQL.Clear;
DataModule1.qryAddOrdExe.SQL.Add('Select з.Код_заказа, и.Имя_контактного_лица,у.Название,у.Стоимость');
DataModule1.qryAddOrdExe.SQL.Add('from Заказы_исполнителей з, Праздники п, Исполнители и, Услуги_исполнителей у');
DataModule1.qryAddOrdExe.SQL.Add('Where п.Код_праздника='+id_holyday+' AND  з.Код_услуги=у.Код_услуги');
DataModule1.qryAddOrdExe.SQL.Add('AND и.Код_исполнителя=у.Код_исполнителя AND з.Код_праздника=п.Код_праздника');
DataModule1.qryAddOrdExe.Open;

DataModule1.qrySQL.SQL.Clear;
DataModule1.qrySQL.SQL.Add('Select SUM(у.Стоимость) as suma ');
DataModule1.qrySQL.SQL.Add('from Заказы_исполнителей з, Праздники п, Исполнители и, Услуги_исполнителей у') ;
DataModule1.qrySQL.SQL.Add('Where п.Код_праздника='+id_holyday+' AND  з.Код_услуги=у.Код_услуги');
DataModule1.qrySQL.SQL.Add('AND и.Код_исполнителя=у.Код_исполнителя  AND з.Код_праздника=п.Код_праздника');
DataModule1.qrySQL.Open;
costSerExe:=DataModule1.qrySQL.FieldByName('suma').AsString;
lbl1.Caption:='Стоимость: '+costSerExe;

 end else ShowMessage('Выберите услугу!');
end;

procedure TFormCreateHolyday.btnAddZClick(Sender: TObject);
begin
DataModule1.cmd1.CommandText:='Insert Into Заказчики(ФИО,Организация,Телефон,Имейл,Дата_регистрации) Values('''+edtZFio.Text+''','''+edtZOrg.Text+''','''+edtZTel.Text+''','''+edtZEmail.Text+''','+FormatFloat('#', Date)+')';
DataModule1.cmd1.Execute;
DataModule1.qrySQL.SQL.Clear;
DataModule1.qrySQL.SQL.Add('Select Max(код_заказчика) as last12 From Заказчики');
DataModule1.qrySQL.Open;
edtHcodeZ.Text:=DataModule1.qrySQL.FieldByName('last12').AsString;
ShowMessage('Заказчик добавлен');
end;

procedure TFormCreateHolyday.dbedt_1Change(Sender: TObject);
begin
if(Length(dbedtSupServ.Text)>0)then
with DataModule1.qryAddSup do
begin
  SQL.Clear;
  SQL.Add('Select * From Поставщики Where Код_поставщика=(Select код_поставщиков From Услуги_поставщиков Where Код_услуги='+dbedtSupServ.Text+')');
  Open;
end;
end;

procedure TFormCreateHolyday.dbedt_2Change(Sender: TObject);
begin
if Length(dbedt_2.Text)=0 then
costSerExe:='0';
end;

procedure TFormCreateHolyday.dbedt_3Change(Sender: TObject);
begin
if Length(dbedt_3.Text)=0 then
costSerSup:='0';
end;

procedure TFormCreateHolyday.dbedt_Change(Sender: TObject);
begin
if(Length(dbedtExeServ.Text)>0)then
with DataModule1.qryAddExe do
begin
  SQL.Clear;
  SQL.Add('Select * From Исполнители Where Код_исполнителя=(Select код_исполнителя From Услуги_исполнителей Where Код_услуги='+dbedtExeServ.Text+')');
  Open;
end;
end;

procedure TFormCreateHolyday.edt1Change(Sender: TObject);
begin
with DataModule1.qryAddSerExe do
begin
  SQL.Clear;
  SQL.Add('Select * From Услуги_исполнителей уи');
  SQL.Add('Where уи.Название LIKE ''%'+edt1.Text+'%'' OR ');
  SQL.Add('уи.Стоимость LIKE ''%'+edt1.Text+'%''');
  Open;
end;
end;

procedure TFormCreateHolyday.edt2Change(Sender: TObject);
begin
with DataModule1.qryAddSerSup do
begin
  SQL.Clear;
  SQL.Add('Select * From Услуги_поставщиков уп');
  SQL.Add('Where уп.Название LIKE ''%'+edt2.Text+'%'' OR ');
  SQL.Add('уп.Стоимость LIKE ''%'+edt2.Text+'%''');
  Open;
end;
end;

procedure TFormCreateHolyday.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DataModule1.qryExecutors.Active:=False;
DataModule1.qryServiceExecutors.Active:=False;
DataModule1.qrySuppliers.Active:=False;
DataModule1.qryServiceSuppliers.Active:=False;
DataModule1.qryCustomers.Active:=False;
DataModule1.qryHolydays.Active:=False;
DataModule1.qryOrderExecutors.Active:=False;
DataModule1.qryOrderSuppliers.Active:=False;
DataModule1.qryExecutors.Active:=True;
DataModule1.qryServiceExecutors.Active:=True;
DataModule1.qrySuppliers.Active:=True;
DataModule1.qryServiceSuppliers.Active:=True;
DataModule1.qryCustomers.Active:=True;
DataModule1.qryHolydays.Active:=True;
DataModule1.qryOrderExecutors.Active:=True;
DataModule1.qryOrderSuppliers.Active:=True;
edtHcost.Text:='0';
edtZFio.Text:='';
edtZOrg.Text:='';
edtZTel.Text:='';
edtZEmail.Text:='';
edt2.Text:='';
edt1.Text:='';
edtHcodeZ.Text:='';
edtHcodeTH.Text:='';
edtHname.Text:='';
edtHplace.Text:='';
costSerExe:='0';
costSerSup:='0';

end;

procedure TFormCreateHolyday.FormCreate(Sender: TObject);
begin

costSerExe:='0';
costSerSup:='0';
edtHcost.Text:=IntToStr(0);

end;

end.
