.class public Lnq;
.super Lnn;
.source "DownloadTaskDatabase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnn",
        "<",
        "Lcom/iflytek/common/download/entities/DownloadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private volatile b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string/jumbo v0, "donwload_task.db"

    invoke-direct {p0, p1, v0}, Lnn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iput-boolean v1, p0, Lnq;->a:Z

    .line 50
    iput-boolean v1, p0, Lnq;->b:Z

    .line 54
    invoke-virtual {p0, p1}, Lnq;->open(Landroid/content/Context;)Z

    .line 55
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS DownloadTask5 ( id INTEGER DEFAULT \'1\' PRIMARY KEY AUTOINCREMENT, type INTEGER, entry_type TEXT, url TEXT NOT NULL, title TEXT, retry_cnt INTEGER, view INTEGER, specified_path TEXT, file_path TEXT, mime_type TEXT, status INTEGER, error_code INTEGER, total_length INTEGER, current_length INTEGER, visibility INTEGER, foreground INTEGER, delete_db INTEGER, cover INTEGER, range INTEGER, etag TEXT, additional_info TEXT, additional_extra TEXT)"

    invoke-virtual {p0, v0}, Lnq;->createTable(Ljava/lang/String;)Z

    .line 56
    invoke-direct {p0}, Lnq;->c()V

    .line 57
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 163
    :cond_0
    const/4 v1, 0x0

    .line 174
    :cond_1
    return-object v1

    .line 165
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 167
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    .line 169
    .local v2, "type":I
    invoke-static {v2}, Lnt;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->setEntryType(Ljava/lang/String;)V

    .line 170
    invoke-static {v2}, Lnt;->b(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->setType(I)V

    .line 171
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lnq;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnq;

    .prologue
    .line 20
    invoke-direct {p0}, Lnq;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lnq;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnq;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lnq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lnq;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnq;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lnq;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lnq;Z)Z
    .locals 0
    .param p0, "x0"    # Lnq;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lnq;->a:Z

    return p1
.end method

.method private b(Landroid/database/Cursor;)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 132
    if-eqz p1, :cond_5

    .line 133
    new-instance v2, Lcom/iflytek/common/download/entities/DownloadInfo;

    const-string/jumbo v3, "id"

    .line 134
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 133
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    const-string/jumbo v5, "type"

    .line 135
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 134
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    const-string/jumbo v7, "title"

    .line 136
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 135
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "url"

    .line 137
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 136
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "file_path"

    .line 138
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 137
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "specified_path"

    .line 139
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 138
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mime_type"

    .line 140
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 139
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "status"

    .line 141
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 140
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v13, "error_code"

    .line 142
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 141
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string/jumbo v14, "total_length"

    .line 143
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 142
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    const-string/jumbo v16, "current_length"

    .line 144
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 143
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-string/jumbo v18, "visibility"

    .line 145
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 144
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string/jumbo v19, "etag"

    .line 146
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 145
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "retry_cnt"

    .line 147
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 146
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string/jumbo v21, "foreground"

    .line 148
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 147
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v21, 0x1

    :goto_0
    const-string/jumbo v22, "view"

    .line 149
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 148
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v22, 0x1

    :goto_1
    const-string/jumbo v23, "range"

    .line 150
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 149
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0x1

    :goto_2
    const-string/jumbo v24, "cover"

    .line 151
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 150
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    const/16 v24, 0x1

    :goto_3
    const-string/jumbo v25, "delete_db"

    .line 152
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 151
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    const/16 v25, 0x1

    :goto_4
    const-string/jumbo v26, "additional_info"

    .line 153
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 152
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-direct/range {v2 .. v27}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;IZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_5
    return-object v2

    .line 147
    :cond_0
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 148
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 149
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 150
    :cond_3
    const/16 v24, 0x0

    goto :goto_3

    .line 151
    :cond_4
    const/16 v25, 0x0

    goto :goto_4

    .line 158
    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private declared-synchronized b(Ljava/lang/String;)Z
    .locals 8
    .param p1, "tabName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 178
    monitor-enter p0

    const/4 v3, 0x0

    .line 179
    .local v3, "result":Z
    if-nez p1, :cond_0

    .line 197
    :goto_0
    monitor-exit p0

    return v5

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 185
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select count(*) as c from sqlite_master where type =\'table\' and name =\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "sql":Ljava/lang/String;
    iget-object v6, p0, Lnq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 190
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 191
    const/4 v3, 0x1

    .end local v0    # "count":I
    :cond_1
    move v5, v3

    .line 197
    goto :goto_0

    .line 194
    .end local v4    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 178
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private c()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lnq;->b:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnq;->b:Z

    .line 64
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnq$1;

    invoke-direct {v1, p0}, Lnq$1;-><init>(Lnq;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized d()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 102
    monitor-enter p0

    const/4 v8, 0x0

    .line 103
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 105
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :try_start_0
    iget-object v0, p0, Lnq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DownloadTask4"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 106
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0, v8}, Lnq;->b(Landroid/database/Cursor;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v10

    .line 110
    .local v10, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v10, :cond_1

    .line 111
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    move-object v11, v12

    .line 118
    .end local v10    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :cond_2
    if-eqz v8, :cond_3

    .line 119
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_0
    move-object v0, v11

    .line 126
    :goto_1
    monitor-exit p0

    return-object v0

    .line 115
    :catch_0
    move-exception v9

    .line 116
    .local v9, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v0, "DownloadTaskDatabase"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    if-eqz v8, :cond_3

    .line 119
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 124
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 125
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v0, "DownloadTaskDatabase"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v13

    .line 126
    goto :goto_1

    .line 118
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    .line 119
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 102
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :catchall_2
    move-exception v0

    move-object v11, v12

    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    goto :goto_3

    .line 115
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :catch_2
    move-exception v9

    move-object v11, v12

    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized a(Lcom/iflytek/common/download/entities/DownloadInfo;)I
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnq;->a:Z

    if-nez v0, :cond_0

    .line 258
    const-string/jumbo v0, "DownloadTaskDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update database not inited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    const/4 v0, -0x1

    .line 263
    :goto_0
    monitor-exit p0

    return v0

    .line 261
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lnq;->open(Landroid/content/Context;)Z

    .line 263
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v0

    const-string/jumbo v2, "DownloadTask5"

    invoke-virtual {p0, p1, v0, v1, v2}, Lnq;->update(Ljava/lang/Object;JLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnq;->a:Z

    if-nez v0, :cond_0

    .line 238
    const-string/jumbo v0, "DownloadTaskDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryById database not inited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    const/4 v0, 0x0

    .line 243
    :goto_0
    monitor-exit p0

    return-object v0

    .line 241
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lnq;->open(Landroid/content/Context;)Z

    .line 243
    const-string/jumbo v0, "DownloadTask5"

    invoke-virtual {p0, p1, p2, v0}, Lnq;->queryById(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 336
    if-eqz p1, :cond_5

    .line 337
    new-instance v2, Lcom/iflytek/common/download/entities/DownloadInfo;

    const-string/jumbo v3, "id"

    .line 338
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 337
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    const-string/jumbo v5, "type"

    .line 339
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v6, "entry_type"

    .line 340
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "title"

    .line 341
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "url"

    .line 342
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "file_path"

    .line 343
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 342
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "specified_path"

    .line 344
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 343
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mime_type"

    .line 345
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 344
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "status"

    .line 346
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 345
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v13, "error_code"

    .line 347
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 346
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string/jumbo v14, "total_length"

    .line 348
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 347
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    const-string/jumbo v16, "current_length"

    .line 349
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 348
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-string/jumbo v18, "visibility"

    .line 350
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 349
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string/jumbo v19, "etag"

    .line 351
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 350
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "retry_cnt"

    .line 352
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 351
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string/jumbo v21, "foreground"

    .line 353
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 352
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v21, 0x1

    :goto_0
    const-string/jumbo v22, "view"

    .line 354
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 353
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v22, 0x1

    :goto_1
    const-string/jumbo v23, "range"

    .line 355
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 354
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0x1

    :goto_2
    const-string/jumbo v24, "cover"

    .line 356
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 355
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    const/16 v24, 0x1

    :goto_3
    const-string/jumbo v25, "delete_db"

    .line 357
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 356
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    const/16 v25, 0x1

    :goto_4
    const-string/jumbo v26, "additional_info"

    .line 358
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "additional_extra"

    .line 359
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v2 .. v27}, Lcom/iflytek/common/download/entities/DownloadInfo;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;IZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_5
    return-object v2

    .line 352
    :cond_0
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 353
    :cond_1
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 354
    :cond_2
    const/16 v23, 0x0

    goto :goto_2

    .line 355
    :cond_3
    const/16 v24, 0x0

    goto :goto_3

    .line 356
    :cond_4
    const/16 v25, 0x0

    goto :goto_4

    .line 364
    :cond_5
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnq;->a:Z

    if-nez v0, :cond_0

    .line 208
    const-string/jumbo v0, "DownloadTaskDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryByUrl database not inited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v10

    .line 233
    :goto_0
    monitor-exit p0

    return-object v9

    .line 211
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lnq;->open(Landroid/content/Context;)Z

    .line 213
    iget-object v0, p0, Lnq;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DownloadTask5"

    const/4 v2, 0x0

    const-string/jumbo v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 215
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 217
    .local v9, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    :cond_1
    invoke-virtual {p0, v8}, Lnq;->a(Landroid/database/Cursor;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v9

    .line 220
    if-eqz v9, :cond_2

    .line 225
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 229
    :cond_3
    if-eqz v8, :cond_4

    .line 230
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move-object v9, v10

    .line 233
    goto :goto_0
.end method

.method public declared-synchronized a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnq;->a:Z

    if-nez v0, :cond_0

    .line 248
    const-string/jumbo v0, "DownloadTaskDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryAll database not inited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    const/4 v0, 0x0

    .line 253
    :goto_0
    monitor-exit p0

    return-object v0

    .line 251
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lnq;->open(Landroid/content/Context;)Z

    .line 253
    const-string/jumbo v0, "DownloadTask5"

    invoke-virtual {p0, v0}, Lnq;->queryAll(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 4

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnq;->a:Z

    if-nez v0, :cond_0

    .line 278
    const-string/jumbo v0, "DownloadTaskDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteAll database not inited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    const/4 v0, -0x1

    .line 283
    :goto_0
    monitor-exit p0

    return v0

    .line 281
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lnq;->open(Landroid/content/Context;)Z

    .line 283
    const-string/jumbo v0, "DownloadTask5"

    invoke-virtual {p0, v0}, Lnq;->deleteAll(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnq;->a:Z

    if-nez v0, :cond_0

    .line 268
    const-string/jumbo v0, "DownloadTaskDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete database not inited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    const/4 v0, -0x1

    .line 273
    :goto_0
    monitor-exit p0

    return v0

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lnq;->open(Landroid/content/Context;)Z

    .line 273
    const-string/jumbo v0, "DownloadTask5"

    invoke-virtual {p0, p1, p2, v0}, Lnq;->delete(JLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/iflytek/common/download/entities/DownloadInfo;)J
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnq;->a:Z

    if-nez v0, :cond_0

    .line 294
    const-string/jumbo v0, "DownloadTaskDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert database not inited "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    const-wide/16 v0, -0x1

    .line 299
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 297
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnq;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lnq;->open(Landroid/content/Context;)Z

    .line 299
    const-string/jumbo v0, "DownloadTask5"

    invoke-virtual {p0, p1, v0}, Lnq;->insert(Ljava/lang/Object;Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(Lcom/iflytek/common/download/entities/DownloadInfo;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "object"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 304
    move-object v0, p1

    .line 305
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 306
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "type"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string/jumbo v2, "entry_type"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v2, "url"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v2, "file_path"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v2, "mime_type"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v2, "status"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string/jumbo v2, "error_code"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string/jumbo v2, "total_length"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 315
    const-string/jumbo v2, "current_length"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 316
    const-string/jumbo v2, "visibility"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string/jumbo v2, "etag"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getETag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string/jumbo v2, "title"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v2, "view"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isView()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 320
    const-string/jumbo v2, "range"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isRange()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 321
    const-string/jumbo v2, "delete_db"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isDeleteDB()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 322
    const-string/jumbo v2, "retry_cnt"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getRetryCnt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string/jumbo v2, "additional_info"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v2, "cover"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isCover()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 325
    const-string/jumbo v2, "foreground"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->isForeground()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 326
    const-string/jumbo v2, "specified_path"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getSpecifiedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string/jumbo v2, "additional_extra"

    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected synthetic obtainContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {p0, p1}, Lnq;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic obtainDBObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lnq;->a(Landroid/database/Cursor;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    return-object v0
.end method
