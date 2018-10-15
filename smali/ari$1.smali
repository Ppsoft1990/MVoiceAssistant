.class Lari$1;
.super Ljava/lang/Object;
.source "PluginController.java"

# interfaces
.implements Larl$a;


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
    .line 88
    iput-object p1, p0, Lari$1;->a:Lari;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 92
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrafficDialogCancelled| pluginType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lari$1;->a:Lari;

    invoke-virtual {v1, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 94
    .local v0, "info":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    iget-object v1, p0, Lari$1;->a:Lari;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lari;->a(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public b(I)V
    .locals 6
    .param p1, "pluginType"    # I

    .prologue
    const/4 v5, 0x0

    .line 99
    const-string/jumbo v2, "PluginController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInstallDialogCancelled| pluginType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lari$1;->a:Lari;

    invoke-virtual {v2, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 101
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    move-result-object v1

    .line 105
    .local v1, "pluginInstallStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;->requesting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    if-ne v2, v1, :cond_2

    .line 106
    iget-object v2, p0, Lari$1;->a:Lari;

    invoke-static {v2, v0, v5}, Lari;->b(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;->downloading:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    if-ne v2, v1, :cond_0

    .line 108
    iget-object v2, p0, Lari$1;->a:Lari;

    invoke-static {v2}, Lari;->a(Lari;)Larm;

    move-result-object v2

    .line 109
    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Larm;->a(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lari$1;->a:Lari;

    invoke-static {v2, v0, v5}, Lari;->c(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 5
    .param p1, "pluginType"    # I

    .prologue
    .line 116
    const-string/jumbo v2, "PluginController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInstallDialogShow| pluginType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lari$1;->a:Lari;

    invoke-virtual {v2, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 118
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 123
    .local v1, "pluginTypes":[I
    iget-object v2, p0, Lari$1;->a:Lari;

    invoke-virtual {v2, v0}, Lari;->e(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 124
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v2

    new-instance v3, Lari$a;

    iget-object v4, p0, Lari$1;->a:Lari;

    invoke-direct {v3, v4, v1}, Lari$a;-><init>(Lari;[I)V

    invoke-virtual {v2, v1, v3}, Lasg;->a([ILasg$b;)V

    goto :goto_0
.end method

.method public d(I)[D
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 129
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInstallDialogReshow| pluginType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lari$1;->a:Lari;

    invoke-virtual {v1, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 131
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-nez v0, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lari$1;->a:Lari;

    invoke-static {v1}, Lari;->a(Lari;)Larm;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Larm;->b(Ljava/lang/String;)[D

    move-result-object v1

    goto :goto_0
.end method

.method public e(I)Ljava/lang/String;
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 140
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPluginName| pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lari$1;->a:Lari;

    invoke-static {v0}, Lari;->b(Lari;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lasb;->a(Landroid/content/Context;Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
