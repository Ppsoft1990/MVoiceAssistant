.class public abstract Lnn;
.super Ljava/lang/Object;
.source "CommonDatabase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final SQL_CREATE:Ljava/lang/String; = " CREATE TABLE IF NOT EXISTS "

.field public static final SQL_INTEGERID:Ljava/lang/String; = " INTEGER DEFAULT \'1\' PRIMARY KEY AUTOINCREMENT "

.field public static final SQL_LEFT_KUO:Ljava/lang/String; = " ( "

.field public static final SQL_RIGHT_KUO:Ljava/lang/String; = " ) "

.field public static final SQL_SEP:Ljava/lang/String; = " , "

.field public static final SQL_TEXT:Ljava/lang/String; = " TEXT "

.field private static final TAG:Ljava/lang/String; = "CommonDatabase"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDatabaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 43
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lnn;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lnn;->mDatabaseName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "createTableName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    const/4 v1, 0x0

    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    :try_start_1
    iget-object v2, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    const/4 v1, 0x1

    .line 141
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const-string/jumbo v2, "CommonDatabase"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized delete(JLjava/lang/String;)I
    .locals 3
    .param p1, "id"    # J
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 88
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lnn;->delete(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
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

.method public declared-synchronized delete(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 92
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 94
    .local v0, "deleteCount":I
    :try_start_0
    iget-object v2, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 99
    :goto_0
    monitor-exit p0

    return v0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "CommonDatabase"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized deleteAll(Ljava/lang/String;)I
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 109
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .line 111
    .local v0, "deleteCount":I
    :try_start_0
    iget-object v2, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 115
    :goto_0
    monitor-exit p0

    return v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "CommonDatabase"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    invoke-virtual {p0}, Lnn;->close()V

    .line 121
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 122
    return-void
.end method

.method protected declared-synchronized getTableSize(Ljava/lang/String;)I
    .locals 11
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 338
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    monitor-enter p0

    const/4 v10, 0x0

    .line 339
    .local v10, "size":I
    const/4 v8, 0x0

    .line 342
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 343
    if-eqz v8, :cond_0

    .line 344
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v10

    .line 349
    :cond_0
    if-eqz v8, :cond_1

    .line 350
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :cond_1
    :goto_0
    monitor-exit p0

    return v10

    .line 346
    :catch_0
    move-exception v9

    .line 347
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "CommonDatabase"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    if-eqz v8, :cond_1

    .line 350
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 338
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 349
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_2

    .line 350
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 4
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lnn;->obtainContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    .line 153
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 161
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "CommonDatabase"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract obtainContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public abstract obtainDBObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public declared-synchronized open(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 55
    :cond_0
    if-eqz p1, :cond_3

    .line 57
    :try_start_1
    iget-object v3, p0, Lnn;->mDatabaseName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-string/jumbo v1, "CommonDatabase"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move v1, v2

    .line 63
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move v1, v2

    .line 66
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    monitor-enter p0

    const/4 v8, 0x0

    .line 206
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 208
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_0
    iget-object v0, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 209
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0, v8}, Lnn;->obtainDBObject(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v10

    .line 213
    .local v10, "info":Ljava/lang/Object;, "TT;"
    if-eqz v10, :cond_1

    .line 214
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    move-object v11, v12

    .line 221
    .end local v10    # "info":Ljava/lang/Object;, "TT;"
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_2
    if-eqz v8, :cond_3

    .line 222
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v11

    .line 218
    :catch_0
    move-exception v9

    .line 219
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string/jumbo v0, "CommonDatabase"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    if-eqz v8, :cond_3

    .line 222
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 205
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v8, :cond_4

    .line 222
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 221
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_2
    move-exception v0

    move-object v11, v12

    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    goto :goto_2

    .line 218
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catch_1
    move-exception v9

    move-object v11, v12

    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    goto :goto_1
.end method

.method public declared-synchronized queryAll(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    const/4 v1, 0x0

    .line 197
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3, p1}, Lnn;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 200
    :goto_0
    monitor-exit p0

    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "CommonDatabase"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized queryById(JLjava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p1, "id"    # J
    .param p3, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    monitor-enter p0

    const/4 v8, 0x0

    .line 238
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 240
    .local v10, "info":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 242
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0, v8}, Lnn;->obtainDBObject(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 248
    .end local v10    # "info":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v8, :cond_1

    .line 249
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v10

    .line 245
    .restart local v10    # "info":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v9

    .line 246
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "CommonDatabase"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v9}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    if-eqz v8, :cond_1

    .line 249
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 237
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "info":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 248
    .restart local v10    # "info":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_2

    .line 249
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected declared-synchronized queryLatestByCnt(Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "cnt"    # I
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    monitor-enter p0

    const/4 v10, 0x0

    .line 303
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 306
    .local v13, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_0
    iget-object v1, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 307
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 309
    .end local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local v14, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v9, 0x0

    .line 311
    .local v9, "count":I
    :cond_0
    :try_start_1
    invoke-virtual {p0, v10}, Lnn;->obtainDBObject(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v12

    .line 312
    .local v12, "info":Ljava/lang/Object;, "TT;"
    if-eqz v12, :cond_3

    .line 313
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 314
    add-int/lit8 v9, v9, 0x1

    .line 315
    move/from16 v0, p2

    if-lt v9, v0, :cond_3

    move-object v13, v14

    .line 324
    .end local v9    # "count":I
    .end local v12    # "info":Ljava/lang/Object;, "TT;"
    .end local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 325
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v13

    .line 319
    .end local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v9    # "count":I
    .restart local v12    # "info":Ljava/lang/Object;, "TT;"
    .restart local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_3
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_0

    move-object v13, v14

    .end local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    goto :goto_0

    .line 321
    .end local v9    # "count":I
    .end local v12    # "info":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v11

    .line 322
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string/jumbo v1, "CommonDatabase"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v11}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 324
    if-eqz v10, :cond_2

    .line 325
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 302
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 324
    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v10, :cond_4

    .line 325
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 324
    .end local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v9    # "count":I
    .restart local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_2
    move-exception v1

    move-object v13, v14

    .end local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    goto :goto_3

    .line 321
    .end local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catch_1
    move-exception v11

    move-object v13, v14

    .end local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    goto :goto_2
.end method

.method protected declared-synchronized queryOldestByCnt(Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "cnt"    # I
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    monitor-enter p0

    const/4 v10, 0x0

    .line 265
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 268
    .local v13, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_0
    iget-object v1, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 269
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    .end local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local v14, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v9, 0x0

    .line 273
    .local v9, "count":I
    :cond_0
    :try_start_1
    invoke-virtual {p0, v10}, Lnn;->obtainDBObject(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v12

    .line 274
    .local v12, "info":Ljava/lang/Object;, "TT;"
    if-eqz v12, :cond_3

    .line 275
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 276
    add-int/lit8 v9, v9, 0x1

    .line 277
    move/from16 v0, p2

    if-lt v9, v0, :cond_3

    move-object v13, v14

    .line 286
    .end local v9    # "count":I
    .end local v12    # "info":Ljava/lang/Object;, "TT;"
    .end local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 287
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v13

    .line 281
    .end local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v9    # "count":I
    .restart local v12    # "info":Ljava/lang/Object;, "TT;"
    .restart local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_3
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_0

    move-object v13, v14

    .end local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    goto :goto_0

    .line 283
    .end local v9    # "count":I
    .end local v12    # "info":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v11

    .line 284
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string/jumbo v1, "CommonDatabase"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v11}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 286
    if-eqz v10, :cond_2

    .line 287
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 264
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 286
    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v10, :cond_4

    .line 287
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 286
    .end local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v9    # "count":I
    .restart local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catchall_2
    move-exception v1

    move-object v13, v14

    .end local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    goto :goto_3

    .line 283
    .end local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catch_1
    move-exception v11

    move-object v13, v14

    .end local v14    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v13    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    goto :goto_2
.end method

.method protected declared-synchronized update(Ljava/lang/Object;JLjava/lang/String;)I
    .locals 2
    .param p2, "id"    # J
    .param p4, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p4}, Lnn;->update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
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

.method public declared-synchronized update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lnn;, "Lnn<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lnn;->obtainContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    .line 179
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 180
    iget-object v2, p0, Lnn;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p4, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 186
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "CommonDatabase"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
