program Holydays;

uses
  Vcl.Forms,
  UnitStart in 'UnitStart.pas' {FormStart},
  UnitMain in 'UnitMain.pas' {FormMain},
  Vcl.Themes,
  Vcl.Styles,
  UnitDataModule in 'UnitDataModule.pas' {DataModule1: TDataModule},
  UnitAddServiceExecutors in 'UnitAddServiceExecutors.pas' {FormAddServiceExecutors},
  UnitAddServiceSuppliers in 'UnitAddServiceSuppliers.pas' {FormAddServiceSuppliers};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Light');
  Application.CreateForm(TFormStart, FormStart);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormAddServiceExecutors, FormAddServiceExecutors);
  Application.CreateForm(TFormAddServiceSuppliers, FormAddServiceSuppliers);
  Application.Run;
end.
