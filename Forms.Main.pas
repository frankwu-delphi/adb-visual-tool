unit Forms.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DosCommand, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFormMain = class(TForm)
    Panel1: TPanel;
    btnInstallAPK: TButton;
    edtapk: TButtonedEdit;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    btnCLS: TButton;
    Label2: TLabel;
    btnConnect: TButton;
    edtHost: TEdit;
    Label1: TLabel;
    btnGetScreenPixel: TButton;
    btnGetScreenDPI: TButton;
    Label3: TLabel;
    cbbKeyboardValue: TComboBox;
    btnSendKey: TButton;
    Label4: TLabel;
    cbbBroadcast: TComboBox;
    btnBroadcast: TButton;
    btnDisconnect: TButton;
    btnKill: TButton;
    Button3: TButton;
    edtCustom: TEdit;
    btnSendCustom: TButton;
    Label5: TLabel;
    redtLog: TRichEdit;
    btnAbout: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure DosCommand1NewLine(ASender: TObject; const ANewLine: string; AOutputType: TOutputType);
    procedure btnInstallAPKClick(Sender: TObject);
    procedure edtapkRightButtonClick(Sender: TObject);
    procedure btnCLSClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnGetScreenPixelClick(Sender: TObject);
    procedure btnGetScreenDPIClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
    procedure btnKillClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSendKeyClick(Sender: TObject);
    procedure btnBroadcastClick(Sender: TObject);
    procedure btnSendCustomClick(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExecuteADBCommand(const AComand: string; const ALogInfo: string; ALog: Boolean = True);
  public
    { Public declarations }
    FDosCommand: TDosCommand;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}


procedure TFormMain.btnConnectClick(Sender: TObject);
begin
  FDosCommand.CommandLine := 'adb connect ' + edtHost.Text;
  redtLog.Lines.Add('[--LOG--]: 正在连接主机: ' + edtHost.Text);
  FDosCommand.Execute;
end;

procedure TFormMain.btnDisconnectClick(Sender: TObject);
begin
  FDosCommand.CommandLine := 'adb disconnect';
  redtLog.Lines.Add('[--LOG--]: 正在断开连接。');
  FDosCommand.Execute;
end;

procedure TFormMain.btnInstallAPKClick(Sender: TObject);
begin
  if FileExists(edtapk.Text) then
  begin
    FDosCommand.CommandLine := 'adb install "' + edtapk.Text + '"';
    redtLog.Lines.Add('[--LOG--]: 正在安装 apk: ' + FDosCommand.CommandLine);
    FDosCommand.Execute;
  end
  else
  begin
    if OpenDialog1.Execute(Application.Handle) then
    begin
      edtapk.Text := OpenDialog1.FileName;
      FDosCommand.CommandLine := 'adb install "' + edtapk.Text + '"';
      redtLog.Lines.Add('[--LOG--]: 正在安装 apk: ' + FDosCommand.CommandLine);
      FDosCommand.Execute;
    end
    else
      redtLog.Lines.Add('[-ERROR-]: apk文件<' + edtapk.Text + '>不存在');
  end;
end;

procedure TFormMain.btnKillClick(Sender: TObject);
begin
  ExecuteADBCommand('adb kill-server', '正在结束服务。');
end;

procedure TFormMain.btnSendCustomClick(Sender: TObject);
begin
  if not Trim(edtCustom.Text).Equals('') then
    ExecuteADBCommand(edtCustom.Text, '执行自定义命令')
  else
    redtLog.Lines.Add('[-ERROR-]: 自定义命令不能为空');
end;

procedure TFormMain.btnSendKeyClick(Sender: TObject);
var
  AKey: Integer;
begin
  case cbbKeyboardValue.ItemIndex of
    0: // adb shell input keyevent 26  #电源键
      AKey := 26;
    1: // adb shell input keyevent 82  #菜单键
      AKey := 92;
    2: // adb shell input keyevent 3  #HOME 键
      AKey := 3;
    3: // adb shell input keyevent 4 #返回键
      AKey := 4;
    4: // adb shell input keyevent 24 #增加音量
      AKey := 24;
    5: // adb shell input keyevent 25 #降低音量
      AKey := 25;
    6: // adb shell input keyevent 164 #静音
      AKey := 164;
    7: // adb shell input keyevent 85  #播放/暂停
      AKey := 85;
    8: // adb shell input keyevent 86 #停止播放
      AKey := 86;
    9: // adb shell input keyevent 87 #播放下一首
      AKey := 87;
    10: // adb shell input keyevent 88 #播放上一首
      AKey := 88;
    11: // adb shell input keyevent 126 #恢复播放
      AKey := 126;
    12: // adb shell input keyevent 127 #暂停播放
      AKey := 127;
    13: // adb shell input keyevent 224 #点亮屏幕
      AKey := 224;
    14: // adb shell input keyevent 223 #熄灭屏幕
      AKey := 223;
  end;
  var ACommand: string := Format('adb shell input keyevent %d', [AKey]);
  ExecuteADBCommand(ACommand, '发送键盘值:' + cbbKeyboardValue.Text);
end;

procedure TFormMain.Button3Click(Sender: TObject);
begin
  ExecuteADBCommand('adb devices', '正在获取设备信息。');
end;

procedure TFormMain.btnGetScreenDPIClick(Sender: TObject);
begin
  ExecuteADBCommand('adb shell wm density', '正在获取屏幕DPI');
end;

procedure TFormMain.btnGetScreenPixelClick(Sender: TObject);
begin
  ExecuteADBCommand('adb shell wm size', '正在获取屏幕分辨率');
end;

procedure TFormMain.btnAboutClick(Sender: TObject);
begin
  Application.MessageBox('ADB 可视化工具。' + #13#10 + '一个可以减少手打命令行输入的小工具' + #13#10
    + #13#10 + 'Frank.Wu 2023.01.09' + #13#10 + '广东.台山', '关于', MB_OK +
    MB_ICONINFORMATION);
end;

procedure TFormMain.btnBroadcastClick(Sender: TObject);
var
  ABroadcast: string;
begin
  case cbbBroadcast.ItemIndex of
    0:
      ABroadcast := 'adb shell am broadcast -a android.intent.action.BOOT_COMPLETED';
  end;
  ExecuteADBCommand(ABroadcast, '发送广播消息:' + cbbBroadcast.Text)
end;

procedure TFormMain.btnCLSClick(Sender: TObject);
begin
  redtLog.Clear;
end;

procedure TFormMain.edtapkRightButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute(Application.Handle) then
  begin
    edtapk.Text := OpenDialog1.FileName
  end;
end;

procedure TFormMain.ExecuteADBCommand(const AComand: string; const ALogInfo: string; ALog: Boolean = True);
begin
  FDosCommand.CommandLine := AComand;
  if ALog then
    redtLog.Lines.Add('[--LOG--]:' + ALogInfo + ': ' + AComand);
  FDosCommand.Execute;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FDosCommand := TDosCommand.Create(Self);
  with FDosCommand do
  begin
    InputToOutput := False;
    MaxTimeAfterBeginning := 0;
    MaxTimeAfterLastOutput := 0;
    OnNewLine := DosCommand1NewLine;
  end
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FDosCommand.Stop;
  FDosCommand.Free;
end;

procedure TFormMain.DosCommand1NewLine(ASender: TObject; const ANewLine: string; AOutputType: TOutputType);
begin
  if AOutputType = otEntireLine then
  begin
    redtLog.Lines.Add('[SYSTEM]: ' + ANewLine);
  end;
end;

end.
