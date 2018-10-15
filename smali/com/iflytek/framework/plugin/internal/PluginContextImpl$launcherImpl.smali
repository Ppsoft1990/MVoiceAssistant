.class final Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;
.super Ljava/lang/Object;
.source "PluginContextImpl.java"

# interfaces
.implements Lcom/iflytek/yd/ui/ILauncher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "launcherImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;->this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Lcom/iflytek/framework/plugin/internal/PluginContextImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
    .param p2, "x1"    # Lcom/iflytek/framework/plugin/internal/PluginContextImpl$1;

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;)V

    return-void
.end method


# virtual methods
.method public showAdaptationDialog(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/yd/ui/OnClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkBoxSettingKey"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/iflytek/yd/ui/OnClickListener;

    .prologue
    const/4 v2, 0x0

    .line 621
    new-instance v0, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;

    invoke-direct {v0, p1}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;-><init>(Landroid/content/Context;)V

    .line 622
    .local v0, "adaptationDialog":Lcom/iflytek/common/adaptation/ui/AdaptationDialog;
    invoke-virtual {v0, p2}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->setCheckBoxSetting(Ljava/lang/String;)V

    .line 623
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl$1;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;Lcom/iflytek/yd/ui/OnClickListener;)V

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->setRightButton(Ljava/lang/String;Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;)V

    .line 631
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl$2;

    invoke-direct {v1, p0, p3}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl$2;-><init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;Lcom/iflytek/yd/ui/OnClickListener;)V

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->setleftbutton(Ljava/lang/String;Lcom/iflytek/common/adaptation/ui/DialogOnclickListener;)V

    .line 639
    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/ui/AdaptationDialog;->show()V

    .line 640
    return-void
.end method

.method public showInHome(Landroid/content/Context;Lcom/iflytek/yd/ui/BaseFragment;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/iflytek/yd/ui/BaseFragment;

    .prologue
    .line 608
    const-class v2, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;

    monitor-enter v2

    .line 609
    :try_start_0
    invoke-static {p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "from_where"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 615
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 616
    monitor-exit v2

    .line 617
    return-void

    .line 616
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startDialog(Landroid/content/Context;Lcom/iflytek/yd/ui/BaseFragment;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/iflytek/yd/ui/BaseFragment;

    .prologue
    .line 596
    const-class v2, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$launcherImpl;

    monitor-enter v2

    .line 597
    :try_start_0
    invoke-static {p2}, Lcom/iflytek/viafly/ui/PluginDialog;->attachFragment(Lcom/iflytek/yd/ui/BaseFragment;)V

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/ui/PluginDialog;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 603
    monitor-exit v2

    .line 604
    return-void

    .line 603
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
