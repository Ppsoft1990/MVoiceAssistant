.class public Lcom/migu/voiceads/utils/download/b/d;
.super Lcom/migu/voiceads/utils/download/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/migu/voiceads/utils/download/b/a",
        "<",
        "Lcom/migu/voiceads/utils/download/b/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "donwload_task.db"

    invoke-direct {p0, p1, v0}, Lcom/migu/voiceads/utils/download/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/download/b/d;->a(Landroid/content/Context;)Z

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS DownloadTask6 ( id INTEGER DEFAULT \'1\' PRIMARY KEY AUTOINCREMENT, type INTEGER, url TEXT NOT NULL, title TEXT, retry_cnt INTEGER, view INTEGER, specified_path TEXT, file_path TEXT, mime_type TEXT, status INTEGER, error_code INTEGER, total_length INTEGER, current_length INTEGER, visibility INTEGER, foreground INTEGER, delete_db INTEGER, cover INTEGER, range INTEGER, etag TEXT, additional_info TEXT, fsname TEXT, post_data BLOB)"

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/migu/voiceads/utils/download/b/c;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/d;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Landroid/content/Context;)Z

    iget-wide v0, p1, Lcom/migu/voiceads/utils/download/b/c;->b:J

    const-string/jumbo v2, "DownloadTask6"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/migu/voiceads/utils/download/b/d;->a(Ljava/lang/Object;JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    check-cast p1, Lcom/migu/voiceads/utils/download/b/c;

    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/download/b/d;->c(Lcom/migu/voiceads/utils/download/b/c;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(J)Lcom/migu/voiceads/utils/download/b/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/d;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Landroid/content/Context;)Z

    const-string/jumbo v0, "DownloadTask6"

    invoke-virtual {p0, p1, p2, v0}, Lcom/migu/voiceads/utils/download/b/d;->b(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/voiceads/utils/download/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/migu/voiceads/utils/download/b/d;->b(Landroid/database/Cursor;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(J)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/d;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Landroid/content/Context;)Z

    const-string/jumbo v0, "DownloadTask6"

    invoke-virtual {p0, p1, p2, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/migu/voiceads/utils/download/b/c;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/d;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Landroid/content/Context;)Z

    const-string/jumbo v0, "DownloadTask6"

    invoke-virtual {p0, p1, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Landroid/database/Cursor;)Lcom/migu/voiceads/utils/download/b/c;
    .locals 29

    if-eqz p1, :cond_6

    new-instance v3, Lcom/migu/voiceads/utils/download/b/c;

    const-string/jumbo v2, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    const-string/jumbo v2, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v2, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "url"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "file_path"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "specified_path"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "mime_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v2, "error_code"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string/jumbo v2, "total_length"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    const-string/jumbo v2, "current_length"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    const-string/jumbo v2, "visibility"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    const/16 v18, 0x1

    :goto_0
    const-string/jumbo v2, "etag"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v2, "retry_cnt"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string/jumbo v2, "foreground"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v2, v0, :cond_1

    const/16 v21, 0x1

    :goto_1
    const-string/jumbo v2, "view"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_2

    const/16 v22, 0x1

    :goto_2
    const-string/jumbo v2, "range"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_3

    const/16 v23, 0x1

    :goto_3
    const-string/jumbo v2, "cover"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_4

    const/16 v24, 0x1

    :goto_4
    const-string/jumbo v2, "delete_db"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v2, v0, :cond_5

    const/16 v25, 0x1

    :goto_5
    const-string/jumbo v2, "additional_info"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v2, "post_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    const-string/jumbo v2, "fsname"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v3 .. v28}, Lcom/migu/voiceads/utils/download/b/c;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZLjava/lang/String;IZZZZZLjava/lang/String;[BLjava/lang/String;)V

    :goto_6
    return-object v3

    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_1
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    :cond_3
    const/16 v23, 0x0

    goto :goto_3

    :cond_4
    const/16 v24, 0x0

    goto :goto_4

    :cond_5
    const/16 v25, 0x0

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_6
.end method

.method public declared-synchronized b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/migu/voiceads/utils/download/b/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/d;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Landroid/content/Context;)Z

    const-string/jumbo v0, "DownloadTask6"

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/b/d;->b(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(Lcom/migu/voiceads/utils/download/b/c;)Landroid/content/ContentValues;
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "type"

    iget v2, p1, Lcom/migu/voiceads/utils/download/b/c;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "url"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "post_data"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->g:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v1, "file_path"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "specified_path"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mime_type"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    iget v2, p1, Lcom/migu/voiceads/utils/download/b/c;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "error_code"

    iget v2, p1, Lcom/migu/voiceads/utils/download/b/c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "total_length"

    iget-wide v2, p1, Lcom/migu/voiceads/utils/download/b/c;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "current_length"

    iget-wide v2, p1, Lcom/migu/voiceads/utils/download/b/c;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "visibility"

    iget-boolean v2, p1, Lcom/migu/voiceads/utils/download/b/c;->t:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "etag"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "view"

    iget-boolean v2, p1, Lcom/migu/voiceads/utils/download/b/c;->u:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "range"

    iget-boolean v2, p1, Lcom/migu/voiceads/utils/download/b/c;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "delete_db"

    iget-boolean v2, p1, Lcom/migu/voiceads/utils/download/b/c;->w:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "retry_cnt"

    iget v2, p1, Lcom/migu/voiceads/utils/download/b/c;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "additional_info"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "delete_db"

    iget-boolean v2, p1, Lcom/migu/voiceads/utils/download/b/c;->w:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "cover"

    iget-boolean v2, p1, Lcom/migu/voiceads/utils/download/b/c;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "foreground"

    iget-boolean v2, p1, Lcom/migu/voiceads/utils/download/b/c;->v:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "foreground"

    iget-boolean v2, p1, Lcom/migu/voiceads/utils/download/b/c;->v:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "specified_path"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "fsname"

    iget-object v2, p1, Lcom/migu/voiceads/utils/download/b/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;
    .locals 9

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/d;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DownloadTask6"

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

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/migu/voiceads/utils/download/b/d;->b(Landroid/database/Cursor;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Lcom/migu/voiceads/utils/download/b/c;
    .locals 9

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/d;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/utils/download/b/d;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/b/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DownloadTask6"

    const/4 v2, 0x0

    const-string/jumbo v3, "fsname=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/migu/voiceads/utils/download/b/d;->b(Landroid/database/Cursor;)Lcom/migu/voiceads/utils/download/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
