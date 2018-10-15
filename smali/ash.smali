.class public Lash;
.super Ljava/lang/Object;
.source "PluginInfoFilter.java"

# interfaces
.implements Lasf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;)Z
    .locals 3
    .param p1, "plugin"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getAndroidLv()I

    move-result v1

    invoke-static {}, Lqe;->a()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V
    .locals 13
    .param p1, "info"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .prologue
    const/4 v12, -0x1

    .line 25
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v5

    .line 29
    .local v5, "pluginList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    invoke-static {v5}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "candList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 36
    .local v4, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    invoke-direct {p0, v4}, Lash;->a(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 37
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :cond_2
    const-string/jumbo v9, "PluginInfoFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "discard illegal netplugin -->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 44
    .end local v4    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v7, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, "listTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "listIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 48
    .restart local v4    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v6

    .line 49
    .local v6, "pluginType":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-eq v12, v9, :cond_4

    .line 50
    const-string/jumbo v9, "PluginInfoFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "discard netplugin type duplicating-->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 53
    :cond_4
    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-eq v12, v9, :cond_5

    .line 55
    const-string/jumbo v9, "PluginInfoFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "discard netplugin id duplicating-->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 58
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 63
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v6    # "pluginType":I
    :cond_6
    invoke-virtual {p1, v7}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->setNetPlugins(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
