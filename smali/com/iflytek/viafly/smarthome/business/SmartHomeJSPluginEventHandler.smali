.class public Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;
.super Lasi$a;
.source "SmartHomeJSPluginEventHandler.java"

# interfaces
.implements Larn;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lxWebView"    # Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .prologue
    .line 20
    invoke-direct {p0}, Lasi$a;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 23
    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onDownloadError(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onDownloadFinish(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onDownloadProgress(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onDownloadStart(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onInstallError(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onInstallStart(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onInstallSuccess(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onUninstallError(II)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onUninstallError(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onUninstallSuccess(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onUpdateError(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onUpdateStart(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/business/SmartHomeConstants;->getDeviceNameByPluginType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/business/SmartHomeJSPluginEventHandler;->mLxWebView:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window.onUpdateSuccess(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 60
    return-void
.end method
