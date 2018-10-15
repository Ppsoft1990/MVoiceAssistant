.class Lari$3;
.super Ljava/lang/Object;
.source "PluginController.java"

# interfaces
.implements Larp$a;


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
    .line 219
    iput-object p1, p0, Lari$3;->a:Lari;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7
    .param p1, "pluginType"    # I

    .prologue
    .line 223
    const-string/jumbo v2, "PluginController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPluginStartSuccess() | pluginType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Lari$3;->a:Lari;

    invoke-virtual {v2, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 226
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    invoke-static {p1}, Lasb;->b(I)Z

    move-result v1

    .line 228
    .local v1, "isApkPlugin":Z
    if-eqz v1, :cond_0

    .line 229
    iget-object v2, p0, Lari$3;->a:Lari;

    invoke-static {v2}, Lari;->d(Lari;)Lark;

    move-result-object v2

    invoke-virtual {v2, p1}, Lark;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 232
    :cond_0
    iget-object v2, p0, Lari$3;->a:Lari;

    invoke-virtual {v2, p1, v0}, Lari;->a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 233
    if-eqz v1, :cond_2

    .line 234
    iget-object v2, p0, Lari$3;->a:Lari;

    invoke-static {v2}, Lari;->d(Lari;)Lark;

    move-result-object v2

    invoke-virtual {v2, p1}, Lark;->d(I)V

    .line 235
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->enterPlugin(I)I

    .line 242
    :goto_0
    if-eqz v0, :cond_1

    .line 243
    iget-object v2, p0, Lari$3;->a:Lari;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lari$3;->a:Lari;

    .line 244
    invoke-static {v5}, Lari;->b(Lari;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, p1}, Lasb;->a(Landroid/content/Context;Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5b89\u88c5\u5df2\u5b8c\u6210"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-static {v2, v3, v4}, Lari;->a(Lari;Lasc;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lari$3;->a:Lari;

    invoke-static {v2}, Lari;->b(Lari;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxk;->a(Landroid/content/Context;)Lxk;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->d()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lxk;->c(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 247
    :cond_1
    return-void

    .line 238
    :cond_2
    iget-object v2, p0, Lari$3;->a:Lari;

    invoke-static {v2}, Lari;->c(Lari;)Larl;

    move-result-object v2

    invoke-virtual {v2, p1}, Larl;->b(I)V

    .line 239
    iget-object v2, p0, Lari$3;->a:Lari;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lari;->a(IZ)Z

    goto :goto_0
.end method

.method public a(II)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 251
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginStartFail()| pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0, p1, p2}, Lari$3;->b(II)V

    .line 254
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "kind"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallSuccess() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , kind= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public b(II)V
    .locals 6
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 270
    const-string/jumbo v3, "PluginController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInstallFail() | type= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " eC= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v3, p0, Lari$3;->a:Lari;

    invoke-virtual {v3, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 273
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    invoke-static {p1}, Lasb;->b(I)Z

    move-result v1

    .line 274
    .local v1, "isApkPlugin":Z
    if-eqz v1, :cond_0

    .line 275
    iget-object v3, p0, Lari$3;->a:Lari;

    invoke-static {v3}, Lari;->d(Lari;)Lark;

    move-result-object v3

    invoke-virtual {v3, p1}, Lark;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 276
    iget-object v3, p0, Lari$3;->a:Lari;

    invoke-static {v3}, Lari;->d(Lari;)Lark;

    move-result-object v3

    invoke-virtual {v3, p1}, Lark;->d(I)V

    .line 278
    :cond_0
    if-nez v0, :cond_1

    .line 279
    const-string/jumbo v3, "PluginController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInstallFail installInfo is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-static {p2}, Larq;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "tip":Ljava/lang/String;
    const v3, 0x8004

    if-ne p2, v3, :cond_2

    .line 286
    invoke-static {p1}, Lasb;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 288
    :cond_2
    iget-object v3, p0, Lari$3;->a:Lari;

    invoke-static {v3, v0, v2}, Lari;->a(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_0
.end method
