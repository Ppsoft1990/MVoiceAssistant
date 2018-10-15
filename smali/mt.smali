.class public Lmt;
.super Ljava/lang/Object;
.source "PluginInstallCallBack.java"

# interfaces
.implements Larn;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "PluginInstallCallBack"

    iput-object v0, p0, Lmt;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadError -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 61
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadFinish -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 72
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 56
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUninstallSuccess -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallError -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 36
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallStart -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 31
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallSuccess -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public onUninstallError(II)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUninstallError -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 16
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUninstallSuccess -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateError -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 51
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateStart -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lmt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateSuccess -- pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
