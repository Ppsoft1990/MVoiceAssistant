.class public Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;
.source "CallSmsSubSettingFragment.java"

# interfaces
.implements Larn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CALL_SETTING:I = 0x0

.field public static final ACTION_SMS_SETTING:I = 0x1

.field private static final CALL_ITEM_DELAY_TIME:I = 0x1f4

.field private static final MSG_CALL_BROADCAST_CLOSE:I = 0x5

.field private static final MSG_CALL_BROADCAST_OPEN:I = 0x4

.field private static final MSG_CALL_POPWIN_CLOSE:I = 0x3

.field private static final MSG_CALL_POPWIN_OPEN:I = 0x2

.field private static final MSG_DISMISS_DIALOG:I = 0x1

.field private static final MSG_M_P_CALL_DRAWOVERLAYS:I = 0xa

.field private static final MSG_M_P_SMS_DRAWOVERLAYS:I = 0xb

.field private static final MSG_REFREST_FROM_SETTING:I = 0x0

.field private static final MSG_SMS_BROADCAST_CLOSE:I = 0x9

.field private static final MSG_SMS_BROADCAST_OPEN:I = 0x8

.field private static final MSG_SMS_POPWIN_CLOSE:I = 0x7

.field private static final MSG_SMS_POPWIN_OPEN:I = 0x6

.field private static final MSG_VOICE_ITEM_OPEN:I = 0xc

.field public static final PARAM_ACTION:Ljava/lang/String; = "action"

.field public static final REQUEST_CODE_SET_CELEBRITY_RECORD:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CallSmsSubSettingFragment"

.field private static mCheckCallDrawOverlaysPm:Z

.field private static mCheckSmsDrawOverlaysPm:Z


# instance fields
.field private final GREY_INCOMING_CALL:I

.field private final GREY_INCOMING_SMS:I

.field private final SMS_SETTING_POSITION:I

.field private final WHITE_INCOMING_CALL:I

.field private final WHITE_INCOMING_SMS:I

.field private isSettingsDestroy:Z

.field private lastClickTime:J

.field private mBlackUserToast:Landroid/widget/Toast;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBuilder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field private mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

.field private mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mCallNotifiyPattern:I

.field private mCallNotifiyPatternName:Ljava/lang/String;

.field private mCallNotifyTimes:I

.field private mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mCallPattern:[Ljava/lang/String;

.field private mCallTime:[Ljava/lang/String;

.field private mEntry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

.field private mHandler:Landroid/os/Handler;

.field private mITtsListener:Lju;

.field mIsNeedSpecificBroadcastSettings:Z

.field mIsShowDoubleSimSettings:Z

.field private mPluginInstallControl:Lari;

.field private mRefreshFromSetting:Z

.field private mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mSimModeTypes:[Ljava/lang/String;

.field private mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

.field private mSmsPattern:I

.field private mSmsPatternStrings:[Ljava/lang/String;

.field private mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mSmsTimes:I

.field private mSmsTimesStrings:[Ljava/lang/String;

.field private mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

.field private mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

.field private mSpeechServiceUtil:Lpp;

.field private mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    sput-boolean v0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckCallDrawOverlaysPm:Z

    .line 207
    sput-boolean v0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckSmsDrawOverlaysPm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;-><init>()V

    .line 99
    const/16 v0, 0xa

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->SMS_SETTING_POSITION:I

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->GREY_INCOMING_SMS:I

    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->WHITE_INCOMING_SMS:I

    .line 110
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->GREY_INCOMING_CALL:I

    .line 112
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->WHITE_INCOMING_CALL:I

    .line 119
    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsShowDoubleSimSettings:Z

    .line 131
    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsNeedSpecificBroadcastSettings:Z

    .line 151
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPatternName:Ljava/lang/String;

    .line 153
    iput v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPattern:I

    .line 155
    iput v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifyTimes:I

    .line 179
    iput v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPattern:I

    .line 181
    iput v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsTimes:I

    .line 212
    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mRefreshFromSetting:Z

    .line 226
    iput-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->isSettingsDestroy:Z

    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->lastClickTime:J

    .line 233
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2523
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$14;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$14;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mITtsListener:Lju;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->startStarSetActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkOfflineTtsPm(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mEntry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lari;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mPluginInstallControl:Lari;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->isSettingsDestroy:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->freshData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshCallSettingsEnableState()V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setOpenIncomingCall()V

    return-void
.end method

.method static synthetic access$2300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setCallSubSettingEnable(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshBroadcastRoleState()V

    return-void
.end method

.method static synthetic access$2900(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshSmsSettingsEnableState()V

    return-void
.end method

.method static synthetic access$3400(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setOpenSmsPopWin()V

    return-void
.end method

.method static synthetic access$3700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setSmsSubSettingEnable(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 89
    sput-boolean p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckCallDrawOverlaysPm:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkCallDrawOverLayPm()V

    return-void
.end method

.method static synthetic access$4700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkSmsDrawOverLayPm()V

    return-void
.end method

.method static synthetic access$4800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setOpenIncomingCallBroadcast()V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 89
    sput-boolean p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckSmsDrawOverlaysPm:Z

    return p0
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->showDownloadDialog(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    return-void
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    return-object v0
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;
    .param p1, "x1"    # Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->clickPreferenceCheckBox(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lpp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    return-object v0
.end method

.method private addChildren(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x8

    .line 445
    const-wide v4, 0x404b800000000000L    # 55.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .line 448
    .local v1, "height":I
    iget-boolean v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsShowDoubleSimSettings:Z

    if-eqz v3, :cond_0

    .line 449
    invoke-direct {p0, p1, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addEmptyView(Landroid/content/Context;I)V

    .line 450
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 451
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 452
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 453
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 456
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addEmptyView(Landroid/content/Context;I)V

    .line 459
    iget-boolean v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsNeedSpecificBroadcastSettings:Z

    if-eqz v3, :cond_1

    .line 460
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 461
    invoke-direct {p0, p1, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addEmptyView(Landroid/content/Context;I)V

    .line 462
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setMinHeight(I)V

    .line 463
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setBottomLine(Landroid/content/Context;)V

    .line 466
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 467
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setMinHeight(I)V

    .line 468
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setBottomLine(Landroid/content/Context;)V

    .line 469
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    new-instance v4, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$2;

    invoke-direct {v4, p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setIconClick(Landroid/view/View$OnClickListener;)V

    .line 480
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    .line 482
    .local v0, "callCategoryView":Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;
    const v3, 0x7f0c017b

    .line 483
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setText(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 486
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 487
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 488
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 489
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 490
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 491
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setMinHeight(I)V

    .line 492
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 493
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 494
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 495
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 496
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 499
    invoke-direct {p0, p1, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addEmptyView(Landroid/content/Context;I)V

    .line 501
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 502
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 503
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 507
    new-instance v2, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    .line 509
    .local v2, "smsCategoryView":Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;
    const v3, 0x7f0c017c

    .line 510
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setText(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 513
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 514
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 515
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 516
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 517
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 518
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 519
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 520
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 521
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 522
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 523
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 524
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setMinHeight(I)V

    .line 525
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 526
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 527
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 530
    invoke-direct {p0, p1, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addEmptyView(Landroid/content/Context;I)V

    .line 532
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 533
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setMinHeight(I)V

    .line 534
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setBottomLine(Landroid/content/Context;)V

    .line 536
    invoke-direct {p0, p1, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addEmptyView(Landroid/content/Context;I)V

    .line 537
    return-void
.end method

.method private addEmptyView(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "height"    # I

    .prologue
    .line 540
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, "emptyView":Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;
    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setHeight(Landroid/content/Context;F)V

    .line 543
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 544
    return-void
.end method

.method private callBroadcastSettingClick()V
    .locals 3

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1484
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1496
    :goto_0
    return-void

    .line 1487
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1489
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1494
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkCallDialogPm()V

    goto :goto_0
.end method

.method private callBroadcastSoundSettingClick()V
    .locals 3

    .prologue
    .line 1798
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1799
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1805
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1807
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1811
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    invoke-virtual {v1}, Lpp;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1814
    const-string/jumbo v1, "\u5f00\u542f\u6765\u7535\u64ad\u62a5\u9700\u8981\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\u3002"

    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->call_response_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkOfflineTtsPm(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_0

    .line 1816
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkCallDialogPm()V
    .locals 3

    .prologue
    .line 1543
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 1544
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1580
    :goto_0
    return-void

    .line 1547
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$6;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$6;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    goto :goto_0
.end method

.method private checkCallDrawOverLayPm()V
    .locals 3

    .prologue
    .line 1501
    :try_start_0
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$4;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$4;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    invoke-virtual {v1, v2}, Lpb;->a(Lpb$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    :goto_0
    return-void

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkOfflineTtsPm(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 3
    .param p1, "tipText"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 1582
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 1583
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->showDownloadDialog(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 1613
    :goto_0
    return-void

    .line 1586
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1587
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    goto :goto_0
.end method

.method private checkSmsDialogPm()V
    .locals 3

    .prologue
    .line 1616
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 1617
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1653
    :goto_0
    return-void

    .line 1620
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1622
    const-string/jumbo v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$8;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$8;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    goto :goto_0
.end method

.method private checkSmsDrawOverLayPm()V
    .locals 3

    .prologue
    .line 1522
    :try_start_0
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$5;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$5;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    invoke-virtual {v1, v2}, Lpb;->a(Lpb$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    :goto_0
    return-void

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkSmsSpeechModePm()V
    .locals 3

    .prologue
    .line 1698
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1699
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SMS_SPEECH_MODE"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->clickPreferenceCheckBox(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V

    .line 1745
    :goto_0
    return-void

    .line 1702
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_2

    .line 1703
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    invoke-virtual {v1}, Lpp;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1704
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1705
    const-string/jumbo v1, "\u65e0\u7f51\u7edc\u65f6\u4f7f\u7528\u8bed\u97f3\u53d1\u9001\u77ed\u4fe1\u529f\u80fd\u9700\u8981\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\u3002"

    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->sms_text_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkOfflineTtsPm(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_0

    .line 1707
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SMS_SPEECH_MODE"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->clickPreferenceCheckBox(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V

    goto :goto_0

    .line 1711
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1713
    const-string/jumbo v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1714
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1715
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    goto :goto_0
.end method

.method private checkWifiAutoDownLoadPm()V
    .locals 3

    .prologue
    .line 1657
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1658
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_PHONE_DATABASE_UPDATE"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->clickPreferenceCheckBox(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V

    .line 1695
    :goto_0
    return-void

    .line 1662
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 1663
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_PHONE_DATABASE_UPDATE"

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->clickPreferenceCheckBox(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V

    goto :goto_0

    .line 1667
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1668
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1669
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$9;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$9;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    goto :goto_0
.end method

.method private clickPreferenceCheckBox(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V
    .locals 4
    .param p1, "xPreferenceCheckBox"    # Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1883
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1887
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 1886
    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 1890
    const-string/jumbo v1, ""

    .line 1891
    .local v1, "strOperation":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1892
    const-string/jumbo v1, "open"

    .line 1896
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1897
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_operation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne p1, v2, :cond_4

    .line 1899
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v3, "FT90129"

    invoke-virtual {v2, v3, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1887
    .end local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "strOperation":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1894
    .restart local v1    # "strOperation":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "close"

    goto :goto_2

    .line 1900
    .restart local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne p1, v2, :cond_5

    .line 1901
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v3, "FT90121"

    invoke-virtual {v2, v3, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1902
    :cond_5
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne p1, v2, :cond_0

    .line 1903
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v3, "FT90128"

    invoke-virtual {v2, v3, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private clickPrivateSmsBroadcastCheckBox()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1912
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-eqz v2, :cond_0

    .line 1916
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v1

    .line 1917
    .local v1, "isChecked":Z
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-nez v1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 1918
    if-nez v1, :cond_3

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setPrivateSmsBroadcastState(Ljava/lang/Boolean;)V

    .line 1921
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1922
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 1923
    const-string/jumbo v2, "d_operation"

    const-string/jumbo v3, "close"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    :goto_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v2

    const-string/jumbo v3, "FT90124"

    invoke-virtual {v2, v3, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .end local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move v2, v4

    .line 1917
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1918
    goto :goto_2

    .line 1925
    .restart local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v2, "d_operation"

    const-string/jumbo v3, "open"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private createChildren(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsShowDoubleSimSettings:Z

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 409
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 412
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    .line 415
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsNeedSpecificBroadcastSettings:Z

    if-eqz v0, :cond_1

    .line 416
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    .line 419
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 420
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 421
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    .line 423
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 424
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 425
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 428
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 429
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 430
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 432
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 433
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 434
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 435
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 436
    new-instance v0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 437
    return-void
.end method

.method private createListener(Landroid/widget/ImageView;)Lbdd;
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 2142
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$13;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$13;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private freshData(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 604
    if-nez p1, :cond_0

    .line 678
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsShowDoubleSimSettings:Z

    if-eqz v1, :cond_2

    .line 609
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v2, 0x7f0c005a

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 610
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getSimModeSettingSummary()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "simSummary":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 612
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(Ljava/lang/String;)V

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeTypes:[Ljava/lang/String;

    .line 617
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v2, 0x7f0c0059

    .line 618
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 619
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v2, 0x7f0c0058

    .line 620
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setSummary(I)V

    .line 621
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 625
    .end local v0    # "simSummary":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    const v2, 0x7f0c005e

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setTitle(I)V

    .line 627
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setWidgetVisibility(I)V

    .line 628
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    const-string/jumbo v2, "image.ic_broadcast_default_icon"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setWidgetDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 629
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v1

    invoke-virtual {v1}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshStarBroadCastView(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 649
    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsNeedSpecificBroadcastSettings:Z

    if-eqz v1, :cond_3

    .line 650
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    const v2, 0x7f0c005c

    .line 651
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setTitle(I)V

    .line 652
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    const v2, 0x7f0c005b

    .line 653
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setSummary(I)V

    .line 654
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setIconVisibility(I)V

    .line 659
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->isBlackList()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 661
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 662
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v1, v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 663
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->loadGrayStateCallSmsData()V

    .line 673
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshBroadcastRoleState()V

    .line 674
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "freshData \u6765\u7535\u5f39\u7a97\u662f\u5426\u5f00\u542f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 675
    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "freshData \u6765\u7535\u64ad\u62a5\u662f\u5426\u5f00\u542f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 677
    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 666
    :cond_4
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->loadCallSettingData(Landroid/content/Context;)V

    .line 669
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->loadSmsSettingData(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private getNotifyCallPatternSummary()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1422
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallPattern:[Ljava/lang/String;

    .line 1424
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN"

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPattern:I

    .line 1427
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPattern:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPattern:I

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallPattern:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1429
    :cond_0
    iput v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPattern:I

    .line 1431
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PATTERN_NAME"

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPatternName:Ljava/lang/String;

    .line 1433
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPatternName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPatternName:Ljava/lang/String;

    .line 1434
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPatternName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallPattern:[Ljava/lang/String;

    iget v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPattern:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1438
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallPattern:[Ljava/lang/String;

    iget v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPattern:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getNotifyCallTimesSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    .line 1448
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallTime:[Ljava/lang/String;

    .line 1449
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_TIMES"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifyTimes:I

    .line 1451
    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifyTimes:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifyTimes:I

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallTime:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1452
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifyTimes:I

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallTime:[Ljava/lang/String;

    iget v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifyTimes:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getSimModeSettingSummary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1253
    .local v1, "summarys":[Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SIM_CHOICE"

    invoke-virtual {v2, v3}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    .line 1255
    .local v0, "simType":I
    aget-object v2, v1, v0

    return-object v2
.end method

.method private getSmsPatternSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1345
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_SMS_PATTERN"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPattern:I

    .line 1348
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPatternStrings:[Ljava/lang/String;

    .line 1350
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPatternStrings:[Ljava/lang/String;

    iget v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPattern:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getSmsTimesSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1359
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_SMS_TIMES"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsTimes:I

    .line 1361
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsTimesStrings:[Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsTimesStrings:[Ljava/lang/String;

    iget v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsTimes:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private isBlackList()Z
    .locals 1

    .prologue
    .line 796
    invoke-static {}, Lagm;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCallPreferenceCanClick()Z
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 1870
    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1871
    :cond_0
    const/4 v0, 0x0

    .line 1873
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 3

    .prologue
    .line 2479
    const/4 v0, 0x0

    .line 2481
    .local v0, "isPlaying":Z
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v1

    invoke-virtual {v1}, Laxa;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2482
    const/4 v0, 0x1

    .line 2484
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mITtsListener:Lju;

    invoke-virtual {v1, v2}, Lpp;->d(Lju;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2485
    const/4 v0, 0x1

    .line 2487
    :cond_1
    return v0
.end method

.method private loadCallSettingData(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->loadLocalCallCheckedSetting()V

    .line 786
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setDefaultCallMode()V

    .line 788
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setCallItemTitleAndDes()V

    .line 790
    return-void
.end method

.method private loadGrayStateCallSmsData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v1, "loadGrayStateCallSmsData "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 745
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 747
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 748
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 749
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setCallSubSettingEnable(Z)V

    .line 752
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 753
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 754
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 755
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 757
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 758
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 759
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 760
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setSmsSubSettingEnable(Z)V

    .line 761
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 763
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setCallItemTitleAndDes()V

    .line 764
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setSmsItemTitleAndDes()V

    .line 765
    return-void
.end method

.method private loadLocalCallCheckedSetting()V
    .locals 4

    .prologue
    .line 838
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setEnabled(Z)V

    .line 839
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 842
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    .line 844
    .local v0, "isCallBroadcastOpened":Z
    if-nez v0, :cond_0

    .line 846
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 861
    :goto_0
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadLocalCallCheckedSetting \u6765\u7535\u5f39\u7a97\u662f\u5426\u5f00\u542f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 862
    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 861
    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadLocalCallCheckedSetting \u6765\u7535\u64ad\u62a5\u662f\u5426\u5f00\u542f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 864
    invoke-virtual {v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 863
    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    invoke-virtual {v1}, Lpp;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 850
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    const-string/jumbo v2, "\u79bb\u7ebf\u5f15\u64ce\u5df2\u5b89\u88c5"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {p0, v1, v2, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    goto :goto_0

    .line 855
    :cond_1
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    const-string/jumbo v2, "\u79bb\u7ebf\u5f15\u64ce\u672a\u5b89\u88c5"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private loadLocalSmsCheckedSetting()V
    .locals 4

    .prologue
    .line 807
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setEnabled(Z)V

    .line 808
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 811
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    .line 813
    .local v0, "isSmsBroadcastOpened":Z
    if-nez v0, :cond_0

    .line 814
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 827
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->getPrivateSmsBroadcastState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 829
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SMS_VIBRATE"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 831
    return-void

    .line 816
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    invoke-virtual {v1}, Lpp;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    const-string/jumbo v2, "\u79bb\u7ebf\u5f15\u64ce\u5df2\u5b89\u88c5"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {p0, v1, v2, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    goto :goto_0

    .line 821
    :cond_1
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    const-string/jumbo v2, "\u79bb\u7ebf\u5f15\u64ce\u672a\u5b89\u88c5"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private loadSmsSettingData(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->loadLocalSmsCheckedSetting()V

    .line 774
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setDefaultNotifyState()V

    .line 776
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setSmsItemTitleAndDes()V

    .line 777
    return-void
.end method

.method private refreshBroadcastRoleState()V
    .locals 1

    .prologue
    .line 1210
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setStarRecordStateShow(Z)V

    .line 1211
    return-void
.end method

.method private refreshCallSettingsEnableState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1381
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v1, "refreshCallSettingsEnableState---------"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "CALL_NOTIFY"

    invoke-static {v0, v1, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1388
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1389
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setCallSubSettingEnable(Z)V

    .line 1412
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_PHONE_DATABASE_UPDATE"

    .line 1413
    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    .line 1412
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 1414
    return-void

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1392
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setCallSubSettingEnable(Z)V

    .line 1395
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.CALL_NOTIFY_ACTION"

    .line 1396
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 1398
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 1400
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "CALL_NOTIFY"

    invoke-static {v0, v1, v3}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1403
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshBroadcastRoleState()V

    goto :goto_0

    .line 1406
    :cond_1
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setCallSubSettingEnable(Z)V

    .line 1407
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "CALL_NOTIFY"

    invoke-static {v0, v1, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private refreshSmsSettingsEnableState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1299
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v1, "refreshSmsSettingsEnableState---------"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SMS_NOTIFY"

    invoke-static {v0, v1, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1305
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1306
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1307
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setSmsSubSettingEnable(Z)V

    .line 1308
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1335
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SMS_SPEECH_MODE"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 1337
    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1312
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1314
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1316
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setSmsSubSettingEnable(Z)V

    .line 1318
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.SMS_NOTIFY_ACTION"

    .line 1319
    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 1320
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 1322
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SMS_NOTIFY"

    invoke-static {v0, v1, v3}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1325
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshBroadcastRoleState()V

    goto :goto_0

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1328
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setSmsSubSettingEnable(Z)V

    .line 1329
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SMS_NOTIFY"

    invoke-static {v0, v1, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setCallItemTitleAndDes()V
    .locals 4

    .prologue
    .line 871
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v3, 0x7f0c0047

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 872
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v3, 0x7f0c0046

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setSummary(I)V

    .line 874
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v3, 0x7f0c004b

    .line 875
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 876
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v3, 0x7f0c004a

    .line 877
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setSummary(I)V

    .line 879
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    const v3, 0x7f0c0045

    .line 880
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setTitle(I)V

    .line 881
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getNotifyCallPatternSummary()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "tCallPattern":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 883
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setSummary(Ljava/lang/String;)V

    .line 885
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setRedDotVisibility(I)V

    .line 887
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c004c

    .line 888
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 889
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getNotifyCallTimesSummary()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "tCallTimes":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 891
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(Ljava/lang/String;)V

    .line 894
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0049

    .line 895
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 896
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v3, 0x7f0c0048

    .line 897
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(I)V

    .line 899
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v3, 0x7f0c0044

    .line 900
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 901
    return-void
.end method

.method private setCallSubSettingEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1464
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1465
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1466
    return-void
.end method

.method private setDefaultCallMode()V
    .locals 2

    .prologue
    .line 1370
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v1, "setDefaultCallMode---------"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1374
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshCallSettingsEnableState()V

    .line 1375
    return-void
.end method

.method private setDefaultNotifyState()V
    .locals 2

    .prologue
    .line 1291
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v1, "setDefaultNotifyState---------"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1295
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshSmsSettingsEnableState()V

    .line 1296
    return-void
.end method

.method private setOpenIncomingCall()V
    .locals 4

    .prologue
    .line 1827
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL"

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 1829
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshCallSettingsEnableState()V

    .line 1832
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1833
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT90116"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1835
    return-void
.end method

.method private setOpenIncomingCallBroadcast()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1841
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 1842
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_CALL_SECOND"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 1843
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshCallSettingsEnableState()V

    .line 1844
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshBroadcastRoleState()V

    .line 1846
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.CALL_NOTIFY_ACTION"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 1847
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CLEAR_CALL_SMS_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 1848
    return-void
.end method

.method private setOpenSmsPopWin()V
    .locals 4

    .prologue
    .line 1852
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V

    .line 1854
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhp;->c(Landroid/content/Context;)V

    .line 1856
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshSmsSettingsEnableState()V

    .line 1859
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1860
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT90122"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1862
    return-void
.end method

.method private setSimModeType()V
    .locals 6

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1263
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1264
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1265
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c005a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1266
    const/4 v2, 0x0

    .line 1267
    .local v2, "defaultIndex":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_SIM_CHOICE"

    invoke-virtual {v4, v5}, Lil;->d(Ljava/lang/String;)I

    move-result v3

    .line 1269
    .local v3, "simType":I
    move v2, v3

    .line 1270
    const v4, 0x7f090021

    new-instance v5, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$3;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$3;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    invoke-virtual {v1, v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1280
    const v4, 0x7f0c005f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1281
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1283
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "defaultIndex":I
    .end local v3    # "simType":I
    :cond_0
    return-void
.end method

.method private setSmsItemTitleAndDes()V
    .locals 4

    .prologue
    .line 907
    const v1, 0x7f0c021e

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, "smsReceiveSummary":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v2, 0x7f0c021f

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 909
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setSummary(Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v2, 0x7f0c0227

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 912
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v2, 0x7f0c0226

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setSummary(I)V

    .line 914
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v2, 0x7f0c0223

    .line 915
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 916
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v2, 0x7f0c0222

    .line 917
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setSummary(I)V

    .line 919
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v2, 0x7f0c0225

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 920
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v2, 0x7f0c0224

    .line 921
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(I)V

    .line 923
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v2, 0x7f0c021d

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 924
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getSmsPatternSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const v2, 0x7f0c0229

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setTitle(I)V

    .line 927
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getSmsTimesSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setSummary(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v2, 0x7f0c022a

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 932
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const v2, 0x7f0c0228

    .line 933
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setTitle(I)V

    .line 934
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SMS_SPEECH_MODE"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 936
    return-void
.end method

.method private setSmsSubSettingEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1475
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1476
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1477
    return-void
.end method

.method private setStarRecordStateShow(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1214
    if-eqz p1, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setSuperScriptVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setSuperScriptVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1219
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1221
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1222
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1223
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setSuperScriptVisibility(I)V

    .line 1228
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setSuperScriptVisibility(I)V

    .line 1230
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1232
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1235
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1237
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    .line 1238
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V

    goto :goto_0
.end method

.method private showDownloadDialog(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2071
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2072
    new-instance v1, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {v1, v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2073
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mEntry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .line 2074
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    const-string/jumbo v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2075
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2076
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$11;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$11;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2083
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    const-string/jumbo v2, "\u5b89\u88c5"

    new-instance v3, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$12;

    invoke-direct {v3, p0, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$12;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 2095
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBuilder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 2097
    :cond_0
    return-void
.end method

.method private showNotSupportTip(Landroid/content/Context;Lcom/iflytek/viafly/settings/custompreferences/XPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    .prologue
    .line 2129
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->isBlackList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2130
    const v0, 0x7f0c0057

    .line 2131
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2130
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2132
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2138
    :cond_0
    return-void
.end method

.method private smsBroadcastClick()V
    .locals 3

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1771
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1792
    :cond_0
    :goto_0
    return-void

    .line 1774
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1777
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1779
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1783
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    invoke-virtual {v1}, Lpp;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1786
    const-string/jumbo v1, "\u5f00\u542f\u77ed\u4fe1\u64ad\u62a5\u9700\u8981\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\u3002"

    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->sms_response_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkOfflineTtsPm(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_0

    .line 1788
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private smsPopWinClick()V
    .locals 3

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1752
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1764
    :goto_0
    return-void

    .line 1755
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1757
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1762
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkSmsDialogPm()V

    goto :goto_0
.end method

.method private startStarSetActivity(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1166
    const-string/jumbo v1, "STAR_ENTRY_TYPE"

    const-string/jumbo v2, "broadcast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1169
    :cond_0
    return-void
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    new-instance v0, Lpp;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    .line 385
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lhy;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsShowDoubleSimSettings:Z

    .line 388
    invoke-static {}, Lagm;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsNeedSpecificBroadcastSettings:Z

    .line 389
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->createChildren(Landroid/content/Context;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->freshData(Landroid/content/Context;)V

    .line 392
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addChildren(Landroid/content/Context;)V

    .line 398
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onActivityCreated(Landroid/os/Bundle;)V

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_RES_INSTALL_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v1, "com.iflytek.cmccACTION_REFESH_SMS_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v1, "com.iflytek.cmccACTION_REFESH_CALL_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 276
    new-instance v1, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$MyHandler;-><init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    .line 277
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1118
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 1119
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 1120
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v2

    invoke-virtual {v2}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    .line 1121
    .local v0, "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshStarBroadCastView(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 1123
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshBroadcastRoleState()V

    .line 1151
    .end local v0    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1152
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 1153
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->freshData(Landroid/content/Context;)V

    .line 1156
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onActivityResult(IILandroid/content/Intent;)V

    .line 1157
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 329
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onDestroy()V

    .line 330
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v1, "onDestroy  -----------------"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->isSettingsDestroy:Z

    .line 332
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 334
    sput-boolean v4, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckCallDrawOverlaysPm:Z

    .line 335
    sput-boolean v4, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckSmsDrawOverlaysPm:Z

    .line 337
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 339
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 340
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeTypes:[Ljava/lang/String;

    .line 343
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 346
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 347
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 348
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    .line 349
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 350
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 351
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 352
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallPattern:[Ljava/lang/String;

    .line 353
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallTime:[Ljava/lang/String;

    .line 354
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNotifiyPatternName:Ljava/lang/String;

    .line 357
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 358
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 359
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 360
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 361
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 362
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    .line 363
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    .line 364
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPatternStrings:[Ljava/lang/String;

    .line 365
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsTimesStrings:[Ljava/lang/String;

    .line 367
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    .line 368
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    .line 369
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mPluginInstallControl:Lari;

    const-string/jumbo v1, "CallSmsSubSettingFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 370
    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mPluginInstallControl:Lari;

    .line 371
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 372
    return-void
.end method

.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 2054
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 2048
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 2060
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    const/4 v1, 0x1

    .line 2114
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2116
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2119
    :cond_0
    return-void
.end method

.method protected onFragmentResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1972
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onFragmentResult(Landroid/os/Bundle;)V

    .line 1974
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1975
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1976
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->freshData(Landroid/content/Context;)V

    .line 1978
    :cond_0
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 1984
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    const/4 v1, 0x1

    .line 2101
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2103
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2104
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2106
    :cond_0
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 6
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    const/4 v3, 0x1

    .line 1988
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SMS_NEED_REMIND"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1990
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mEntry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->sms_response_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    if-ne v1, v2, :cond_2

    .line 1992
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isSmsPopWinOpend()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1993
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setSmsBroadcastState(Ljava/lang/Boolean;)V

    .line 1995
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "SMS_NOTIFY"

    invoke-static {v1, v2, v3}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1998
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    const-string/jumbo v2, "onInstallSuccess: KEY_SMS_NOTIFY"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2001
    .local v0, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT90123"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2027
    .end local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2029
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccACTION_REFESH_SMS_SETTING"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 2033
    :cond_1
    return-void

    .line 2004
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mEntry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->sms_text_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    if-ne v1, v2, :cond_3

    .line 2005
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SMS_SPEECH_MODE"

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2007
    :cond_3
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mEntry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->call_response_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    if-ne v1, v2, :cond_4

    .line 2009
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallPopWinOpend()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2010
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setCallBroadcastState(Ljava/lang/Boolean;)V

    .line 2011
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "CALL_NOTIFY"

    invoke-static {v1, v2, v3}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2014
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    const-string/jumbo v2, "onInstallSuccess: KEY_CALL_NOTIFY"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2017
    .restart local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_operation"

    const-string/jumbo v2, "open"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT90117"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 2021
    .end local v0    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mEntry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->star_voice_broadcast_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v5, "CallSmsSubSettingFragment"

    const-string/jumbo v6, "onItemClick"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 947
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getItemAtPosition(I)Lcom/iflytek/viafly/settings/custompreferences/XPreference;

    move-result-object v4

    .line 949
    .local v4, "xPreference":Lcom/iflytek/viafly/settings/custompreferences/XPreference;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 951
    .local v2, "currentClickTime":J
    iget-wide v6, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->lastClickTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1f4

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 952
    const-string/jumbo v5, "CallSmsSubSettingFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "currentClickTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " lastClickTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->lastClickTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iput-wide v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->lastClickTime:J

    .line 959
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    if-eq v4, v5, :cond_2

    .line 960
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->stopPlay()V

    .line 964
    :cond_2
    invoke-virtual {v4}, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 965
    invoke-direct {p0, v1, v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->showNotSupportTip(Landroid/content/Context;Lcom/iflytek/viafly/settings/custompreferences/XPreference;)V

    goto :goto_0

    .line 970
    :cond_3
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v4, v5, :cond_4

    .line 971
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setSimModeType()V

    goto :goto_0

    .line 974
    :cond_4
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v4, v5, :cond_5

    .line 975
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->clickPreferenceCheckBox(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_5
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    if-ne v4, v5, :cond_9

    .line 980
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->showHotIcon(Z)V

    .line 981
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v5

    invoke-virtual {v5}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    .line 982
    .local v0, "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v0, :cond_8

    .line 983
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->d()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 984
    const-string/jumbo v5, "\u5f00\u542f\u6765\u7535\u64ad\u62a5\u9700\u8981\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\u3002"

    sget-object v6, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->star_voice_broadcast_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkOfflineTtsPm(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 996
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshBroadcastRoleState()V

    .line 1002
    :goto_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v5

    const-string/jumbo v6, "FT90115"

    invoke-virtual {v5, v6}, Lwy;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 985
    :cond_6
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->b()Z

    move-result v5

    if-nez v5, :cond_7

    .line 987
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->setBroadcastMethod(I)V

    .line 989
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 991
    :cond_7
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->startPlay()V

    .line 994
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->setBroadcastMethod(I)V

    goto :goto_1

    .line 998
    :cond_8
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->startStarSetActivity(Landroid/content/Context;)V

    goto :goto_2

    .line 1005
    .end local v0    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_9
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    if-ne v4, v5, :cond_a

    .line 1007
    new-instance v5, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v6, Ladl;

    invoke-direct {v6}, Ladl;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 1013
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 1012
    invoke-static {v5}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v5

    const-string/jumbo v6, "FC01023"

    const-string/jumbo v7, "spcl_broadcast_view"

    .line 1014
    invoke-virtual {v5, v6, v7}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v5

    const-string/jumbo v6, "FT90114"

    invoke-virtual {v5, v6}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1023
    :cond_a
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v4, v5, :cond_b

    .line 1025
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->callBroadcastSettingClick()V

    goto/16 :goto_0

    .line 1026
    :cond_b
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v4, v5, :cond_c

    .line 1028
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->callBroadcastSoundSettingClick()V

    goto/16 :goto_0

    .line 1030
    :cond_c
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    if-ne v4, v5, :cond_d

    .line 1031
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->isCallPreferenceCanClick()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1034
    new-instance v5, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;

    invoke-direct {v6}, Lcom/iflytek/viafly/settings/ui/CallPatternSettingFragment;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 1038
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v5

    const-string/jumbo v6, "FT90118"

    invoke-virtual {v5, v6}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1040
    :cond_d
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v4, v5, :cond_e

    .line 1041
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->isCallPreferenceCanClick()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1044
    new-instance v5, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/iflytek/viafly/settings/ui/CallTimesSettingFragment;

    invoke-direct {v6}, Lcom/iflytek/viafly/settings/ui/CallTimesSettingFragment;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 1048
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v5

    const-string/jumbo v6, "FT90119"

    invoke-virtual {v5, v6}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1050
    :cond_e
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v4, v5, :cond_f

    .line 1051
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->isCallPreferenceCanClick()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1054
    new-instance v5, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-direct {v6}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 1058
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v5

    const-string/jumbo v6, "FT90120"

    invoke-virtual {v5, v6}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1059
    :cond_f
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v4, v5, :cond_10

    .line 1062
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkWifiAutoDownLoadPm()V

    goto/16 :goto_0

    .line 1066
    :cond_10
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v4, v5, :cond_11

    .line 1067
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->smsPopWinClick()V

    goto/16 :goto_0

    .line 1069
    :cond_11
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v4, v5, :cond_12

    .line 1070
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->smsBroadcastClick()V

    goto/16 :goto_0

    .line 1072
    :cond_12
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v4, v5, :cond_13

    .line 1074
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->clickPrivateSmsBroadcastCheckBox()V

    goto/16 :goto_0

    .line 1075
    :cond_13
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v4, v5, :cond_14

    .line 1076
    new-instance v5, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;

    invoke-direct {v6}, Lcom/iflytek/viafly/settings/ui/SmsPatternSettingFragment;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 1080
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v5

    const-string/jumbo v6, "FT90126"

    invoke-virtual {v5, v6}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1082
    :cond_14
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v4, v5, :cond_15

    .line 1084
    new-instance v5, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;

    invoke-direct {v6}, Lcom/iflytek/viafly/settings/ui/SmsTimesSettingFragment;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 1088
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v5

    const-string/jumbo v6, "FT90127"

    invoke-virtual {v5, v6}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1089
    :cond_15
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    if-ne v4, v5, :cond_16

    .line 1090
    new-instance v5, Lwq;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lwq;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-direct {v6}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->addFragment(Lcom/iflytek/yd/business/IOperationLog;Landroid/support/v4/app/Fragment;)V

    .line 1094
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v5

    const-string/jumbo v6, "FT90125"

    invoke-virtual {v5, v6}, Lwy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1095
    :cond_16
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v4, v5, :cond_17

    .line 1096
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v6, "com.iflytek.cmccIFLY_SMS_VIBRATE"

    invoke-direct {p0, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->clickPreferenceCheckBox(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1099
    :cond_17
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-ne v4, v5, :cond_0

    .line 1110
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1111
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkSmsSpeechModePm()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onPause()V

    .line 377
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBlackUserToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mBlackUserToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 380
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onResume()V

    .line 303
    sget-boolean v0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckCallDrawOverlaysPm:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    sput-boolean v2, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckCallDrawOverlaysPm:Z

    .line 306
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    :cond_0
    sget-boolean v0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckSmsDrawOverlaysPm:Z

    if-eqz v0, :cond_1

    .line 310
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    sput-boolean v2, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCheckSmsDrawOverlaysPm:Z

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 281
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onStart()V

    .line 283
    const-string/jumbo v2, "CallSmsSubSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStart || mRefreshFromSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 290
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 291
    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 292
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getListView()Lcom/iflytek/base/skin/customView/XListView;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XListView;->setSelection(I)V

    .line 296
    .end local v0    # "action":I
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 319
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onStop()V

    .line 321
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->stopPlay()V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mRefreshFromSetting:Z

    .line 323
    const-string/jumbo v0, "CallSmsSubSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop || mRefreshFromSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mRefreshFromSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method public onUninstallError(II)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 2476
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 0
    .param p1, "pluginType"    # I

    .prologue
    .line 2471
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 2043
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 2110
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 2037
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XPreferenceFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 257
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mPluginInstallControl:Lari;

    .line 258
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mPluginInstallControl:Lari;

    const-string/jumbo v1, "CallSmsSubSettingFragment"

    invoke-virtual {v0, v1, p0}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 262
    const v0, 0x7f0c017d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method

.method public refreshStarBroadCastView(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 6
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const v5, 0x7f0200f2

    .line 1188
    if-eqz p1, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setSummary(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1193
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->getIconImg()Lcom/iflytek/viafly/ui/view/CircleImageView;

    move-result-object v2

    new-instance v3, Lbcu$a;

    invoke-direct {v3}, Lbcu$a;-><init>()V

    .line 1194
    invoke-virtual {v3}, Lbcu$a;->a()Lbcu$a;

    move-result-object v3

    invoke-virtual {v3}, Lbcu$a;->b()Lbcu$a;

    move-result-object v3

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 1195
    invoke-virtual {v3, v4}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1196
    invoke-virtual {v3, v4}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v3

    .line 1197
    invoke-virtual {v3, v5}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v3

    invoke-virtual {v3}, Lbcu$a;->c()Lbcu;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v4}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->getIconImg()Lcom/iflytek/viafly/ui/view/CircleImageView;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->createListener(Landroid/widget/ImageView;)Lbdd;

    move-result-object v4

    .line 1193
    invoke-virtual {v0, v1, v2, v3, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;Lbdd;)V

    .line 1206
    :goto_0
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->refreshBroadcastRoleState()V

    .line 1207
    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->getIconImg()Lcom/iflytek/viafly/ui/view/CircleImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageResource(I)V

    goto :goto_0

    .line 1202
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->setBroadcastMethod(I)V

    .line 1203
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setSummary(I)V

    .line 1204
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->getIconImg()Lcom/iflytek/viafly/ui/view/CircleImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected setChildrenBackground()V
    .locals 2

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsShowDoubleSimSettings:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_top_states"

    .line 553
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSimNameSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_bottom_states"

    .line 555
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mStarRecordSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    const-string/jumbo v1, "statelist.setting_list_item_states"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setItemBackground(Ljava/lang/String;)V

    .line 560
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mIsNeedSpecificBroadcastSettings:Z

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpecificBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;

    const-string/jumbo v1, "statelist.setting_list_item_states"

    .line 562
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->setItemBackground(Ljava/lang/String;)V

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_top_states"

    .line 566
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastSoundSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_middle_states"

    .line 568
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastFormatSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_middle_states"

    .line 570
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_middle_states"

    .line 572
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallBroadcastPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_bottom_states"

    .line 574
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mCallNumResUpdateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_states"

    .line 576
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsReceiveSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_top_states"

    .line 580
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_middle_states"

    .line 582
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_middle_states"

    .line 584
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPrivacySetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_middle_states"

    .line 586
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyPatternSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_middle_states"

    .line 588
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsNotifyTimesSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_middle_states"

    .line 590
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsVibrateSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_bottom_states"

    .line 592
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsSpeechModeSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    const-string/jumbo v1, "statelist.setting_list_item_states"

    .line 595
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setItemBackground(Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method protected setPreferenceChecked(Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "preference"    # Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isChecked"    # Z

    .prologue
    .line 1956
    if-eqz p1, :cond_0

    .line 1957
    invoke-virtual {p1, p3}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 1958
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lil;->a(Ljava/lang/String;Z)V

    .line 1961
    :cond_0
    return-void
.end method

.method protected setPreferenceEnable(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;Z)V
    .locals 0
    .param p1, "preference"    # Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
    .param p2, "isEnable"    # Z

    .prologue
    .line 1940
    if-eqz p1, :cond_0

    .line 1941
    invoke-virtual {p1, p2}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->setEnabled(Z)V

    .line 1942
    invoke-virtual {p1, p2}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->switchState(Z)V

    .line 1944
    :cond_0
    return-void
.end method

.method protected setPrivateSmsBroadcastChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1964
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSmsPrivacyRecognitionSetting:Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setChecked(Z)V

    .line 1966
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->setPrivateSmsBroadcastState(Ljava/lang/Boolean;)V

    .line 1968
    :cond_0
    return-void
.end method

.method protected startPlay()V
    .locals 8

    .prologue
    .line 2495
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2496
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->stopPlay()V

    .line 2521
    :cond_0
    :goto_0
    return-void

    .line 2498
    :cond_1
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v4

    invoke-virtual {v4}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    .line 2499
    .local v0, "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v0, :cond_2

    const-string/jumbo v4, "1"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2501
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2502
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2503
    .local v3, "playUri":Landroid/net/Uri;
    const-string/jumbo v4, "CallSmsSubSettingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Laxa;->a(Landroid/net/Uri;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2518
    .end local v0    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "playUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 2519
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CallSmsSubSettingFragment"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2507
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v4, "0"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2508
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2509
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    const-string/jumbo v5, "\u60a8\u6709\u7535\u8bdd\u6765\u81ea\u5f20\u4e09"

    .line 2510
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v6

    invoke-virtual {v6, v0}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mITtsListener:Lju;

    .line 2509
    invoke-virtual {v4, v5, v6, v7}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto/16 :goto_0

    .line 2512
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    const-string/jumbo v5, "\u60a8\u6709\u7535\u8bdd\u6765\u81ea\u5f20\u4e09"

    sget-object v6, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .line 2513
    invoke-static {v6}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mITtsListener:Lju;

    .line 2512
    invoke-virtual {v4, v5, v6, v7}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopPlay()V
    .locals 3

    .prologue
    .line 1173
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v1

    invoke-virtual {v1}, Laxa;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1174
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v1

    invoke-virtual {v1}, Laxa;->b()V

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    if-eqz v1, :cond_1

    .line 1177
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mSpeechServiceUtil:Lpp;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->mITtsListener:Lju;

    invoke-virtual {v1, v2}, Lpp;->c(Lju;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :cond_1
    :goto_0
    return-void

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CallSmsSubSettingFragment"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
