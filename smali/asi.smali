.class public Lasi;
.super Ljava/lang/Object;
.source "EnterPluginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasi$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Lasi$a;

.field private d:Landroid/content/Context;

.field private e:Lari;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput v0, Lasi;->a:I

    .line 41
    const/4 v0, 0x2

    sput v0, Lasi;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lasi$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lasi$a;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lasi;->d:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lasi;->c:Lasi$a;

    .line 50
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    iput-object v0, p0, Lasi;->e:Lari;

    .line 51
    return-void
.end method

.method static synthetic a(Lasi;)Lasi$a;
    .locals 1
    .param p0, "x0"    # Lasi;

    .prologue
    .line 38
    iget-object v0, p0, Lasi;->c:Lasi$a;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lasi;->d:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lasi;->d:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lasi;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2
    .param p1, "stringId"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lasi;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 262
    return-void
.end method

.method private a(IILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I
    .param p3, "entry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 242
    packed-switch p2, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p0, Lasi;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lasi;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_REDRAW_PLUGIN_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    :cond_1
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->enterPlugin(I)I

    .line 249
    iget-object v0, p0, Lasi;->d:Landroid/content/Context;

    invoke-static {v0}, Lxk;->a(Landroid/content/Context;)Lxk;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lxk;->a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 251
    iget-object v0, p0, Lasi;->c:Lasi$a;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lasi;->c:Lasi$a;

    invoke-virtual {v0, p1}, Lasi$a;->onOutsidePluginStartSuccess(I)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x8000
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 3
    .param p1, "mPluginType"    # I
    .param p2, "entry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 183
    new-instance v0, Lasi$3;

    invoke-direct {v0, p0, p1, p2}, Lasi$3;-><init>(Lasi;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 205
    .local v0, "callBack":Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    .line 206
    invoke-static {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginPackageWithType(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-interface {v1, v2, p1, v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->installExistApkPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 209
    return-void
.end method

.method static synthetic a(Lasi;IILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 0
    .param p0, "x0"    # Lasi;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lasi;->a(IILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 2
    .param p1, "activity"    # Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
    .param p2, "pluginType"    # I
    .param p3, "entry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    const v1, 0x7f0c02d8

    .line 121
    invoke-static {p2}, Lasa;->g(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    invoke-static {p2}, Lasa;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lasi;->d:Landroid/content/Context;

    .line 125
    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const v0, 0x7f0c02d5

    invoke-direct {p0, v0}, Lasi;->a(I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 132
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->enterPlugin(I)I

    .line 133
    iget-object v0, p0, Lasi;->d:Landroid/content/Context;

    invoke-static {v0}, Lxk;->a(Landroid/content/Context;)Lxk;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lxk;->a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 135
    iget-object v0, p0, Lasi;->c:Lasi$a;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lasi;->c:Lasi$a;

    invoke-virtual {v0, p2}, Lasi$a;->onEnterPlugin(I)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lasi;->d:Landroid/content/Context;

    new-instance v1, Lasi$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lasi$2;-><init>(Lasi;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;)V

    invoke-static {v0, v1}, Lpf;->a(Landroid/content/Context;Lpf$a;)V

    goto :goto_0

    .line 161
    :cond_3
    const/4 v0, 0x1

    if-ne v0, p2, :cond_4

    .line 162
    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/ui/PluginUninstallFragment;

    invoke-direct {v1}, Lcom/iflytek/viafly/ui/PluginUninstallFragment;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V

    goto :goto_0

    .line 165
    :cond_4
    invoke-direct {p0, v1}, Lasi;->a(I)V

    goto :goto_0

    .line 169
    :cond_5
    invoke-direct {p0, v1}, Lasi;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Lasi;)Lari;
    .locals 1
    .param p0, "x0"    # Lasi;

    .prologue
    .line 38
    iget-object v0, p0, Lasi;->e:Lari;

    return-object v0
.end method

.method private b(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 6
    .param p1, "activity"    # Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
    .param p2, "pluginType"    # I
    .param p3, "installMode"    # Lasc;
    .param p4, "entry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 98
    new-instance v0, Lasi$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lasi$1;-><init>(Lasi;ILcom/iflytek/viafly/ui/activity/BaseFragmentActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    invoke-static {p1, v0}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    .line 117
    return-void
.end method

.method static synthetic c(Lasi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lasi;

    .prologue
    .line 38
    iget-object v0, p0, Lasi;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 5
    .param p1, "activity"    # Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
    .param p2, "pluginType"    # I
    .param p3, "installMode"    # Lasc;
    .param p4, "entry"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    .prologue
    .line 55
    invoke-static {p2}, Lasa;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    invoke-static {p2}, Lasa;->h(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    iget-object v2, p0, Lasi;->d:Landroid/content/Context;

    const v3, 0x7f0c02d1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 58
    iget-object v2, p0, Lasi;->c:Lasi$a;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lasi;->c:Lasi$a;

    invoke-virtual {v2, p2}, Lasi$a;->onPluginNotSupported(I)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    :try_start_0
    iget-object v2, p0, Lasi;->c:Lasi$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lasi;->c:Lasi$a;

    invoke-virtual {v2, p2}, Lasi$a;->beforeHandlePlugin(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    :cond_2
    iget-object v2, p0, Lasi;->e:Lari;

    invoke-virtual {v2, p2}, Lari;->b(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    move-result-object v1

    .line 69
    .local v1, "pluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    sget-object v2, Lasi$4;->a:[I

    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    invoke-direct {p0}, Lasi;->a()V

    .line 73
    iget-object v2, p0, Lasi;->c:Lasi$a;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lasi;->c:Lasi$a;

    invoke-virtual {v2, p2, v1}, Lasi$a;->onPluginInstalling(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1    # "pluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "EnterPluginHelper"

    const-string/jumbo v3, "enterPlugin() "

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "pluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-direct {p0, p2, p4}, Lasi;->a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto :goto_0

    .line 85
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lasi;->b(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
