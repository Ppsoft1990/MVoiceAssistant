.class public Lcom/iflytek/greenplug/common/Env;
.super Ljava/lang/Object;
.source "Env.java"


# static fields
.field public static final ACTION_BACKGROUND_DELETE:Ljava/lang/String; = "com.iflytek.greenplug.BACKGROUND_DELETE"

.field public static final ACTION_BACKGROUND_START:Ljava/lang/String; = "com.iflytek.greenplug.BACKGROUND_START"

.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final ACTION_UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field public static final DIALOG_STUB_ACTION_DEFAULT_PREFIX:Ljava/lang/String; = "com.iflytek.greenplug.DIALOG_STUB_DEFAULT.P"

.field public static final EXTRA_ACTION:Ljava/lang/String; = "com.iflytek.greenplug.EXTRA_ACTION"

.field public static final EXTRA_EXTERNAL_ACTIVITY:Ljava/lang/String; = "com.iflytek.greenplug.external.activity"

.field public static final EXTRA_TARGET_AUTHORITY:Ljava/lang/String; = "TargetAuthority"

.field public static final EXTRA_TARGET_INTENT:Ljava/lang/String; = "com.iflytek.greenplug.OldIntent"

.field public static final EXTRA_TARGET_INTENT_URI:Ljava/lang/String; = "com.iflytek.greenplug.OldIntent.Uri"

.field public static final EXTRA_TARGET_PENDING_INTENT:Ljava/lang/String; = "com.iflytek.greenplug.pending.OldIntent"

.field public static final EXTRA_TARGET_SHORTCUT_INTENT:Ljava/lang/String; = "com.iflytek.greenplug.shortcut.OldIntent"

.field public static final EXTRA_TARGET_SHORTCUT_INTENT_URI:Ljava/lang/String; = "com.iflytek.greenplug.shortcut.OldIntent.Uri"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "com.iflytek.greenplug.EXTRA_TYPE"

.field public static final PACKAGES_BLACK_LIST:[Ljava/lang/String;

.field public static final PLUGIN_DEFAULT_ICON:Ljava/lang/String; = "gp_default_icon"

.field public static final PLUGIN_FORCE_UPDATE:Ljava/lang/String; = "plugin_force_update"

.field public static final PLUGIN_INNER_DIR:Ljava/lang/String; = "gpplugins"

.field public static final PLUGIN_PROCESS_NAME:Ljava/lang/String; = ":GreenPlugin"

.field public static final STUB_ACTION_DEFAULT_PREFIX:Ljava/lang/String; = "com.iflytek.greenplug.STUB_DEFAULT.P"

.field public static final STUB_COMP_PREFIX:Ljava/lang/String; = "com.iflytek.greenplug.client.stub"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/iflytek/greenplug/common/Env;->PACKAGES_BLACK_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
