.class Lcom/iflytek/viafly/call/CallBusinessManager$6;
.super Ljava/lang/Object;
.source "CallBusinessManager.java"

# interfaces
.implements Larn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/call/CallBusinessManager;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/call/CallBusinessManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 2029
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$6;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 2069
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "sougouHMT plugin onDownloadError"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "CallBusinessManagersougou_plugin"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$6;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->l()V

    .line 2072
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 2065
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 2076
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 2062
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 2034
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "sougouHMT plugin onInstallError"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "CallBusinessManagersougou_plugin"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 2036
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$6;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->l()V

    .line 2037
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 2045
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 2040
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "sougouHMT plugin onInstallSuccess"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "CallBusinessManagersougou_plugin"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 2042
    return-void
.end method

.method public onUninstallError(II)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 2082
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 0
    .param p1, "pluginType"    # I

    .prologue
    .line 2079
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 2053
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "sougouHMT plugin onUpdateError"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "CallBusinessManagersougou_plugin"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 2055
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$6;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-virtual {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->l()V

    .line 2056
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 2059
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 2048
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "sougouHMT plugin onUpdateSuccess"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    return-void
.end method
