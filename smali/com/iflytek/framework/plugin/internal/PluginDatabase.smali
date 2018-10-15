.class final Lcom/iflytek/framework/plugin/internal/PluginDatabase;
.super Lnn;
.source "PluginDatabase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnn",
        "<",
        "Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS plugincache_v2 ( plugin_id TEXT NOT NULL PRIMARY KEY, plugin_kind TEXT, plugin_type INTEGER, plugin_path TEXT, plugin_state INTEGER, plugin_version INTEGER, package_name TEXT, require_min_app INTEGER)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "plugin.db"

.field public static final DBVERSION:Ljava/lang/String; = "1.0"

.field private static final SELECTION:Ljava/lang/String; = "plugin_id = ?"

.field private static final TABLE_NAME_OLD:Ljava/lang/String; = "plugincache"

.field private static final TABLE_NAME_V2:Ljava/lang/String; = "plugincache_v2"

.field private static final TAG:Ljava/lang/String; = "PluginDatabase"


# instance fields
.field private mSqlLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string/jumbo v0, "plugin.db"

    invoke-direct {p0, p1, v0}, Lnn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 69
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS plugincache_v2 ( plugin_id TEXT NOT NULL PRIMARY KEY, plugin_kind TEXT, plugin_type INTEGER, plugin_path TEXT, plugin_state INTEGER, plugin_version INTEGER, package_name TEXT, require_min_app INTEGER)"

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->createTable(Ljava/lang/String;)Z

    .line 70
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->copyDataIfNeed()V

    .line 71
    return-void
.end method

.method private convertPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .locals 7
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v4, 0x0

    .line 450
    if-nez p1, :cond_1

    .line 451
    const-string/jumbo v5, "PluginDatabase"

    const-string/jumbo v6, "convertPluginInfo plugin is null"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 475
    :cond_0
    :goto_0
    return-object v2

    .line 456
    :cond_1
    :try_start_0
    new-instance v2, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    invoke-direct {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;-><init>()V

    .line 457
    .local v2, "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v3

    .line 458
    .local v3, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginBundle()Lcom/iflytek/yd/plugin/AbsPluginBundle;

    move-result-object v1

    .line 459
    .local v1, "pluginBundle":Lcom/iflytek/yd/plugin/IPluginBundle;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginId(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginType(I)V

    .line 462
    invoke-interface {v1}, Lcom/iflytek/yd/plugin/IPluginBundle;->getPluginState()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluignState(I)V

    .line 463
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginVersion(I)V

    .line 464
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getRequireAppMinVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluingMinApp(I)V

    .line 465
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginPath(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPackageName(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginKind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    .end local v1    # "pluginBundle":Lcom/iflytek/yd/plugin/IPluginBundle;
    .end local v2    # "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .end local v3    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PluginDatabase"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 475
    goto :goto_0
.end method

.method private convertPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .locals 6
    .param p1, "info"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    .prologue
    const/4 v3, 0x0

    .line 481
    if-nez p1, :cond_1

    .line 482
    const-string/jumbo v4, "PluginDatabase"

    const-string/jumbo v5, "convertPluginInfo pluginInfo is null"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 503
    :cond_0
    :goto_0
    return-object v1

    .line 487
    :cond_1
    :try_start_0
    new-instance v1, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    invoke-direct {v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;-><init>()V

    .line 488
    .local v1, "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v2

    .line 489
    .local v2, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginId(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginType(I)V

    .line 492
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginVersion(I)V

    .line 493
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getRequireAppMinVersion()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluingMinApp(I)V

    .line 494
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getInstallPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginPath(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPackageName(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getKind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginKind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    .end local v1    # "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .end local v2    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PluginDatabase"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 503
    goto :goto_0
.end method

.method private copyDataIfNeed()V
    .locals 10

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    .local v0, "currTime":J
    const-string/jumbo v5, "PluginDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "copyDataIfNeed begin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string/jumbo v5, "plugincache"

    invoke-direct {p0, v5}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->tabIsExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    const-string/jumbo v5, "PluginDatabase"

    const-string/jumbo v6, "need copy old data"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 80
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->queryOldAll()Ljava/util/List;

    move-result-object v4

    .line 81
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    const-string/jumbo v5, "PluginDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "copyDataIfNeed list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v4, :cond_0

    .line 83
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    .line 84
    .local v3, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 85
    const-string/jumbo v6, "plugincache_v2"

    invoke-virtual {p0, v3, v6}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->insert(Ljava/lang/Object;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v0    # "currTime":J
    .end local v3    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    :catch_0
    move-exception v2

    .line 96
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "PluginDatabase"

    const-string/jumbo v6, "copy data failed"

    invoke-static {v5, v6, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 88
    .restart local v0    # "currTime":J
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 89
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "DROP TABLE IF EXISTS plugincache"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->close()V

    .line 94
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    :goto_2
    const-string/jumbo v5, "PluginDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "copyDataIfNeed end waste time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    :cond_1
    const-string/jumbo v5, "PluginDatabase"

    const-string/jumbo v6, "not need copy old data"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private declared-synchronized queryOldAll()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 330
    monitor-enter p0

    const/4 v8, 0x0

    .line 331
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 333
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "plugincache"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 334
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0, v8}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->obtainOldDBObject(Landroid/database/Cursor;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v10

    .line 338
    .local v10, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    if-eqz v10, :cond_1

    .line 339
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    move-object v11, v12

    .line 346
    .end local v10    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    :cond_2
    if-eqz v8, :cond_3

    .line 347
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_0
    move-object v0, v11

    .line 354
    :goto_1
    monitor-exit p0

    return-object v0

    .line 343
    :catch_0
    move-exception v9

    .line 344
    .local v9, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v0, "PluginDatabase"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    if-eqz v8, :cond_3

    .line 347
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 352
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 353
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v0, "PluginDatabase"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v13

    .line 354
    goto :goto_1

    .line 346
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    .line 347
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 330
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 346
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    :catchall_2
    move-exception v0

    move-object v11, v12

    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    goto :goto_3

    .line 343
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    :catch_2
    move-exception v9

    move-object v11, v12

    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    goto :goto_2
.end method

.method private declared-synchronized tabIsExist(Ljava/lang/String;)Z
    .locals 8
    .param p1, "tabName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 101
    monitor-enter p0

    const/4 v3, 0x0

    .line 102
    .local v3, "result":Z
    if-nez p1, :cond_0

    .line 120
    :goto_0
    monitor-exit p0

    return v5

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 108
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select count(*) as c from sqlite_master where type =\'table\' and name =\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 113
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 114
    const/4 v3, 0x1

    .end local v0    # "count":I
    :cond_1
    move v5, v3

    .line 120
    goto :goto_0

    .line 117
    .end local v4    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method protected checkSqlData(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Z
    .locals 8
    .param p1, "info"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    .param p2, "sqlInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    .prologue
    const/4 v5, 0x0

    .line 396
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 397
    :cond_0
    const-string/jumbo v6, "PluginDatabase"

    const-string/jumbo v7, "checkSqlData info is null"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_1
    :goto_0
    return v5

    .line 401
    :cond_2
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v3

    .line 402
    .local v3, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v3, :cond_1

    .line 403
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "pluginId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v1

    .line 405
    .local v1, "pluginType":I
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I

    move-result v4

    .line 406
    .local v4, "version":I
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getRequireAppMinVersion()I

    move-result v2

    .line 407
    .local v2, "requireVersion":I
    invoke-virtual {p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginVersion()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 408
    invoke-virtual {p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginType()I

    move-result v6

    if-ne v1, v6, :cond_1

    .line 409
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getRequireAppMinVersion()I

    move-result v6

    if-ne v2, v6, :cond_1

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 411
    invoke-virtual {p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 412
    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected contains(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z
    .locals 7
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 427
    if-nez p1, :cond_0

    .line 428
    const-string/jumbo v3, "PluginDatabase"

    const-string/jumbo v4, "contains plugin is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return v2

    .line 432
    :cond_0
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    monitor-enter v4

    .line 433
    :try_start_0
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 434
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->convertPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v0

    .line 436
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    if-eqz v0, :cond_1

    .line 437
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 438
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 440
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "plugin_id = ?"

    const-string/jumbo v6, "plugincache_v2"

    invoke-virtual {p0, v5, v1, v6}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 441
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 444
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected delete(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)I
    .locals 5
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v2, -0x1

    .line 222
    if-nez p1, :cond_0

    .line 223
    const-string/jumbo v3, "PluginDatabase"

    const-string/jumbo v4, "delete plugin is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return v2

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    monitor-enter v3

    .line 227
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 228
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->convertPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v0

    .line 230
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    if-eqz v0, :cond_1

    .line 231
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 232
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 234
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v2, "plugin_id = ?"

    const-string/jumbo v4, "plugincache_v2"

    invoke-virtual {p0, v2, v1, v4}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->delete(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 236
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected delete(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    const-string/jumbo v1, "PluginDatabase"

    const-string/jumbo v2, "delete id is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, -0x1

    .line 258
    :goto_0
    return v1

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 255
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 258
    .local v0, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "plugin_id = ?"

    const-string/jumbo v3, "plugincache_v2"

    invoke-virtual {p0, v1, v0, v3}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->delete(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 259
    .end local v0    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected insert(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)J
    .locals 5
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const-wide/16 v2, -0x1

    .line 200
    if-nez p1, :cond_0

    .line 201
    const-string/jumbo v1, "PluginDatabase"

    const-string/jumbo v4, "insert plugin is null"

    invoke-static {v1, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-wide v2

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    monitor-enter v4

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 206
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->convertPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v0

    .line 207
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    if-eqz v0, :cond_1

    .line 208
    const-string/jumbo v1, "plugincache_v2"

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->insert(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    monitor-exit v4

    goto :goto_0

    .line 210
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected obtainContentValues(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "object"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    .prologue
    .line 125
    move-object v0, p1

    .line 126
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    if-eqz v0, :cond_0

    .line 127
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "plugin_id"

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v2, "plugin_type"

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string/jumbo v2, "plugin_state"

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluignState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string/jumbo v2, "plugin_path"

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v2, "plugin_version"

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string/jumbo v2, "package_name"

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v2, "require_min_app"

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluingMinApp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string/jumbo v2, "plugin_kind"

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic obtainContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->obtainContentValues(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected obtainDBObject(Landroid/database/Cursor;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;-><init>()V

    .line 146
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    const-string/jumbo v1, "plugin_id"

    .line 147
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 146
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginId(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "plugin_path"

    .line 149
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 148
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginPath(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "plugin_state"

    .line 151
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 150
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluignState(I)V

    .line 152
    const-string/jumbo v1, "plugin_type"

    .line 153
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 152
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginType(I)V

    .line 154
    const-string/jumbo v1, "require_min_app"

    .line 155
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 154
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluingMinApp(I)V

    .line 156
    const-string/jumbo v1, "plugin_version"

    .line 157
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 156
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginVersion(I)V

    .line 158
    const-string/jumbo v1, "package_name"

    .line 159
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 158
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPackageName(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "plugin_kind"

    .line 163
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginKind(Ljava/lang/String;)V

    .line 167
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic obtainDBObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->obtainDBObject(Landroid/database/Cursor;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v0

    return-object v0
.end method

.method protected obtainOldDBObject(Landroid/database/Cursor;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;-><init>()V

    .line 173
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    const-string/jumbo v1, "plugin_id"

    .line 174
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 173
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginId(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v1, "plugin_path"

    .line 176
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 175
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginPath(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v1, "plugin_state"

    .line 178
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 177
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluignState(I)V

    .line 179
    const-string/jumbo v1, "plugin_type"

    .line 180
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 179
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginType(I)V

    .line 181
    const-string/jumbo v1, "require_min_app"

    .line 182
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 181
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluingMinApp(I)V

    .line 183
    const-string/jumbo v1, "plugin_version"

    .line 184
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 183
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginVersion(I)V

    .line 185
    const-string/jumbo v1, "package_name"

    .line 186
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 185
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPackageName(Ljava/lang/String;)V

    .line 190
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected queryAllPlugins()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 324
    const-string/jumbo v0, "plugincache_v2"

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->queryAll(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected queryPlugin(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    monitor-enter v3

    .line 365
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 366
    const-string/jumbo v0, "package_name = ?"

    .line 367
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 368
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v2, "plugincache_v2"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 369
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected queryPluginById(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "pluginId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    const/4 v2, 0x0

    .line 385
    :goto_0
    return-object v2

    .line 381
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    monitor-enter v3

    .line 382
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 383
    const-string/jumbo v0, "plugin_id = ?"

    .line 384
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 385
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v2, "plugincache_v2"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 386
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected update(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)I
    .locals 5
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    const/4 v2, -0x1

    .line 269
    if-nez p1, :cond_0

    .line 270
    const-string/jumbo v3, "PluginDatabase"

    const-string/jumbo v4, "update plugin is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return v2

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    monitor-enter v3

    .line 274
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 275
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->convertPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v0

    .line 277
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    if-eqz v0, :cond_1

    .line 278
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 279
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 281
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v2, "plugin_id = ?"

    const-string/jumbo v4, "plugincache_v2"

    invoke-virtual {p0, v0, v2, v1, v4}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 283
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected update(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;I)I
    .locals 5
    .param p1, "info"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    .param p2, "state"    # I

    .prologue
    const/4 v2, -0x1

    .line 296
    if-nez p1, :cond_0

    .line 297
    const-string/jumbo v3, "PluginDatabase"

    const-string/jumbo v4, "update pluginInfo is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return v2

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mSqlLock:Ljava/lang/Object;

    monitor-enter v3

    .line 302
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->open(Landroid/content/Context;)Z

    .line 303
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->convertPluginInfo(Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v1

    .line 304
    .local v1, "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v1, p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluignState(I)V

    .line 306
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 307
    invoke-virtual {v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 309
    .local v0, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v2, "plugin_id = ?"

    const-string/jumbo v4, "plugincache_v2"

    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/iflytek/framework/plugin/internal/PluginDatabase;->update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 311
    .end local v0    # "selectionArgs":[Ljava/lang/String;
    .end local v1    # "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "sqlInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
