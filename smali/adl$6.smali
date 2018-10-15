.class Ladl$6;
.super Ljava/lang/Object;
.source "SpecificBroadcastSettingFragment.java"

# interfaces
.implements Larn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladl;


# direct methods
.method constructor <init>(Ladl;)V
    .locals 0
    .param p1, "this$0"    # Ladl;

    .prologue
    .line 1260
    iput-object p1, p0, Ladl$6;->a:Ladl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 1307
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 1308
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 1302
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 1298
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 1293
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 1287
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    .line 1288
    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 1282
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 1277
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method public onUninstallError(II)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 1318
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 0
    .param p1, "pluginType"    # I

    .prologue
    .line 1313
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 1272
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "SpecificBroadcastSettingFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 1273
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 1268
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 1264
    return-void
.end method
