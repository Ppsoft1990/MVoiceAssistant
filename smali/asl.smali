.class public Lasl;
.super Ljava/lang/Object;
.source "NewPluginIndicatorManager.java"


# static fields
.field private static a:Lasl;


# instance fields
.field private b:Landroid/util/SparseBooleanArray;

.field private c:Lil;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lasl;->d:Ljava/lang/Object;

    .line 37
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "SETTINGS_UNINSTALLED_PLUGIN_NEW_INDICATOR"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "strSetting":Ljava/lang/String;
    invoke-static {v0}, Lasl;->a(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iput-object v1, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    .line 39
    iget-object v1, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    .line 42
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    iput-object v1, p0, Lasl;->c:Lil;

    .line 43
    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 8
    .param p0, "mapString"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    const/4 v2, 0x0

    .line 181
    :cond_0
    return-object v2

    .line 166
    :cond_1
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 168
    .local v2, "map":Landroid/util/SparseBooleanArray;
    const-string/jumbo v6, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "strKeyValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 170
    aget-object v6, v4, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 169
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_3
    aget-object v6, v4, v0

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "strKeyValue":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 177
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, "key":I
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 179
    .local v5, "value":Z
    invoke-virtual {v2, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method public static a()Lasl;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lasl;->a:Lasl;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lasl;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lasl;->a:Lasl;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lasl;

    invoke-direct {v0}, Lasl;-><init>()V

    sput-object v0, Lasl;->a:Lasl;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lasl;->a:Lasl;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/util/SparseBooleanArray;)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 150
    :cond_0
    const-string/jumbo v4, ""

    .line 159
    :goto_0
    return-object v4

    .line 152
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 154
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 155
    .local v1, "key":I
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 156
    .local v3, "value":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    .end local v1    # "key":I
    .end local v3    # "value":Z
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static a(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;Ljava/util/List;)Z
    .locals 6
    .param p0, "plugin"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "prevList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 114
    if-nez p0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 118
    goto :goto_0

    .line 121
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 122
    .local v0, "pluginInfo":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v4

    invoke-virtual {p0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    move v1, v2

    .line 128
    goto :goto_0

    .end local v0    # "pluginInfo":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :cond_4
    move v1, v2

    .line 136
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "prevList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    .local p3, "currList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    invoke-static {p3}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v6, p0, Lasl;->d:Ljava/lang/Object;

    monitor-enter v6

    .line 77
    :try_start_0
    invoke-static {p2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    .line 78
    .local v1, "isPrevEmpty":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 79
    .local v2, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-eqz v2, :cond_1

    .line 83
    if-eqz v1, :cond_3

    .line 84
    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v3

    .line 85
    .local v3, "pluginType":I
    const/4 v0, 0x1

    .line 86
    .local v0, "defaultIsNew":Z
    invoke-static {v3}, Lart;->b(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 87
    invoke-static {}, Lart;->a()Lart;

    move-result-object v7

    .line 88
    invoke-virtual {v7, v3}, Lart;->a(I)Larv;

    move-result-object v7

    invoke-interface {v7}, Larv;->h()Z

    move-result v0

    .line 90
    :cond_2
    const-string/jumbo v7, "NewPluginIndicatorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "FIRST get plugins:set "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v7, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v8

    invoke-virtual {v7, v8, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 92
    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Laso;->a()Laso;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Laso;->a(Z)V

    .line 94
    invoke-static {}, Laso;->a()Laso;

    move-result-object v7

    invoke-virtual {v7}, Laso;->d()V

    goto :goto_1

    .line 108
    .end local v0    # "defaultIsNew":Z
    .end local v1    # "isPrevEmpty":Z
    .end local v2    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .end local v3    # "pluginType":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 98
    .restart local v1    # "isPrevEmpty":Z
    .restart local v2    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :cond_3
    :try_start_1
    invoke-static {v2, p2}, Lasl;->a(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 99
    iget-object v7, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 100
    invoke-static {}, Laso;->a()Laso;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Laso;->a(Z)V

    .line 101
    invoke-static {}, Laso;->a()Laso;

    move-result-object v7

    invoke-virtual {v7}, Laso;->d()V

    goto/16 :goto_1

    .line 105
    .end local v2    # "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :cond_4
    iget-object v5, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    invoke-static {v5}, Lasl;->a(Landroid/util/SparseBooleanArray;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "str":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v7, "SETTINGS_UNINSTALLED_PLUGIN_NEW_INDICATOR"

    invoke-virtual {v5, v7, v4}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public a(I)Z
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 57
    iget-object v2, p0, Lasl;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    invoke-static {p1}, Lasa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x0

    monitor-exit v2

    .line 66
    :goto_0
    return v1

    .line 61
    :cond_0
    iget-object v1, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 62
    .local v0, "indexOfKey":I
    if-gez v0, :cond_1

    .line 63
    invoke-static {}, Lart;->a()Lart;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p1}, Lart;->a(I)Larv;

    move-result-object v1

    invoke-interface {v1}, Larv;->h()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 69
    .end local v0    # "indexOfKey":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    .restart local v0    # "indexOfKey":I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b(I)V
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 140
    iget-object v2, p0, Lasl;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 141
    :try_start_0
    iget-object v1, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 142
    iget-object v1, p0, Lasl;->b:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lasl;->a(Landroid/util/SparseBooleanArray;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lasl;->c:Lil;

    const-string/jumbo v3, "SETTINGS_UNINSTALLED_PLUGIN_NEW_INDICATOR"

    invoke-virtual {v1, v3, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    monitor-exit v2

    .line 145
    return-void

    .line 144
    .end local v0    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
