{$I ACBr.inc}

unit EtiquetaEventosFr;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Gestures, System.Actions, FMX.ActnList,
  ACBrBase, ACBrPosPrinter,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.ListBox, FMX.Layouts, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  FMX.ScrollBox, FMX.Memo, System.ImageList, FMX.ImgList, FMX.VirtualKeyboard,
  FMX.Memo.Types, Data.Bind.Components, Data.Bind.ObjectScope, Data.Bind.GenData,
  Fmx.Bind.GenData, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope, 
  ACBrUtil.FilesIO, FMX.Media, FMX.Objects, FMX.SearchBox;

type
  TEtiquetaEventosForm = class(TForm)
    GestureManager1: TGestureManager;
    tabsPrincipal: TTabControl;
    tabConfig: TTabItem;
    tbconfig: TToolBar;
    lblTituloConfig: TLabel;
    tabLista: TTabItem;
    tbLista: TToolBar;
    lblInscritos: TLabel;
    ACBrPosPrinter1: TACBrPosPrinter;
    lbConfig: TListBox;
    lbImpressoras: TListBoxItem;
    lbModelos: TListBoxItem;
    cbxImpressorasBth: TComboBox;
    btnProcurarBth: TCornerButton;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxGroupHeader3: TListBoxGroupHeader;
    lbLarguraEspacejamento: TListBoxItem;
    GridPanelLayout1: TGridPanelLayout;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    seColunas: TSpinBox;
    seEspLinhas: TSpinBox;
    seLinhasPular: TSpinBox;
    lbBotoes: TListBoxItem;
    GridPanelLayout2: TGridPanelLayout;
    btLerConfig: TCornerButton;
    btSalvarConfig: TCornerButton;
    ListBoxGroupHeader4: TListBoxGroupHeader;
    lbCodBarras: TListBoxItem;
    GridPanelLayout5: TGridPanelLayout;
    Label1: TLabel;
    Label4: TLabel;
    cbHRI: TCheckBox;
    seBarrasLargura: TSpinBox;
    seBarrasAltura: TSpinBox;
    StyleBook1: TStyleBook;
    chbTodasBth: TCheckBox;
    cbxModelo: TComboBox;
    cbControlePorta: TCheckBox;
    cbxPagCodigo: TComboBox;
    cbSuportaBMP: TCheckBox;
    ListBoxGroupHeader5: TListBoxGroupHeader;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    lbiURL: TListBoxItem;
    edtURL: TEdit;
    btBaixarLista: TButton;
    tabImpressao: TTabItem;
    tbImpressao: TToolBar;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    ListBox1: TListBox;
    SpeedButton2: TSpeedButton;
    BindingsList1: TBindingsList;
    ListView1: TListView;
    ListBoxGroupHeader6: TListBoxGroupHeader;
    ListBoxItem1: TListBoxItem;
    edtLinha1: TEdit;
    ListBoxItem2: TListBoxItem;
    edtLinha2: TEdit;
    ListBoxItem3: TListBoxItem;
    edtLinha3: TEdit;
    ListBoxItem4: TListBoxItem;
    edtLinha4: TEdit;
    ListBoxItem5: TListBoxItem;
    FDMemTable1: TFDMemTable;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB1: TBindSourceDB;
    btQRCode: TButton;
    CameraComponent1: TCameraComponent;
    tabCamera: TTabItem;
    SpeedButton3: TSpeedButton;
    imgCamera: TImage;
    ToolBar1: TToolBar;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    lblScanStatus: TLabel;
    GridPanelLayout3: TGridPanelLayout;
    btImprimir: TButton;
    Button2: TButton;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure btnBackClick(Sender: TObject);
    procedure btnProcurarBthClick(Sender: TObject);
    procedure btLerConfigClick(Sender: TObject);
    procedure btSalvarConfigClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure tabsPrincipalChange(Sender: TObject);
    procedure btBaixarListaClick(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure CameraComponent1SampleBufferReady(Sender: TObject;
      const ATime: TMediaTime);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btQRCodeClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FVKService: IFMXVirtualKeyboardService;
    FScanInProgress: Boolean;
    FFrameTake: Integer;
    FScanBitmap: TBitmap;
    FSearchBox: TSearchBox;

    function CalcularNomeArqINI: String;
    function CalcularNomeLista: String;
    
    procedure CarregarModelosInternos;
    procedure LerConfiguracao;
    procedure GravarConfiguracao;
    procedure ConfigurarACBrPosPrinter;
    function PedirPermissoes: Boolean;

    procedure IniciarCamera;
    procedure PararCamera;
    procedure ParseImage;
    procedure LimparEditsImpressao;

    procedure VoltarParaLista;
    procedure IrParaImpressao;
    procedure IrParaCamera;
    procedure IrParaConfig;

    procedure BaixarLista(AURL: String);
    procedure LerArquivoCSV;
    procedure ProcessarTexto(ATexto: String; ALines: TStringList);
  public
    { Public declarations }
  end;

var
  EtiquetaEventosForm: TEtiquetaEventosForm;

implementation

uses
  System.typinfo, System.IniFiles, System.StrUtils, System.Permissions,
  {$IfDef ANDROID}
  Androidapi.Helpers, Androidapi.JNI.Os, Androidapi.JNI.JavaTypes,
  Androidapi.IOUtils, Androidapi.JNI.Widget, FMX.Helpers.Android,
  {$EndIf}
  FMX.DialogService.Async,
  FMX.Platform,
  ACBrUtil.Strings,
  ACBrConsts, 
  httpsend, ssl_openssl,
  ZXing.ReadResult,
  ZXing.ScanManager,
  ZXing.BarcodeFormat;

{$R *.fmx}

procedure Toast(const AMsg: string; ShortDuration: Boolean = True);
var
  ToastLength: Integer;
begin
  {$IfNDef ANDROID}
   TDialogServiceAsync.ShowMessage(AMsg);
  {$Else}
   if ShortDuration then
     ToastLength := TJToast.JavaClass.LENGTH_SHORT
   else
     ToastLength := TJToast.JavaClass.LENGTH_LONG;

   TJToast.JavaClass.makeText(SharedActivityContext, StrToJCharSequence(AMsg), ToastLength).show;
   Application.ProcessMessages;
  {$EndIf}
end;

procedure TEtiquetaEventosForm.FormCreate(Sender: TObject);
var
  p: TACBrPosPaginaCodigo;
  i: Integer;
begin
  TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService, IInterface(FVKService));
  FScanInProgress := False;
  FScanBitmap := Nil;
  FFrameTake := 0;

  tabsPrincipal.TabPosition := TTabPosition.None;
  tabsPrincipal.First;

  CarregarModelosInternos;
  btnProcurarBthClick(Sender);
  if cbxImpressorasBth.Items.Count > 0 then
    cbxImpressorasBth.ItemIndex := 0;

  cbxPagCodigo.Items.Clear ;
  For p := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
    cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(p) ) ) ;

  for i := 0 to ListView1.Controls.Count-1 do
  begin
    if ListView1.Controls[I] is TSearchBox then
    begin
      FSearchBox := TSearchBox(ListView1.Controls[I]);
      Break;
    End;
  end;

  LerConfiguracao;
  LerArquivoCSV;
end;

function TEtiquetaEventosForm.PedirPermissoes: Boolean;
Var
  Ok: Boolean;
begin
  Ok := True;
  {$IfDef ANDROID}
  PermissionsService.RequestPermissions( [JStringToString(TJManifest_permission.JavaClass.BLUETOOTH),
                                          JStringToString(TJManifest_permission.JavaClass.BLUETOOTH_ADMIN),
                                          JStringToString(TJManifest_permission.JavaClass.BLUETOOTH_PRIVILEGED),
                                          JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE),
                                          JStringToString(TJManifest_permission.JavaClass.LOCATION_HARDWARE),
                                          JStringToString(TJManifest_permission.JavaClass.CAMERA)],
      {$IfDef DELPHI28_UP}
      procedure(const APermissions: TClassicStringDynArray; const AGrantResults: TClassicPermissionStatusDynArray)
      {$Else}
      procedure(const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>)
      {$EndIf}
      var
        GR: TPermissionStatus;
      begin
        Ok := (Length(AGrantResults) = 6);

        if Ok then
        begin
          for GR in AGrantResults do
            if (GR <> TPermissionStatus.Granted) then
            begin
              Ok := False;
              Break;
            end;
        end;
      end );

  if not OK then
    Toast('Erro ao obter permiss�es');
  {$EndIf}

  Result := Ok;
end;

procedure TEtiquetaEventosForm.ProcessarTexto(ATexto: String;
  ALines: TStringList);
var
  s, sl: string;
begin
  s := UpperCase(TiraAcentos(ATexto));
  ALines.Clear;
  ALines.Text := QuebraLinhas(s, 16);
  if (ALines.Count > 4) then
  begin
    ALines.Clear;
    ALines.Text := AjustaLinhas(s, 16, 4);
  end;
end;

procedure TEtiquetaEventosForm.SpeedButton3Click(Sender: TObject);
begin
  IrParaConfig;
end;

procedure TEtiquetaEventosForm.tabsPrincipalChange(Sender: TObject);
begin
  ACBrPosPrinter1.Desativar;
end;

procedure TEtiquetaEventosForm.VoltarParaLista;
begin
  PararCamera;
  ACBrPosPrinter1.Desativar;
  tabsPrincipal.SetActiveTabWithTransition(tabLista, TTabTransition.Slide);
end;

procedure TEtiquetaEventosForm.BaixarLista(AURL: String);
var
  NomeArq: string;
  MS: TMemoryStream;
begin
  NomeArq := CalcularNomeLista;
  if FileExists(NomeArq) then
    DeleteFile(NomeArq);

  MS := TMemoryStream.Create;
  try
    if HttpGetBinary(AURL, MS) then
      MS.SaveToFile(NomeArq);
  finally
    MS.Free;
  end;
end;

procedure TEtiquetaEventosForm.btImprimirClick(Sender: TObject);
begin
  if edtLinha1.Text.IsEmpty and
     edtLinha2.Text.IsEmpty and
     edtLinha3.Text.IsEmpty and
     edtLinha4.Text.IsEmpty then
     Exit;

  if not ACBrPosPrinter1.Ativo then
    ConfigurarACBrPosPrinter;

  ACBrPosPrinter1.Ativar;
  ACBrPosPrinter1.Buffer.Clear;
  ACBrPosPrinter1.Buffer.Add('</zera><n><e><a>'+PadCenter(edtLinha1.Text,16));
  ACBrPosPrinter1.Buffer.Add(PadCenter(edtLinha2.Text,16));
  ACBrPosPrinter1.Buffer.Add('<in>'+PadCenter(edtLinha3.Text,16));
  ACBrPosPrinter1.Buffer.Add(PadCenter(edtLinha4.Text,16));
  ACBrPosPrinter1.Buffer.Add('</in>');
  ACBrPosPrinter1.Buffer.Add('');
  ACBrPosPrinter1.Imprimir();
end;

procedure TEtiquetaEventosForm.btLerConfigClick(Sender: TObject);
begin
  LerConfiguracao;
end;

procedure TEtiquetaEventosForm.btnBackClick(Sender: TObject);
begin
  VoltarParaLista;
end;

procedure TEtiquetaEventosForm.btnProcurarBthClick(Sender: TObject);
var
  SL: TStringList;
begin
  if not PedirPermissoes then
    exit;

  cbxImpressorasBth.Items.Clear;
  try
    ACBrPosPrinter1.Device.AcharPortasBlueTooth( cbxImpressorasBth.Items, chbTodasBth.IsChecked );
    cbxImpressorasBth.Items.Add('NULL');
  except
  end;

  ACBrPosPrinter1.Device.AcharPortasSeriais( cbxImpressorasBth.Items );

  SL := TStringList.Create;
  try
    FindFiles('/dev/ttyS?', SL, True, fstFileName, fsdAscending);
    cbxImpressorasBth.Items.AddStrings(SL);
    FindFiles('/dev/ttyUSB?', SL, True, fstFileName, fsdAscending);
    cbxImpressorasBth.Items.AddStrings(SL);
    FindFiles('/dev/ttyACM?', SL, True, fstFileName, fsdAscending);
    cbxImpressorasBth.Items.AddStrings(SL);
  finally
    SL.Free;
  end;
end;

procedure TEtiquetaEventosForm.btQRCodeClick(Sender: TObject);
begin
  IrParaCamera;
  IniciarCamera;
end;

procedure TEtiquetaEventosForm.btSalvarConfigClick(Sender: TObject);
begin
  GravarConfiguracao;
end;

procedure TEtiquetaEventosForm.btBaixarListaClick(Sender: TObject);
begin
  BaixarLista(edtURL.Text);
  LerArquivoCSV;
  VoltarParaLista;
end;

procedure TEtiquetaEventosForm.Button2Click(Sender: TObject);
begin
  LimparEditsImpressao;
end;

function TEtiquetaEventosForm.CalcularNomeArqINI: String;
begin
  Result := ApplicationPath + 'ACBrPosPrinter.ini';
end;

function TEtiquetaEventosForm.CalcularNomeLista: String;
begin
  Result := ApplicationPath+'lista.csv';
end;

procedure TEtiquetaEventosForm.CameraComponent1SampleBufferReady(Sender: TObject;
  const ATime: TMediaTime);
begin
  TThread.Synchronize(TThread.CurrentThread,
  procedure
  begin
    CameraComponent1.SampleBufferToBitmap(imgCamera.Bitmap, True);
    if (fScanInProgress) then
      Exit;

    inc(fFrameTake);
    if (fFrameTake mod 4 <> 0) then
      Exit;

    if Assigned(fScanBitmap) then
      FreeAndNil(fScanBitmap);

    fScanBitmap := TBitmap.Create();
    fScanBitmap.Assign(imgCamera.Bitmap);

    ParseImage();
  end);
end;

procedure TEtiquetaEventosForm.CarregarModelosInternos;
var
  m: TACBrPosPrinterModelo;
begin
  cbxModelo.Items.Clear;
  For m := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
     cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(m) ) );

  lbImpressoras.Enabled := True;
end;

procedure TEtiquetaEventosForm.ConfigurarACBrPosPrinter;
begin
  if not PedirPermissoes then
    exit;

  if Assigned(cbxModelo.Selected) then
    ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo(cbxModelo.ItemIndex)
  else
    ACBrPosPrinter1.Modelo := ppTexto;

  if Assigned(cbxImpressorasBth.Selected) then
    ACBrPosPrinter1.Porta := cbxImpressorasBth.Selected.Text
  else if cbxImpressorasBth.ItemIndex = cbxImpressorasBth.Items.IndexOf('NULL') then
    cbxImpressorasBth.ItemIndex := -1;

  if Assigned(cbxPagCodigo.Selected) then
    ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo(cbxPagCodigo.ItemIndex);

  ACBrPosPrinter1.ColunasFonteNormal := Trunc(seColunas.Value);
  ACBrPosPrinter1.EspacoEntreLinhas := Trunc(seEspLinhas.Value);
  ACBrPosPrinter1.LinhasEntreCupons := Trunc(seLinhasPular.Value);
  ACBrPosPrinter1.ConfigLogo.KeyCode1 := 1;
  ACBrPosPrinter1.ConfigLogo.KeyCode2 := 0;
  ACBrPosPrinter1.ControlePorta := cbControlePorta.IsChecked;
end;

procedure TEtiquetaEventosForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (FVKService <> nil) then
    begin
      if TVirtualKeyboardState.Visible in FVKService.VirtualKeyboardState then
      begin
        FVKService.HideVirtualKeyboard;
        Key := 0;
        Exit
      end;
    end;

    if (tabsPrincipal.ActiveTab = tabConfig) then
    begin
      GravarConfiguracao;
      tabsPrincipal.First;
      Key := 0;
    end;

    if (tabsPrincipal.ActiveTab = tabCamera) then
    begin
      PararCamera;
      tabsPrincipal.First;
      Key := 0;
    end;

    if (tabsPrincipal.ActiveTab = tabImpressao) then
    begin
      tabsPrincipal.First;
      Key := 0;
    end;
  end;
end;

procedure TEtiquetaEventosForm.GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if tabsPrincipal.ActiveTab <> tabsPrincipal.Tabs[tabsPrincipal.TabCount - 1] then
          tabsPrincipal.Next;
        Handled := True;
      end;

    sgiRight:
      begin
        if tabsPrincipal.ActiveTab <> tabsPrincipal.Tabs[0] then
          tabsPrincipal.Previous;
        Handled := True;
      end;
  end;
end;

procedure TEtiquetaEventosForm.GravarConfiguracao;
Var
  ArqINI : String ;
  INI : TIniFile ;
begin
  ArqINI := CalcularNomeArqINI;

  INI := TIniFile.Create(ArqINI);
  try
    INI.WriteString('Lista','URL',edtURL.Text);
    INI.WriteInteger('PosPrinter','Modelo', cbxModelo.ItemIndex);
    INI.WriteInteger('PosPrinter','PaginaDeCodigo',cbxPagCodigo.ItemIndex);
    INI.WriteBool('PosPrinter','BMP',cbSuportaBMP.IsChecked);
    if Assigned(cbxImpressorasBth.Selected) then
      INI.WriteString('PosPrinter','Porta', cbxImpressorasBth.Selected.Text);

    INI.WriteInteger('PosPrinter','Colunas', Trunc(seColunas.Value) );
    INI.WriteInteger('PosPrinter','EspacoEntreLinhas', Trunc(seEspLinhas.Value) );
    INI.WriteInteger('PosPrinter','LinhasPular', Trunc(seLinhasPular.Value) );
    INI.WriteBool('PosPrinter','ControlePorta',cbControlePorta.IsChecked);
    INI.WriteInteger('PosPrinter.Barras','Largura',Trunc(seBarrasLargura.Value));
    INI.WriteInteger('PosPrinter.Barras','Altura',Trunc(seBarrasAltura.Value));
    INI.WriteBool('PosPrinter.Barras','HRI',cbHRI.IsChecked);
  finally
    INI.Free ;
  end ;
end;

procedure TEtiquetaEventosForm.PararCamera;
begin
  CameraComponent1.Active := false;
end;

procedure TEtiquetaEventosForm.ParseImage;
begin
  TThread.CreateAnonymousThread(
    procedure
    var
      ReadResult: TReadResult;
      ScanManager: TScanManager;
    begin
      fScanInProgress := True;
      ScanManager := TScanManager.Create(TBarcodeFormat.Auto, nil);

      try

        try
          ReadResult := ScanManager.Scan(fScanBitmap);
        except
          on E: Exception do
          begin
            TThread.Synchronize(TThread.CurrentThread,
              procedure
              begin
                lblScanStatus.Text := E.Message;
              end);
            exit;
          end;
        end;

        TThread.Synchronize(TThread.CurrentThread,
          procedure
          var
            i: Integer;
          begin
            if (Length(lblScanStatus.Text) > 10) then
            begin
              lblScanStatus.Text := 'Lendo';
            end;

            lblScanStatus.Text := lblScanStatus.Text + '.';
            if (ReadResult <> nil) then
            begin
              lblScanStatus.Text := ReadResult.Text;
              i := StrToIntDef(ReadResult.Text, 0);
              if (i > 0) then
              begin
                VoltarParaLista;
                FSearchBox.Text := IntToStr(i);
              end;
            end;
          end);
      finally
        if ReadResult <> nil then
          FreeAndNil(ReadResult);

        ScanManager.Free;
        fScanInProgress := false;
      end;

    end).Start();

end;

procedure TEtiquetaEventosForm.IniciarCamera;
begin
  if not PedirPermissoes then
    Exit;

  PararCamera;
  CameraComponent1.Quality := FMX.Media.TVideoCaptureQuality.MediumQuality;
  CameraComponent1.Kind := FMX.Media.TCameraKind.BackCamera;
  CameraComponent1.FocusMode := FMX.Media.TFocusMode.ContinuousAutoFocus;
  CameraComponent1.Active := True;
  lblScanStatus.Text := 'Lendo';
end;

procedure TEtiquetaEventosForm.IrParaCamera;
begin
  tabsPrincipal.SetActiveTabWithTransition(tabCamera, TTabTransition.Slide);
end;

procedure TEtiquetaEventosForm.IrParaConfig;
begin
  tabsPrincipal.SetActiveTabWithTransition(tabConfig, TTabTransition.Slide);
end;

procedure TEtiquetaEventosForm.IrParaImpressao;
begin
  tabsPrincipal.SetActiveTabWithTransition(tabImpressao, TTabTransition.Slide);
end;

procedure TEtiquetaEventosForm.LerArquivoCSV;
var
  NomeArq, s, fnome, fempresa: string;
  SL: TStringList;
  i,p1,p2, finscr: Integer;
begin
  NomeArq := CalcularNomeLista;
  
  if not FileExists(NomeArq) then
    Exit;
  
  FDMemTable1.Close;
  FDMemTable1.CreateDataSet;
  FDMemTable1.Open;
  
  BindSourceDB1.DataSource.Enabled := False;
  SL := TStringList.Create;
  try
    SL.LoadFromFile(NomeArq);
    for i := 0 to SL.Count-1 do
    begin     
      s := SL[i]+',';
      p1 := pos(',',s);
      finscr := StrToIntDef(copy(s, 1, p1-1), 0);
      if (finscr > 0) then
      begin
        p2 := PosEx(',', s, p1+1);
        fnome := copy(s, p1+1, p2-p1-1);
          
        p1 := p2;
        p2 := PosEx(',', s, p1+1);
        fempresa := copy(s, p1+1, p2-p1-1);

        FDMemTable1.Append;
        FDMemTable1.FieldByName('fdIncricao').AsInteger := finscr;
        FDMemTable1.FieldByName('fdNome').AsString := fnome;
        FDMemTable1.FieldByName('fdEmpresa').AsString := fempresa;
        FDMemTable1.Post;
      end;
    end;      
  finally
    SL.Free;
    BindSourceDB1.DataSource.Enabled := True;
  end;
  
  Toast(IntToStr(FDMemTable1.RecordCount)+' registros');
end;

procedure TEtiquetaEventosForm.LerConfiguracao;
Var
  ArqINI : String ;
  INI : TIniFile ;
begin
  ArqINI := CalcularNomeArqINI;

  INI := TIniFile.Create(ArqINI);
  try
    edtURL.Text := INI.ReadString('Lista','URL', '');
    cbxModelo.ItemIndex := INI.ReadInteger('PosPrinter','Modelo', -1);
    cbSuportaBMP.IsChecked := INI.ReadBool('Modelo','BMP', True);
    cbxPagCodigo.ItemIndex := Ini.ReadInteger('PosPrinter','PaginaDeCodigo', Integer(ACBrPosPrinter1.PaginaDeCodigo));
    cbxImpressorasBth.ItemIndex := cbxImpressorasBth.Items.IndexOf(INI.ReadString('PosPrinter','Porta',ACBrPosPrinter1.Porta));
    seColunas.Value := INI.ReadInteger('PosPrinter','Colunas', 32);
    seEspLinhas.Value := INI.ReadInteger('PosPrinter','EspacoEntreLinhas', 0);
    seLinhasPular.Value := INI.ReadInteger('PosPrinter','LinhasPular', 5);
    cbControlePorta.IsChecked := INI.ReadBool('PosPrinter','ControlePorta', True);
    seBarrasLargura.Value := INI.ReadInteger('Barras','Largura', ACBrPosPrinter1.ConfigBarras.LarguraLinha);
    seBarrasAltura.Value := INI.ReadInteger('Barras','Altura', ACBrPosPrinter1.ConfigBarras.Altura);
    cbHRI.IsChecked  := INI.ReadBool('Barras','HRI', ACBrPosPrinter1.ConfigBarras.MostrarCodigo);
  finally
    INI.Free ;
  end;
end;

procedure TEtiquetaEventosForm.LimparEditsImpressao;
begin
  edtLinha1.Text := '';
  edtLinha2.Text := '';
  edtLinha3.Text := '';
  edtLinha4.Text := '';
end;

procedure TEtiquetaEventosForm.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
  SL: TStringList;
  s: String;
begin
  if not Assigned(AItem) then
    Exit;

  FSearchBox.Text := '';
  LimparEditsImpressao;
  SL := TStringList.Create;
  try
    s := (AItem.View.FindDrawable('TextNome') as TListItemText).Text;
    ProcessarTexto(s, SL);
    if SL.Count > 0 then
      edtLinha1.Text := SL[0];
    if SL.Count > 1 then
      edtLinha2.Text := SL[1];

    s := (AItem.View.FindDrawable('TextEmpresa') as TListItemText).Text;
    ProcessarTexto(s, SL);
    if SL.Count > 0 then
      edtLinha3.Text := SL[0];
    if SL.Count > 1 then
      edtLinha4.Text := SL[1];

    IrParaImpressao;
  finally
    SL.Free;
  end;
end;

end.
