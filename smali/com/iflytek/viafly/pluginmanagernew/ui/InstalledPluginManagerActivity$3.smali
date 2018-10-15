.class Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;
.super Ljava/lang/Object;
.source "InstalledPluginManagerActivity.java"

# interfaces
.implements Larn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;
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
    .line 341
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 391
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 385
    const-string/jumbo v0, "InstalledPluginManagerActivity"

    const-string/jumbo v1, "onDownloadFinish"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 380
    const-string/jumbo v0, "InstalledPluginManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallProgress, percent is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 1
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 376
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 371
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 1
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 366
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 1
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 361
    return-void
.end method

.method public onUninstallError(II)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02dc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 414
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    if-ne v1, p1, :cond_0

    .line 399
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 402
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOVEL_SETTING"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;I)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02cc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 406
    :cond_1
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 356
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 351
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 1
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$3;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0, p2}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 346
    return-void
.end method
