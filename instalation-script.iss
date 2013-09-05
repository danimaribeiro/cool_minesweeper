; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Cool Minesweeper"
#define MyAppVersion "1.0"
#define MyAppPublisher "Danimar Ribeiro"
#define MyAppURL "https://github.com/danimaribeiro"
#define MyAppExeName "minesweeper.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C9F166DE-4743-4FB4-A835-E01A5D1475C8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=D:\Projetos\DojoBravi\minesweeper\build
OutputBaseFilename=setup-minesweeper
SetupIconFile=D:\Projetos\DojoBravi\minesweeper\gnome_mines.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\Projetos\DojoBravi\build-minesweeper-Desktop-Release\release\minesweeper.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Projetos\DojoBravi\build-minesweeper-Desktop-Release\release\QtCore4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Projetos\DojoBravi\build-minesweeper-Desktop-Release\release\QtGui4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Projetos\DojoBravi\build-minesweeper-Desktop-Release\release\libgcc_s_dw2-1.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
