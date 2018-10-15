.class Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "PluginManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 335
    const-string/jumbo v1, "PluginManagerActivity"

    const-string/jumbo v2, "mBroadcastReceiver"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-nez p2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "PluginManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_REDRAW_PLUGIN_LIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->b(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
