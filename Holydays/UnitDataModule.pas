unit UnitDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    con1: TADOConnection;
    dsExecutors: TDataSource;
    qryExecutors: TADOQuery;
    dsServiceExecutors: TDataSource;
    qryServiceExecutors: TADOQuery;
    dsSuppliers: TDataSource;
    qrySuppliers: TADOQuery;
    dsServiceSuppliers: TDataSource;
    qryServiceSuppliers: TADOQuery;
    dsCustomers: TDataSource;
    qryCustomers: TADOQuery;
    dsHolydays: TDataSource;
    qryHolydays: TADOQuery;
    dsOrderExecutors: TDataSource;
    qryOrderExecutors: TADOQuery;
    dsOrderSuppliers: TDataSource;
    qryOrderSuppliers: TADOQuery;
    qrySQL: TADOQuery;
    qryServiceExecutors Ó‰_ÛÒÎÛ„Ë: TAutoIncField;
    qryServiceExecutors Ó‰_ËÒÔÓÎÌËÚÂÎˇ: TIntegerField;
    qryServiceExecutorsÕ‡Á‚‡ÌËÂ: TWideStringField;
    qryServiceExecutors—ÚÓËÏÓÒÚ¸: TIntegerField;
    cmd1: TADOCommand;
    dsAddExe: TDataSource;
    qryAddExe: TADOQuery;
    dsAddSerExe: TDataSource;
    qryAddSerExe: TADOQuery;
    atncfld1: TAutoIncField;
    intgrfld1: TIntegerField;
    wdstrngfld1: TWideStringField;
    intgrfld2: TIntegerField;
    dsAddSup: TDataSource;
    qryAddSup: TADOQuery;
    dsAddSerSup: TDataSource;
    qryAddSerSup: TADOQuery;
    dsAddOrdExe: TDataSource;
    qryAddOrdExe: TADOQuery;
    dsAddOrdSup: TDataSource;
    qryAddOrdSup: TADOQuery;
    qrySUM: TADOQuery;
    dsSUM: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
