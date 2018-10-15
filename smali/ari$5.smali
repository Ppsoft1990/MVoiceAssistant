.class Lari$5;
.super Ljava/lang/Object;
.source "PluginController.java"

# interfaces
.implements Laro$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lari;->a(Ljava/util/List;Landroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lari;


# direct methods
.method constructor <init>(Lari;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lari;

    .prologue
    .line 507
    iput-object p1, p0, Lari$5;->b:Lari;

    iput-object p2, p0, Lari$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 5
    .param p1, "pluginType"    # I
    .param p2, "isFileExist"    # Z

    .prologue
    const/4 v3, 0x0

    .line 511
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-static {v2}, Lari;->d(Lari;)Lark;

    move-result-object v2

    invoke-virtual {v2, p1}, Lark;->a(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 512
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-eqz p2, :cond_1

    .line 513
    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v2

    invoke-virtual {v2}, Lasc;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v3

    const-string/jumbo v4, "\u6b63\u5728\u5b89\u88c5"

    invoke-static {v2, v3, v4}, Lari;->a(Lari;Lasc;Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-static {v2, p1, v0}, Lari;->a(Lari;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 574
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-virtual {v2, p1, v3}, Lari;->a(IZ)Z

    .line 518
    iget-object v2, p0, Lari$5;->b:Lari;

    const-string/jumbo v3, "\u81ea\u52a8\u4e0b\u8f7d\u6210\u529f"

    invoke-static {v2, v0, v3}, Lari;->a(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_1
    const/16 v2, 0x12d

    if-ne p1, v2, :cond_2

    .line 553
    :cond_2
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-static {v2}, Lari;->b(Lari;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 554
    iget-object v2, p0, Lari$5;->b:Lari;

    const-string/jumbo v3, "\u7f51\u7edc\u6ca1\u6253\u5f00\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v2, v0, v3}, Lari;->a(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_3
    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v2

    invoke-virtual {v2}, Lasc;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lari$5;->a:Landroid/content/Context;

    if-eqz v2, :cond_5

    .line 561
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-static {v2}, Lari;->b(Lari;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 562
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-static {v2}, Lari;->c(Lari;)Larl;

    move-result-object v2

    iget-object v3, p0, Lari$5;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Larl;->b(Landroid/content/Context;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    goto :goto_0

    .line 565
    :cond_4
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-static {v2}, Lari;->c(Lari;)Larl;

    move-result-object v2

    iget-object v3, p0, Lari$5;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Larl;->a(Landroid/content/Context;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    goto :goto_0

    .line 569
    :cond_5
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-virtual {v2, v0}, Lari;->e(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 570
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p1, v1, v3

    .line 571
    .local v1, "pluginTypeArr":[I
    iget-object v2, p0, Lari$5;->b:Lari;

    invoke-static {v2}, Lari;->e(Lari;)Lasg;

    move-result-object v2

    new-instance v3, Lari$a;

    iget-object v4, p0, Lari$5;->b:Lari;

    invoke-direct {v3, v4, v1}, Lari$a;-><init>(Lari;[I)V

    invoke-virtual {v2, v1, v3}, Lasg;->a([ILasg$b;)V

    goto :goto_0
.end method
