.class Lnq$1;
.super Ljava/lang/Object;
.source "DownloadTaskDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnq;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnq;


# direct methods
.method constructor <init>(Lnq;)V
    .locals 0
    .param p1, "this$0"    # Lnq;

    .prologue
    .line 64
    iput-object p1, p0, Lnq$1;->a:Lnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 11

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    .local v0, "currTime":J
    const-string/jumbo v6, "DownloadTaskDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "copyDataIfNeed begin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v6, p0, Lnq$1;->a:Lnq;

    const-string/jumbo v7, "DownloadTask4"

    invoke-static {v6, v7}, Lnq;->a(Lnq;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    const-string/jumbo v6, "DownloadTaskDatabase"

    const-string/jumbo v7, "need copy old data"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v6, p0, Lnq$1;->a:Lnq;

    iget-object v7, p0, Lnq$1;->a:Lnq;

    iget-object v7, v7, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lnq;->open(Landroid/content/Context;)Z

    .line 73
    iget-object v6, p0, Lnq$1;->a:Lnq;

    invoke-static {v6}, Lnq;->a(Lnq;)Ljava/util/List;

    move-result-object v4

    .line 74
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    const-string/jumbo v6, "DownloadTaskDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "copyDataIfNeed list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v6, p0, Lnq$1;->a:Lnq;

    invoke-static {v6, v4}, Lnq;->a(Lnq;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "listModified":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v5, :cond_0

    .line 77
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 78
    .local v3, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    iget-object v7, p0, Lnq$1;->a:Lnq;

    iget-object v8, p0, Lnq$1;->a:Lnq;

    iget-object v8, v8, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lnq;->open(Landroid/content/Context;)Z

    .line 79
    iget-object v7, p0, Lnq$1;->a:Lnq;

    const-string/jumbo v8, "DownloadTask5"

    invoke-virtual {v7, v3, v8}, Lnq;->insert(Ljava/lang/Object;Ljava/lang/String;)J

    .line 80
    iget-object v7, p0, Lnq$1;->a:Lnq;

    invoke-virtual {v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v8

    const-string/jumbo v10, "DownloadTask4"

    invoke-virtual {v7, v8, v9, v10}, Lnq;->delete(JLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 91
    .end local v0    # "currTime":J
    .end local v3    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .end local v5    # "listModified":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :catch_0
    move-exception v2

    .line 92
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "DownloadTaskDatabase"

    const-string/jumbo v7, "copy data failed"

    invoke-static {v6, v7, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :try_start_2
    iget-object v6, p0, Lnq$1;->a:Lnq;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lnq;->a(Lnq;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 83
    .restart local v0    # "currTime":J
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .restart local v5    # "listModified":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :cond_0
    :try_start_3
    iget-object v6, p0, Lnq$1;->a:Lnq;

    iget-object v7, p0, Lnq$1;->a:Lnq;

    iget-object v7, v7, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lnq;->open(Landroid/content/Context;)Z

    .line 84
    iget-object v6, p0, Lnq$1;->a:Lnq;

    iget-object v6, v6, Lnq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "DROP TABLE IF EXISTS DownloadTask4"

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    iget-object v6, p0, Lnq$1;->a:Lnq;

    invoke-virtual {v6}, Lnq;->close()V

    .line 89
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .end local v5    # "listModified":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :goto_2
    const-string/jumbo v6, "DownloadTaskDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "copyDataIfNeed end waste time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :try_start_4
    iget-object v6, p0, Lnq$1;->a:Lnq;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lnq;->a(Lnq;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 68
    .end local v0    # "currTime":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 87
    .restart local v0    # "currTime":J
    :cond_1
    :try_start_5
    const-string/jumbo v6, "DownloadTaskDatabase"

    const-string/jumbo v7, "not need copy old data"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 94
    .end local v0    # "currTime":J
    :catchall_1
    move-exception v6

    :try_start_6
    iget-object v7, p0, Lnq$1;->a:Lnq;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lnq;->a(Lnq;Z)Z

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
