.class final Lcom/iflytek/framework/plugin/internal/PluginPool;
.super Ljava/lang/Object;
.source "PluginPool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginPool"


# instance fields
.field private mDeletePluginArray:Landroid/util/SparseIntArray;

.field private mPluginArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mPoolLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mDeletePluginArray:Landroid/util/SparseIntArray;

    .line 33
    return-void
.end method

.method private checkArray()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addDeletedPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V
    .locals 4
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const-string/jumbo v1, "PluginPool"

    const-string/jumbo v2, "addDeletedPlugin plugin is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v0

    .line 128
    .local v0, "type":I
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mDeletePluginArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mDeletePluginArray:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginVersion()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 131
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "type":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected addPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z
    .locals 5
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v2, 0x0

    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string/jumbo v3, "PluginPool"

    const-string/jumbo v4, "addPlugin plugin is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return v2

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v3

    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginPool;->checkArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v1

    .line 49
    .local v1, "type":I
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 50
    .local v0, "cachePlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v0, :cond_1

    .line 51
    const-string/jumbo v2, "PluginPool"

    const-string/jumbo v4, "addPlugin plugin is exist"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 59
    .end local v0    # "cachePlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v1    # "type":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 58
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected containDeletedPlugin(I)Z
    .locals 2
    .param p1, "pluginType"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mDeletePluginArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCachePluginVersion(I)I
    .locals 6
    .param p1, "pluginType"    # I

    .prologue
    .line 197
    const-string/jumbo v3, "PluginPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCachePluginVersion type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v4

    .line 200
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginPool;->checkArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 202
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v0

    .line 204
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v2

    .line 206
    .local v2, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v3

    monitor-exit v4

    .line 213
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    .end local v1    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v2    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    monitor-exit v4

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected getDeletedPluginVersion(I)I
    .locals 2
    .param p1, "pluginType"    # I

    .prologue
    .line 169
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mDeletePluginArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getEnabledPluginCache()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v7, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v7

    .line 244
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginPool;->checkArray()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v4, "pluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "nsize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 247
    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 248
    .local v3, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v3, :cond_0

    .line 249
    invoke-interface {v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginBundle()Lcom/iflytek/yd/plugin/AbsPluginBundle;

    move-result-object v0

    .line 250
    .local v0, "bundle":Lcom/iflytek/yd/plugin/IPluginBundle;
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/iflytek/yd/plugin/IPluginBundle;->getPluginState()I

    move-result v5

    .line 252
    .local v5, "state":I
    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 254
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v0    # "bundle":Lcom/iflytek/yd/plugin/IPluginBundle;
    .end local v5    # "state":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v3    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    monitor-exit v7

    .line 262
    .end local v1    # "i":I
    .end local v2    # "nsize":I
    .end local v4    # "pluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    monitor-exit v7

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 180
    const-string/jumbo v0, "PluginPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPlugin type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginPool;->checkArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    monitor-exit v1

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getPluginCache()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v5

    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginPool;->checkArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v3, "pluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "nsize":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 226
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 227
    .local v2, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    monitor-exit v5

    .line 234
    .end local v0    # "i":I
    .end local v1    # "nsize":I
    .end local v3    # "pluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    monitor-exit v5

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected isExist(I)Z
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 272
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    const-string/jumbo v0, "PluginPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isExist type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginPool;->checkArray()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    monitor-exit v1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isExist(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z
    .locals 5
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v2, 0x0

    .line 288
    if-nez p1, :cond_1

    .line 289
    const-string/jumbo v3, "PluginPool"

    const-string/jumbo v4, "isExist plugin is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return v2

    .line 292
    :cond_1
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v0

    .line 293
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v1

    .line 295
    .local v1, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/iflytek/framework/plugin/internal/PluginPool;->isExist(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected removeDeletedPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    const-string/jumbo v1, "PluginPool"

    const-string/jumbo v2, "removeDeletedPlugin plugin is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_0
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v0

    .line 146
    .local v0, "type":I
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mDeletePluginArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mDeletePluginArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 149
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "type":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected removePlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z
    .locals 6
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v2, 0x0

    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string/jumbo v3, "PluginPool"

    const-string/jumbo v4, "removePlugin plugin is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return v2

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v3

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginPool;->checkArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v1

    .line 76
    .local v1, "type":I
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 77
    .local v0, "cachePlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v0, :cond_1

    .line 78
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 87
    .end local v0    # "cachePlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v1    # "type":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 81
    .restart local v0    # "cachePlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .restart local v1    # "type":I
    :cond_1
    :try_start_1
    const-string/jumbo v4, "PluginPool"

    const-string/jumbo v5, "removePlugin plugin not exist"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit v3

    goto :goto_0

    .line 86
    .end local v0    # "cachePlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v1    # "type":I
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected updatePlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z
    .locals 5
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v2, 0x0

    .line 96
    if-nez p1, :cond_0

    .line 97
    const-string/jumbo v3, "PluginPool"

    const-string/jumbo v4, "updatePlugin plugin is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return v2

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v3

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginPool;->checkArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v1

    .line 104
    .local v1, "type":I
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 105
    .local v0, "cachePlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v0, :cond_1

    .line 106
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginPool;->mPluginArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 111
    .end local v0    # "cachePlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v1    # "type":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
