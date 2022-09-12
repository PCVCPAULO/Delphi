unit MobilePermissions.UsesPermissions.Interfaces;

interface

type
  IUsesPermissions = interface ['{38339382-EC67-4271-A019-5E85D8B9D699}']
    function Permissions: TArray<String>;
  end;

  IUsesPermissionsStandard = interface(IUsesPermissions) ['{9FE2DC43-200F-43E7-B397-BF4A8AFA1837}']
    function  GetAccessLocationExtra                 : Boolean;
    function  GetAccessNetworkState                  : Boolean;
    function  GetAccessNotificationPolicy            : Boolean;
    function  GetAccessWifiState                     : Boolean;
    function  GetBatteryStats                        : Boolean;
    function  GetBluetoothAdmin                      : Boolean;
    function  GetBluetooth                           : Boolean;
    function  GetBroadcastSticky                     : Boolean;
    function  GetChangeConfiguration                 : Boolean;
    function  GetChangeNetworkState                  : Boolean;
    function  GetChangeWifiMulticastState            : Boolean;
    function  GetChangeWifiState                     : Boolean;
    function  GetDisableKeyguard                     : Boolean;
    function  GetExpandStatusBar                     : Boolean;
    function  GetFlashligth                          : Boolean;
    function  GetForegroundService                   : Boolean;
    function  GetGetPackageSize                      : Boolean;
    function  GetGetTasks                            : Boolean;
    function  GetGlobalSearch                        : Boolean;
    function  GetInstallShortcut                     : Boolean;
    function  GetInstantAppForegroundService         : Boolean;
    function  GetInternet                            : Boolean;
    function  GetKillBackgroundProcesses             : Boolean;
    function  GetManageOwnCalls                      : Boolean;
    function  GetModifyAudioSettings                 : Boolean;
    function  GetNFCTransactionEvent                 : Boolean;
    function  GetNFC                                 : Boolean;
    function  GetPackageUseStats                     : Boolean;
    function  GetReadGServices                       : Boolean;
    function  GetReadSyncSettings                    : Boolean;
    function  GetReadSyncStats                       : Boolean;
    function  GetReceiveBootCompleted                : Boolean;
    function  GetReorderTasks                        : Boolean;
    function  GetRequestCompanion                    : Boolean;
    function  GetRequestCompanionUseDataInBackground : Boolean;
    function  GetRequestDeletePackages               : Boolean;
    function  GetRequestIgnoreBatteryOptimizations   : Boolean;
    function  GetSetAlarm                            : Boolean;
    function  GetSetWallpaperHints                   : Boolean;
    function  GetSetWallpaper                        : Boolean;
    function  GetSubscribedFeedsRead                 : Boolean;
    function  GetTransmitIR                          : Boolean;
    function  GetUseBiometric                        : Boolean;
    function  GetUseFingerprint                      : Boolean;
    function  GetVendingBilling                      : Boolean;
    function  GetVibrate                             : Boolean;
    function  GetWakeLock                            : Boolean;
    function  GetWriteSyncSettings                   : Boolean;
    function  GetWriteUserDictionary                 : Boolean;

    procedure SetAccessLocationExtra                 (const Value: Boolean);
    procedure SetAccessNetworkState                  (const Value: Boolean);
    procedure SetAccessNotificationPolicy            (const Value: Boolean);
    procedure SetAccessWifiState                     (const Value: Boolean);
    procedure SetBatteryStats                        (const Value: Boolean);
    procedure SetBluetoothAdmin                      (const Value: Boolean);
    procedure SetBluetooth                           (const Value: Boolean);
    procedure SetBroadcastSticky                     (const Value: Boolean);
    procedure SetChangeConfiguration                 (const Value: Boolean);
    procedure SetChangeNetworkState                  (const Value: Boolean);
    procedure SetChangeWifiMulticastState            (const Value: Boolean);
    procedure SetChangeWifiState                     (const Value: Boolean);
    procedure SetDisableKeyguard                     (const Value: Boolean);
    procedure SetExpandStatusBar                     (const Value: Boolean);
    procedure SetFlashligth                          (const Value: Boolean);
    procedure SetForegroundService                   (const Value: Boolean);
    procedure SetGetPackageSize                      (const Value: Boolean);
    procedure SetGetTasks                            (const Value: Boolean);
    procedure SetGlobalSearch                        (const Value: Boolean);
    procedure SetInstallShortcut                     (const Value: Boolean);
    procedure SetInstantAppForegroundService         (const Value: Boolean);
    procedure SetInternet                            (const Value: Boolean);
    procedure SetKillBackgroundProcesses             (const Value: Boolean);
    procedure SetManageOwnCalls                      (const Value: Boolean);
    procedure SetModifyAudioSettings                 (const Value: Boolean);
    procedure SetNFCTransactionEvent                 (const Value: Boolean);
    procedure SetNFC                                 (const Value: Boolean);
    procedure SetPackageUseStats                     (const Value: Boolean);
    procedure SetReadGServices                       (const Value: Boolean);
    procedure SetReadSyncSettings                    (const Value: Boolean);
    procedure SetReadSyncStats                       (const Value: Boolean);
    procedure SetReceiveBootCompleted                (const Value: Boolean);
    procedure SetReorderTasks                        (const Value: Boolean);
    procedure SetRequestCompanion                    (const Value: Boolean);
    procedure SetRequestCompanionUseDataInBackground (const Value: Boolean);
    procedure SetRequestDeletePackages               (const Value: Boolean);
    procedure SetRequestIgnoreBatteryOptimizations   (const Value: Boolean);
    procedure SetSetAlarm                            (const Value: Boolean);
    procedure SetSetWallpaperHints                   (const Value: Boolean);
    procedure SetSetWallpaper                        (const Value: Boolean);
    procedure SetSubscribedFeedsRead                 (const Value: Boolean);
    procedure SetTransmitIR                          (const Value: Boolean);
    procedure SetUseBiometric                        (const Value: Boolean);
    procedure SetUseFingerprint                      (const Value: Boolean);
    procedure SetVendingBilling                      (const Value: Boolean);
    procedure SetVibrate                             (const Value: Boolean);
    procedure SetWakeLock                            (const Value: Boolean);
    procedure SetWriteSyncSettings                   (const Value: Boolean);
    procedure SetWriteUserDictionary                 (const Value: Boolean);

    property AccessLocationExtra                 : Boolean read GetAccessLocationExtra                 write SetAccessLocationExtra;
    property AccessNetworkState                  : Boolean read GetAccessNetworkState                  write SetAccessNetworkState;
    property AccessNotificationPolicy            : Boolean read GetAccessNotificationPolicy            write SetAccessNotificationPolicy;
    property AccessWifiState                     : Boolean read GetAccessWifiState                     write SetAccessWifiState;
    property BatteryStats                        : Boolean read GetBatteryStats                        write SetBatteryStats;
    property BluetoothAdmin                      : Boolean read GetBluetoothAdmin                      write SetBluetoothAdmin;
    property Bluetooth                           : Boolean read GetBluetooth                           write SetBluetooth;
    property BroadcastSticky                     : Boolean read GetBroadcastSticky                     write SetBroadcastSticky;
    property ChangeConfiguration                 : Boolean read GetChangeConfiguration                 write SetChangeConfiguration;
    property ChangeNetworkState                  : Boolean read GetChangeNetworkState                  write SetChangeNetworkState;
    property ChangeWifiMulticastState            : Boolean read GetChangeWifiMulticastState            write SetChangeWifiMulticastState;
    property ChangeWifiState                     : Boolean read GetChangeWifiState                     write SetChangeWifiState;
    property DisableKeyguard                     : Boolean read GetDisableKeyguard                     write SetDisableKeyguard;
    property ExpandStatusBar                     : Boolean read GetExpandStatusBar                     write SetExpandStatusBar;
    property Flashligth                          : Boolean read GetFlashligth                          write SetFlashligth;
    property ForegroundService                   : Boolean read GetForegroundService                   write SetForegroundService;
    property GetPackageSize                      : Boolean read GetGetPackageSize                      write SetGetPackageSize;
    property GetTasks                            : Boolean read GetGetTasks                            write SetGetTasks;
    property GlobalSearch                        : Boolean read GetGlobalSearch                        write SetGlobalSearch;
    property InstallShortcut                     : Boolean read GetInstallShortcut                     write SetInstallShortcut;
    property InstantAppForegroundService         : Boolean read GetInstantAppForegroundService         write SetInstantAppForegroundService;
    property Internet                            : Boolean read GetInternet                            write SetInternet;
    property KillBackgroundProcesses             : Boolean read GetKillBackgroundProcesses             write SetKillBackgroundProcesses;
    property ManageOwnCalls                      : Boolean read GetManageOwnCalls                      write SetManageOwnCalls;
    property ModifyAudioSettings                 : Boolean read GetModifyAudioSettings                 write SetModifyAudioSettings;
    property NFCTransactionEvent                 : Boolean read GetNFCTransactionEvent                 write SetNFCTransactionEvent;
    property NFC                                 : Boolean read GetNFC                                 write SetNFC;
    property PackageUseStats                     : Boolean read GetPackageUseStats                     write SetPackageUseStats;
    property ReadGServices                       : Boolean read GetReadGServices                       write SetReadGServices;
    property ReadSyncSettings                    : Boolean read GetReadSyncSettings                    write SetReadSyncSettings;
    property ReadSyncStats                       : Boolean read GetReadSyncStats                       write SetReadSyncStats;
    property ReceiveBootCompleted                : Boolean read GetReceiveBootCompleted                write SetReceiveBootCompleted;
    property ReorderTasks                        : Boolean read GetReorderTasks                        write SetReorderTasks;
    property RequestCompanion                    : Boolean read GetRequestCompanion                    write SetRequestCompanion;
    property RequestCompanionUseDataInBackground : Boolean read GetRequestCompanionUseDataInBackground write SetRequestCompanionUseDataInBackground;
    property RequestDeletePackages               : Boolean read GetRequestDeletePackages               write SetRequestDeletePackages;
    property RequestIgnoreBatteryOptimizations   : Boolean read GetRequestIgnoreBatteryOptimizations   write SetRequestIgnoreBatteryOptimizations;
    property SetAlarm                            : Boolean read GetSetAlarm                            write SetSetAlarm;
    property SetWallpaperHints                   : Boolean read GetSetWallpaperHints                   write SetSetWallpaperHints;
    property SetWallpaper                        : Boolean read GetSetWallpaper                        write SetSetWallpaper;
    property SubscribedFeedsRead                 : Boolean read GetSubscribedFeedsRead                 write SetSubscribedFeedsRead;
    property TransmitIR                          : Boolean read GetTransmitIR                          write SetTransmitIR;
    property UseBiometric                        : Boolean read GetUseBiometric                        write SetUseBiometric;
    property UseFingerprint                      : Boolean read GetUseFingerprint                      write SetUseFingerprint;
    property VendingBilling                      : Boolean read GetVendingBilling                      write SetVendingBilling;
    property Vibrate                             : Boolean read GetVibrate                             write SetVibrate;
    property WakeLock                            : Boolean read GetWakeLock                            write SetWakeLock;
    property WriteSyncSettings                   : Boolean read GetWriteSyncSettings                   write SetWriteSyncSettings;
    property WriteUserDictionary                 : Boolean read GetWriteUserDictionary                 write SetWriteUserDictionary;
  end;

  IUsesPermissionsDangerous = interface(IUsesPermissions) ['{D8DB6460-0744-4CBF-B3A9-79F61562DA18}']
    function  GetAccessCoarseLocation          : Boolean;
    function  GetAccessFineLocation            : Boolean;
    function  GetAccessMockLocation            : Boolean;
    function  GetAddVoiceMail                  : Boolean;
    function  GetAnswerPhonecalls              : Boolean;
    function  GetAuthenticateAccounts          : Boolean;
    function  GetBodySensors                   : Boolean;
    function  GetCallPhone                     : Boolean;
    function  GetCamera                        : Boolean;
    function  GetContinueCallStartedAnotherApp : Boolean;
    function  GetGetAccounts                   : Boolean;
    function  GetManageAccounts                : Boolean;
    function  GetProcessOutgoingCalls          : Boolean;
    function  GetReadCalendar                  : Boolean;
    function  GetReadCallLog         		       : Boolean;
    function  GetReadContacts        		       : Boolean;
    function  GetReadExternalStorage 		       : Boolean;
    function  GetReadHistoryBookmarks		       : Boolean;
    function  GetReadPhoneNumbers    		       : Boolean;
    function  GetReadPhoneState      		       : Boolean;
    function  GetReadProfile         		       : Boolean;
    function  GetReadSMS             		       : Boolean;
    function  GetReadSocialStream    		       : Boolean;
    function  GetReadUserDictionary  		       : Boolean;
    function  GetReceiveMMS          		       : Boolean;
    function  GetReceiveSMS          		       : Boolean;
    function  GetReceiveWAPPush      		       : Boolean;
    function  GetRecordAudio         		       : Boolean;
    function  GetSendSMS             		       : Boolean;
    function  GetSubscribedFeedsWrite		       : Boolean;
    function  GetUninstallShortcut   		       : Boolean;
    function  GetUseCredentials                : Boolean;
    function  GetUseSIP                        : Boolean;
    function  GetWriteCalendar                 : Boolean;
    function  GetWriteCallLog                  : Boolean;
    function  GetWriteContacts                 : Boolean;
    function  GetWriteExternalStorage          : Boolean;
    function  GetWriteHistoyBookmarks          : Boolean;
    function  GetWriteProfile                  : Boolean;
    function  GetWriteSMS                      : Boolean;
    function  GetWriteSocialStream             : Boolean;

    procedure SetAccessCoarseLocation          (const Value: Boolean);
    procedure SetAccessFineLocation            (const Value: Boolean);
    procedure SetAccessMockLocation            (const Value: Boolean);
    procedure SetAddVoiceMail                  (const Value: Boolean);
    procedure SetAnswerPhonecalls              (const Value: Boolean);
    procedure SetAuthenticateAccounts          (const Value: Boolean);
    procedure SetBodySensors                   (const Value: Boolean);
    procedure SetCallPhone                     (const Value: Boolean);
    procedure SetCamera                        (const Value: Boolean);
    procedure SetContinueCallStartedAnotherApp (const Value: Boolean);
    procedure SetGetAccounts                   (const Value: Boolean);
    procedure SetManageAccounts                (const Value: Boolean);
    procedure SetProcessOutgoingCalls          (const Value: Boolean);
    procedure SetReadCalendar                  (const Value: Boolean);
    procedure SetReadCallLog                   (const Value: Boolean);
    procedure SetReadContacts                  (const Value: Boolean);
    procedure SetReadExternalStorage           (const Value: Boolean);
    procedure SetReadHistoryBookmarks          (const Value: Boolean);
    procedure SetReadPhoneNumbers              (const Value: Boolean);
    procedure SetReadPhoneState                (const Value: Boolean);
    procedure SetReadProfile                   (const Value: Boolean);
    procedure SetReadSMS                       (const Value: Boolean);
    procedure SetReadSocialStream              (const Value: Boolean);
    procedure SetReadUserDictionary            (const Value: Boolean);
    procedure SetReceiveMMS                    (const Value: Boolean);
    procedure SetReceiveSMS                    (const Value: Boolean);
    procedure SetReceiveWAPPush                (const Value: Boolean);
    procedure SetRecordAudio                   (const Value: Boolean);
    procedure SetSendSMS                       (const Value: Boolean);
    procedure SetSubscribedFeedsWrite          (const Value: Boolean);
    procedure SetUninstallShortcut	           (const Value: Boolean);
    procedure SetUseCredentials                (const Value: Boolean);
    procedure SetUseSIP                        (const Value: Boolean);
    procedure SetWriteCalendar                 (const Value: Boolean);
    procedure SetWriteCallLog                  (const Value: Boolean);
    procedure SetWriteContacts                 (const Value: Boolean);
    procedure SetWriteExternalStorage          (const Value: Boolean);
    procedure SetWriteHistoyBookmarks          (const Value: Boolean);
    procedure SetWriteProfile                  (const Value: Boolean);
    procedure SetWriteSMS                      (const Value: Boolean);
    procedure SetWriteSocialStream             (const Value: Boolean);

    property AccessCoarseLocation          : Boolean read GetAccessCoarseLocation          write SetAccessCoarseLocation;
    property AccessFineLocation            : Boolean read GetAccessFineLocation            write SetAccessFineLocation;
    property AccessMockLocation            : Boolean read GetAccessMockLocation            write SetAccessMockLocation;
    property AddVoiceMail                  : Boolean read GetAddVoiceMail                  write SetAddVoiceMail;
    property AnswerPhonecalls              : Boolean read GetAnswerPhonecalls              write SetAnswerPhonecalls;
    property AuthenticateAccounts          : Boolean read GetAuthenticateAccounts          write SetAuthenticateAccounts;
    property BodySensors                   : Boolean read GetBodySensors                   write SetBodySensors;
    property CallPhone                     : Boolean read GetCallPhone                     write SetCallPhone;
    property Camera                        : Boolean read GetCamera                        write SetCamera;
    property ContinueCallStartedAnotherApp : Boolean read GetContinueCallStartedAnotherApp write SetContinueCallStartedAnotherApp;
    property GetAccounts                   : Boolean read GetGetAccounts                   write SetGetAccounts;
    property ManageAccounts                : Boolean read GetManageAccounts                write SetManageAccounts;
    property ProcessOutgoingCalls          : Boolean read GetProcessOutgoingCalls          write SetProcessOutgoingCalls;
    property ReadCalendar                  : Boolean read GetReadCalendar                  write SetReadCalendar;
    property ReadCallLog                   : Boolean read GetReadCallLog                   write SetReadCallLog;
    property ReadContacts                  : Boolean read GetReadContacts                  write SetReadContacts;
    property ReadExternalStorage           : Boolean read GetReadExternalStorage           write SetReadExternalStorage;
    property ReadHistoryBookmarks          : Boolean read GetReadHistoryBookmarks          write SetReadHistoryBookmarks;
    property ReadPhoneNumbers              : Boolean read GetReadPhoneNumbers              write SetReadPhoneNumbers;
    property ReadPhoneState                : Boolean read GetReadPhoneState                write SetReadPhoneState;
    property ReadProfile                   : Boolean read GetReadProfile                   write SetReadProfile;
    property ReadSMS                       : Boolean read GetReadSMS                       write SetReadSMS;
    property ReadSocialStream              : Boolean read GetReadSocialStream              write SetReadSocialStream;
    property ReadUserDictionary            : Boolean read GetReadUserDictionary            write SetReadUserDictionary;
    property ReceiveMMS                    : Boolean read GetReceiveMMS                    write SetReceiveMMS;
    property ReceiveSMS                    : Boolean read GetReceiveSMS                    write SetReceiveSMS;
    property ReceiveWAPPush                : Boolean read GetReceiveWAPPush                write SetReceiveWAPPush;
    property RecordAudio                   : Boolean read GetRecordAudio                   write SetRecordAudio;
    property SendSMS                       : Boolean read GetSendSMS                       write SetSendSMS;
    property SubscribedFeedsWrite          : Boolean read GetSubscribedFeedsWrite          write SetSubscribedFeedsWrite;
    property UninstallShortcut             : Boolean read GetUninstallShortcut             write SetUninstallShortcut;
    property UseCredentials                : Boolean read GetUseCredentials                write SetUseCredentials;
    property UseSIP                        : Boolean read GetUseSIP                        write SetUseSIP;
    property WriteCalendar                 : Boolean read GetWriteCalendar                 write SetWriteCalendar;
    property WriteCallLog                  : Boolean read GetWriteCallLog                  write SetWriteCallLog;
    property WriteContacts                 : Boolean read GetWriteContacts                 write SetWriteContacts;
    property WriteExternalStorage          : Boolean read GetWriteExternalStorage          write SetWriteExternalStorage;
    property WriteHistoyBookmarks          : Boolean read GetWriteHistoyBookmarks               write SetWriteHistoyBookmarks;
    property WriteProfile                  : Boolean read GetWriteProfile                       write SetWriteProfile;
    property WriteSMS                      : Boolean read GetWriteSMS                           write SetWriteSMS;
    property WriteSocialStream             : Boolean read GetWriteSocialStream                  write SetWriteSocialStream;
  end;

  IUsesPermissionsSignature = interface(IUsesPermissions) ['{84D92F9E-48D4-49FE-AFC5-BB63B25470C8}']
    function  GetBindAccessibility               : Boolean;
    function  GetBindAutofill                    : Boolean;
    function  GetBindCallScreening               : Boolean;
    function  GetBindCarrierMessaging            : Boolean;
    function  GetBindCarrierService              : Boolean;
    function  GetBindChooserTargetService        : Boolean;
    function  GetBindConditionProviderService    : Boolean;
    function  GetBindDeviceAdmin                 : Boolean;
    function  GetBindDreamService                : Boolean;
    function  GetBindInCallService               : Boolean;
    function  GetBindInputMethod                 : Boolean;
    function  GetBindMIDIDeviceService           : Boolean;
    function  GetBindNFCService                  : Boolean;
    function  GetBindNotificationListenerService : Boolean;
    function  GetBindPrintService                : Boolean;
    function  GetBindQuickSettingsTile           : Boolean;
    function  GetBindRemoteviews                 : Boolean;
    function  GetBindTelecomConnectionService    : Boolean;
    function  GetBindTextService                 : Boolean;
    function  GetBindTVInput                     : Boolean;
    function  GetBindVisualVoicemailService      : Boolean;
    function  GetBindVoiceInteraction            : Boolean;
    function  GetBindVPNService                  : Boolean;
    function  GetBindVRListenerService           : Boolean;
    function  GetBindWallpaper                   : Boolean;
    function  GetClearAppCache                   : Boolean;
    function  GetManageDocuments                 : Boolean;
    function  GetReadVoicemail                   : Boolean;
    function  GetRequestInstallPackages          : Boolean;
    function  GetSystemAlertWindow               : Boolean;
    function  GetWriteSettings                   : Boolean;
    function  GetWriteVoicemail                  : Boolean;

    procedure SetBindAccessibility               (const Value: Boolean);
    procedure SetBindAutofill                    (const Value: Boolean);
    procedure SetBindCallScreening               (const Value: Boolean);
    procedure SetBindCarrierMessaging            (const Value: Boolean);
    procedure SetBindCarrierService              (const Value: Boolean);
    procedure SetBindChooserTargetService        (const Value: Boolean);
    procedure SetBindConditionProviderService    (const Value: Boolean);
    procedure SetBindDeviceAdmin                 (const Value: Boolean);
    procedure SetBindDreamService                (const Value: Boolean);
    procedure SetBindInCallService               (const Value: Boolean);
    procedure SetBindInputMethod                 (const Value: Boolean);
    procedure SetBindMIDIDeviceService           (const Value: Boolean);
    procedure SetBindNFCService                  (const Value: Boolean);
    procedure SetBindNotificationListenerService (const Value: Boolean);
    procedure SetBindPrintService                (const Value: Boolean);
    procedure SetBindQuickSettingsTile           (const Value: Boolean);
    procedure SetBindRemoteviews                 (const Value: Boolean);
    procedure SetBindTelecomConnectionService    (const Value: Boolean);
    procedure SetBindTextService                 (const Value: Boolean);
    procedure SetBindTVInput                     (const Value: Boolean);
    procedure SetBindVisualVoicemailService      (const Value: Boolean);
    procedure SetBindVoiceInteraction            (const Value: Boolean);
    procedure SetBindVPNService                  (const Value: Boolean);
    procedure SetBindVRListenerService           (const Value: Boolean);
    procedure SetBindWallpaper                   (const Value: Boolean);
    procedure SetClearAppCache                   (const Value: Boolean);
    procedure SetManageDocuments                 (const Value: Boolean);
    procedure SetReadVoicemail                   (const Value: Boolean);
    procedure SetRequestInstallPackages          (const Value: Boolean);
    procedure SetSystemAlertWindow               (const Value: Boolean);
    procedure SetWriteSettings                   (const Value: Boolean);
    procedure SetWriteVoicemail                  (const Value: Boolean);

    property BindAccessibility               : Boolean read GetBindAccessibility               write SetBindAccessibility;
    property BindAutofill                    : Boolean read GetBindAutofill                    write SetBindAutofill;
    property BindCallScreening               : Boolean read GetBindCallScreening               write SetBindCallScreening;
    property BindCarrierMessaging            : Boolean read GetBindCarrierMessaging            write SetBindCarrierMessaging;
    property BindCarrierService              : Boolean read GetBindCarrierService              write SetBindCarrierService;
    property BindChooserTargetService        : Boolean read GetBindChooserTargetService        write SetBindChooserTargetService;
    property BindConditionProviderService    : Boolean read GetBindConditionProviderService    write SetBindConditionProviderService;
    property BindDeviceAdmin                 : Boolean read GetBindDeviceAdmin                 write SetBindDeviceAdmin;
    property BindDreamService                : Boolean read GetBindDreamService                write SetBindDreamService;
    property BindInCallService               : Boolean read GetBindInCallService               write SetBindInCallService;
    property BindInputMethod                 : Boolean read GetBindInputMethod                 write SetBindInputMethod;
    property BindMIDIDeviceService           : Boolean read GetBindMIDIDeviceService           write SetBindMIDIDeviceService;
    property BindNFCService                  : Boolean read GetBindNFCService                  write SetBindNFCService;
    property BindNotificationListenerService : Boolean read GetBindNotificationListenerService write SetBindNotificationListenerService;
    property BindPrintService                : Boolean read GetBindPrintService                write SetBindPrintService;
    property BindQuickSettingsTile           : Boolean read GetBindQuickSettingsTile           write SetBindQuickSettingsTile;
    property BindRemoteviews                 : Boolean read GetBindRemoteviews                 write SetBindRemoteviews;
    property BindTelecomConnectionService    : Boolean read GetBindTelecomConnectionService    write SetBindTelecomConnectionService;
    property BindTextService                 : Boolean read GetBindTextService                 write SetBindTextService;
    property BindTVInput                     : Boolean read GetBindTVInput                     write SetBindTVInput;
    property BindVisualVoicemailService      : Boolean read GetBindVisualVoicemailService      write SetBindVisualVoicemailService;
    property BindVoiceInteraction            : Boolean read GetBindVoiceInteraction            write SetBindVoiceInteraction;
    property BindVPNService                  : Boolean read GetBindVPNService                  write SetBindVPNService;
    property BindVRListenerService           : Boolean read GetBindVRListenerService           write SetBindVRListenerService;
    property BindWallpaper                   : Boolean read GetBindWallpaper                   write SetBindWallpaper;
    property ClearAppCache                   : Boolean read GetClearAppCache                   write SetClearAppCache;
    property ManageDocuments                 : Boolean read GetManageDocuments                 write SetManageDocuments;
    property ReadVoicemail                   : Boolean read GetReadVoicemail                   write SetReadVoicemail;
    property RequestInstallPackages          : Boolean read GetRequestInstallPackages          write SetRequestInstallPackages;
    property SystemAlertWindow               : Boolean read GetSystemAlertWindow               write SetSystemAlertWindow;
    property WriteSettings                   : Boolean read GetWriteSettings                   write SetWriteSettings;
    property WriteVoicemail                  : Boolean read GetWriteVoicemail                  write SetWriteVoicemail;
  end;

  IFactoryUsesPermissions = interface ['{F0727190-11CA-45F9-9CE5-03E51A6C867F}']
    function createPermissionsStandard : IUsesPermissionsStandard;
    function createPermissionsDangerous: IUsesPermissionsDangerous;
    function createPermissionsSignature: IUsesPermissionsSignature;
  end;

var
  FPermissionsSignature: IUsesPermissionsSignature;
  FPermissionsStandard : IUsesPermissionsStandard;
  FPermissionsDangerous: IUsesPermissionsDangerous;

implementation

end.

