.class Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$1;
.super Ljava/lang/Object;
.source "InstalledPluginManagerActivity.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$1;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginEventChange(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "pluginKind"    # Ljava/lang/String;
    .param p3, "pluginType"    # I
    .param p4, "pluginEvent"    # I
    .param p5, "errorCode"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$1;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const-string/jumbo v0, "InstalledPluginManagerActivity"

    const-string/jumbo v1, "activity finishing, do nothing"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const/16 v0, 0x3e9

    if-ne p4, v0, :cond_0

    const v0, 0x8000

    if-ne p5, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$1;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$1;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
