.class public Lasp;
.super Ljava/lang/Object;
.source "UIPluginEventHandler.java"

# interfaces
.implements Larn;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lasp;->a:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lasp;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lasp;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "pluginType"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lasp;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lasp;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v0, "PluginEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadError, errorTip is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lasp;->a(II)V

    .line 78
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 70
    const-string/jumbo v0, "PluginEventListener"

    const-string/jumbo v1, "onDownloadFinish"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lasp;->a(II)V

    .line 72
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 53
    const-string/jumbo v0, "PluginEventListener"

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

    .line 54
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 93
    const-string/jumbo v0, "PluginEventListener"

    const-string/jumbo v1, "onDownloadStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lasp;->a(II)V

    .line 95
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string/jumbo v0, "PluginEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallError, errorTip is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lasp;->a(II)V

    .line 31
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 81
    const-string/jumbo v0, "PluginEventListener"

    const-string/jumbo v1, "onInstallStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lasp;->a(II)V

    .line 83
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 5
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 35
    const-string/jumbo v2, "PluginEventListener"

    const-string/jumbo v3, "onInstallSuccess"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v2, "PluginEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInstallSuccess pluginType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Laso;->a()Laso;

    move-result-object v0

    .line 40
    .local v0, "redDotManager":Laso;
    invoke-static {p1}, Lasa;->f(I)I

    move-result v1

    .line 41
    .local v1, "version":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 42
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p1, v1}, Lasg;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Laso;->b(Z)V

    .line 47
    :cond_0
    invoke-direct {p0}, Lasp;->a()V

    .line 48
    return-void
.end method

.method public onUninstallError(II)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 9
    .param p1, "pluginType"    # I

    .prologue
    .line 99
    const-string/jumbo v6, "PluginEventListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onUninstallSuccess, pluginType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Laso;->a()Laso;

    move-result-object v3

    .line 102
    .local v3, "redDotManager":Laso;
    invoke-virtual {v3}, Laso;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    invoke-static {}, Lasa;->a()Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    const/4 v1, 0x0

    .line 106
    .local v1, "needUpdateCount":I
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 108
    .local v2, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v2, :cond_0

    .line 111
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v4

    .line 112
    .local v4, "type":I
    invoke-static {v4}, Lasa;->f(I)I

    move-result v5

    .line 113
    .local v5, "version":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 116
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lasg;->a(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 123
    .end local v2    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v4    # "type":I
    .end local v5    # "version":I
    :cond_1
    if-nez v1, :cond_2

    .line 124
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Laso;->b(Z)V

    .line 127
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    .end local v1    # "needUpdateCount":I
    :cond_2
    invoke-direct {p0}, Lasp;->a()V

    .line 128
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string/jumbo v0, "PluginEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateError, errorTip is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lasp;->a(II)V

    .line 66
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 87
    const-string/jumbo v0, "PluginEventListener"

    const-string/jumbo v1, "onUpdateStart()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lasp;->a(II)V

    .line 89
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 58
    const-string/jumbo v0, "PluginEventListener"

    const-string/jumbo v1, "onUpdateSuccess"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lasp;->a()V

    .line 60
    return-void
.end method
