.class public Lask;
.super Ljava/lang/Object;
.source "LaunchPluginRequestHelper.java"

# interfaces
.implements Lasg$b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lask;->a:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Laso;->a()Laso;

    move-result-object v0

    invoke-virtual {v0}, Laso;->d()V

    .line 79
    return-void
.end method

.method public a([ILcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V
    .locals 11
    .param p1, "pluginTypes"    # [I
    .param p2, "historyPluginInfo"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    .param p3, "currentPluginInfo"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 35
    if-nez p2, :cond_3

    move-object v1, v0

    .line 36
    .local v1, "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    :goto_0
    if-nez p3, :cond_4

    .line 37
    .local v0, "currList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    :goto_1
    invoke-static {}, Lasl;->a()Lasl;

    move-result-object v7

    iget-object v8, p0, Lask;->a:Landroid/content/Context;

    invoke-virtual {v7, v8, v1, v0}, Lasl;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 41
    invoke-static {}, Lasa;->a()Ljava/util/List;

    move-result-object v2

    .line 42
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 44
    .local v4, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v4, :cond_0

    .line 47
    invoke-interface {v4}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v5

    .line 48
    .local v5, "type":I
    invoke-static {v5}, Lasa;->f(I)I

    move-result v6

    .line 49
    .local v6, "version":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 52
    invoke-static {v0, v5, v6}, Lasb;->a(Ljava/util/List;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 53
    invoke-static {}, Laso;->a()Laso;

    move-result-object v3

    .line 54
    .local v3, "manager":Laso;
    invoke-virtual {v3, v10}, Laso;->a(Z)V

    .line 55
    invoke-virtual {v3, v10}, Laso;->b(Z)V

    .line 62
    .end local v3    # "manager":Laso;
    .end local v4    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v5    # "type":I
    .end local v6    # "version":I
    :cond_1
    iget-object v7, p0, Lask;->a:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "com.iflytek.cmcc.ACTION_REDRAW_PLUGIN_LIST"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    if-eqz p3, :cond_2

    .line 66
    invoke-virtual {p3}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getDownloadTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 67
    iget-object v7, p0, Lask;->a:Landroid/content/Context;

    invoke-static {v7}, Lare;->a(Landroid/content/Context;)Lare;

    move-result-object v7

    invoke-virtual {v7, v10}, Lare;->a(Z)V

    .line 69
    iget-object v7, p0, Lask;->a:Landroid/content/Context;

    invoke-static {v7}, Lare;->a(Landroid/content/Context;)Lare;

    move-result-object v7

    const-string/jumbo v8, "netinfo_back"

    invoke-virtual {v7, v8}, Lare;->a(Ljava/lang/String;)V

    .line 72
    :cond_2
    invoke-static {}, Laso;->a()Laso;

    move-result-object v7

    invoke-virtual {v7}, Laso;->d()V

    .line 73
    return-void

    .line 35
    .end local v0    # "currList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    .end local v1    # "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    :cond_3
    invoke-virtual {p2}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 36
    .restart local v1    # "historyList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    :cond_4
    invoke-virtual {p3}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1
.end method
