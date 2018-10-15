.class public Lcom/iflytek/viafly/download/DownloadHandlerService$a;
.super Lnm;
.source "DownloadHandlerService.java"

# interfaces
.implements Larn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/download/DownloadHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/download/DownloadHandlerService;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/download/DownloadHandlerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/iflytek/viafly/download/DownloadHandlerService;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-direct {p0}, Lnm;-><init>()V

    .line 195
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "DownloadHandlerService"

    invoke-virtual {v0, v1, p0}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 196
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 206
    const-string/jumbo v0, "DownloadHandlerService"

    const-string/jumbo v1, "cancelAllNotification"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-static {v0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->a(Lcom/iflytek/viafly/download/DownloadHandlerService;)Lagj;

    move-result-object v0

    invoke-virtual {v0}, Lagj;->a()V

    .line 208
    return-void
.end method

.method public a(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 200
    const-string/jumbo v0, "DownloadHandlerService"

    const-string/jumbo v1, "cancelNotification"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-static {v0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->a(Lcom/iflytek/viafly/download/DownloadHandlerService;)Lagj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lagj;->a(J)V

    .line 202
    return-void
.end method

.method public a(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    const/4 v7, 0x1

    .line 224
    const-string/jumbo v3, "DownloadHandlerService"

    const-string/jumbo v4, "install"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isForeground()Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    .line 237
    .local v2, "type":I
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isNotificationVisibility()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v7, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ".apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    iget-object v3, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-static {v3}, Lcom/iflytek/viafly/download/DownloadHandlerService;->b(Lcom/iflytek/viafly/download/DownloadHandlerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-static {v4}, Lcom/iflytek/viafly/download/DownloadHandlerService;->b(Lcom/iflytek/viafly/download/DownloadHandlerService;)Landroid/os/Handler;

    move-result-object v4

    .line 245
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v5

    const/4 v6, 0x0

    .line 244
    invoke-virtual {v4, v7, v5, v6, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/download/DownloadHandlerService;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 249
    iget-object v3, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-static {v3, p1}, Lcom/iflytek/viafly/download/DownloadHandlerService;->b(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;)I

    move-result v1

    .line 251
    .local v1, "installResult":I
    const-string/jumbo v3, "DownloadHandlerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v3, -0x2

    if-eq v1, v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-static {v3, p1, v1}, Lcom/iflytek/viafly/download/DownloadHandlerService;->b(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;I)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Collection;)V
    .locals 2
    .param p1, "infos"    # Ljava/util/Collection;

    .prologue
    .line 218
    const-string/jumbo v0, "DownloadHandlerService"

    const-string/jumbo v1, "updateNotifications"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-static {v0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->a(Lcom/iflytek/viafly/download/DownloadHandlerService;)Lagj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lagj;->a(Ljava/util/Collection;)V

    .line 220
    return-void
.end method

.method public b(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 212
    const-string/jumbo v0, "DownloadHandlerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification | info getstatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    invoke-static {v0}, Lcom/iflytek/viafly/download/DownloadHandlerService;->a(Lcom/iflytek/viafly/download/DownloadHandlerService;)Lagj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lagj;->b(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 214
    return-void
.end method

.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 303
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 299
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 307
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 319
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string/jumbo v2, "DownloadHandlerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInstallError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    .line 266
    invoke-virtual {v2}, Lcom/iflytek/viafly/download/DownloadHandlerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 265
    invoke-static {v2}, Lnp;->a(Landroid/content/Context;)Lnp;

    move-result-object v2

    .line 266
    invoke-virtual {v2, v1}, Lnp;->b(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 267
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 268
    iget-object v2, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    const/16 v3, 0xf

    invoke-static {v2, v0, v3}, Lcom/iflytek/viafly/download/DownloadHandlerService;->b(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;I)V

    .line 272
    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 311
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 276
    const-string/jumbo v2, "DownloadHandlerService"

    const-string/jumbo v3, "onInstallSuccess"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    .line 281
    invoke-virtual {v2}, Lcom/iflytek/viafly/download/DownloadHandlerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 280
    invoke-static {v2}, Lnp;->a(Landroid/content/Context;)Lnp;

    move-result-object v2

    .line 281
    invoke-virtual {v2, v1}, Lnp;->b(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 282
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 283
    iget-object v2, p0, Lcom/iflytek/viafly/download/DownloadHandlerService$a;->a:Lcom/iflytek/viafly/download/DownloadHandlerService;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/iflytek/viafly/download/DownloadHandlerService;->b(Lcom/iflytek/viafly/download/DownloadHandlerService;Lcom/iflytek/common/download/entities/DownloadInfo;I)V

    .line 287
    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onUninstallError(II)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 327
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 0
    .param p1, "pluginType"    # I

    .prologue
    .line 323
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 295
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 315
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 291
    return-void
.end method
