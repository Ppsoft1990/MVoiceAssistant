.class Lari$2;
.super Ljava/lang/Object;
.source "PluginController.java"

# interfaces
.implements Larm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lari;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lari;


# direct methods
.method constructor <init>(Lari;)V
    .locals 0
    .param p1, "this$0"    # Lari;

    .prologue
    .line 146
    iput-object p1, p0, Lari$2;->a:Lari;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 168
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadSuccess| pluginType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lari$2;->a:Lari;

    invoke-virtual {v1, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 170
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v0, :cond_0

    .line 171
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadSuccess() | installInfo is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lari$2;->a:Lari;

    invoke-virtual {v1, v0}, Lari;->b(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 175
    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v1

    invoke-virtual {v1}, Lasc;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lari$2;->a:Lari;

    invoke-static {v1, p1, v0}, Lari;->a(Lari;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lari$2;->a:Lari;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lari;->a(IZ)Z

    goto :goto_0
.end method

.method public a(IDD)V
    .locals 8
    .param p1, "pluginType"    # I
    .param p2, "receivedBytes"    # D
    .param p4, "totalBytes"    # D

    .prologue
    .line 151
    iget-object v4, p0, Lari$2;->a:Lari;

    invoke-virtual {v4, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 152
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v0, :cond_1

    .line 153
    const-string/jumbo v4, "PluginController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDownloadProgress() | installInfo is null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, p4, v4

    if-lez v4, :cond_0

    .line 157
    div-double v2, p2, p4

    .line 158
    .local v2, "installPercent":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lasd;->a(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    invoke-static {p4, p5}, Lasd;->a(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "sizeStr":Ljava/lang/String;
    iget-object v4, p0, Lari$2;->a:Lari;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lari;->a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/Double;)V

    .line 161
    iget-object v4, p0, Lari$2;->a:Lari;

    invoke-static {v4}, Lari;->c(Lari;)Larl;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v3, v1}, Larl;->a(IDLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 185
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadFail| type= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lari$2;->a:Lari;

    invoke-virtual {v1, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 187
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v0, :cond_0

    .line 188
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadFail() | installInfo is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lari$2;->a:Lari;

    const-string/jumbo v2, "\u63d2\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v1, v0, v2}, Lari;->c(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lari$2;->a:Lari;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v2

    .line 194
    invoke-static {p2}, Larq;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v1, v2, v3}, Lari;->a(Lari;Lasc;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 199
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadStart| pluginType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lari$2;->a:Lari;

    invoke-virtual {v1, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 201
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v0, :cond_0

    .line 202
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadStart() | installInfo is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 209
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadCanceled| pluginType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lari$2;->a:Lari;

    invoke-virtual {v1, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 211
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v0, :cond_0

    .line 212
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadCanceled() | installInfo is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lari$2;->a:Lari;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lari;->c(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_0
.end method
