.class Lot;
.super Loo;
.source "PermissionDatabase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Loo",
        "<",
        "Lox;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-string/jumbo v0, "permission.db"

    invoke-direct {p0, p1, v0}, Loo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lot;->d:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    .line 100
    if-nez p1, :cond_1

    .line 101
    const-string/jumbo v8, "PermissionDatabase"

    const-string/jumbo v9, "copyDataBase context is empty"

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lot;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/databases/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "permission.db"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p1}, Low;->a(Landroid/content/Context;)Low;

    move-result-object v8

    const-string/jumbo v9, "PermissionSettings.KEY_DB_VERSION"

    .line 114
    invoke-virtual {v8, v9}, Low;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_0

    .line 115
    :cond_3
    invoke-static {p1}, Low;->a(Landroid/content/Context;)Low;

    move-result-object v8

    const-string/jumbo v9, "PermissionSettings.KEY_DB_VERSION"

    invoke-virtual {v8, v9, v10}, Low;->setSetting(Ljava/lang/String;I)V

    .line 117
    const/4 v7, 0x0

    .line 118
    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 120
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string/jumbo v9, "config/permission.db"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 123
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 125
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 126
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_1
    new-array v0, v8, [B

    .line 128
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 129
    .local v1, "count":I
    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_6

    .line 130
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 132
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 133
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string/jumbo v8, "PermissionDatabase"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    if-eqz v4, :cond_5

    .line 137
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 142
    :cond_5
    :goto_3
    if-eqz v7, :cond_0

    .line 144
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 145
    :catch_1
    move-exception v2

    .line 146
    const-string/jumbo v8, "PermissionDatabase"

    const-string/jumbo v9, "copyDataBase | close inputStream error"

    invoke-static {v8, v9, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_6
    if-eqz v5, :cond_7

    .line 137
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 142
    :cond_7
    :goto_4
    if-eqz v7, :cond_0

    .line 144
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 145
    :catch_2
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "PermissionDatabase"

    const-string/jumbo v9, "copyDataBase | close inputStream error"

    invoke-static {v8, v9, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 139
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "PermissionDatabase"

    const-string/jumbo v9, "copyDataBase | close fileOutputStream error"

    invoke-static {v8, v9, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 138
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    .line 139
    const-string/jumbo v8, "PermissionDatabase"

    const-string/jumbo v9, "copyDataBase | close fileOutputStream error"

    invoke-static {v8, v9, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v4, :cond_8

    .line 137
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 142
    :cond_8
    :goto_6
    if-eqz v7, :cond_9

    .line 144
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 147
    :cond_9
    :goto_7
    throw v8

    .line 138
    :catch_5
    move-exception v2

    .line 139
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "PermissionDatabase"

    const-string/jumbo v10, "copyDataBase | close fileOutputStream error"

    invoke-static {v9, v10, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 145
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "PermissionDatabase"

    const-string/jumbo v10, "copyDataBase | close inputStream error"

    invoke-static {v9, v10, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 132
    :catch_7
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lox;

    invoke-virtual {p0, p1}, Lot;->a(Lox;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lox;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "object"    # Lox;

    .prologue
    .line 59
    move-object v0, p1

    .line 60
    .local v0, "sql":Lox;
    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "appid"

    invoke-virtual {v0}, Lox;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "appname"

    invoke-virtual {v0}, Lox;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v2, "pkgname"

    invoke-virtual {v0}, Lox;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v2, "appkey"

    invoke-virtual {v0}, Lox;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v2, "version"

    invoke-virtual {v0}, Lox;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v2, "priority"

    invoke-virtual {v0}, Lox;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string/jumbo v2, "info"

    invoke-virtual {v0}, Lox;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lot;->b(Landroid/database/Cursor;)Lox;

    move-result-object v0

    return-object v0
.end method

.method public b(Lox;)I
    .locals 4
    .param p1, "updateSql"    # Lox;

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string/jumbo v1, "PermissionDatabase"

    const-string/jumbo v2, "update data is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, -0x1

    .line 183
    :goto_0
    return v1

    .line 180
    :cond_0
    iget-object v2, p0, Lot;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 181
    :try_start_0
    iget-object v1, p0, Lot;->b:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lot;->a(Landroid/content/Context;)Z

    .line 182
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lox;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 183
    .local v0, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v1, "appkey = ?"

    const-string/jumbo v3, "permission"

    invoke-virtual {p0, p1, v1, v0, v3}, Lot;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 184
    .end local v0    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected b(Landroid/database/Cursor;)Lox;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    new-instance v0, Lox;

    invoke-direct {v0}, Lox;-><init>()V

    .line 79
    .local v0, "info":Lox;
    const-string/jumbo v1, "appid"

    .line 80
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 79
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lox;->a(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "appname"

    .line 82
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 81
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lox;->b(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "pkgname"

    .line 84
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 83
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lox;->c(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "appkey"

    .line 86
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 85
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lox;->f(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "version"

    .line 88
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 87
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lox;->d(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "priority"

    .line 90
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 89
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lox;->a(I)V

    .line 91
    const-string/jumbo v1, "info"

    .line 92
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lox;->e(Ljava/lang/String;)V

    .line 95
    .end local v0    # "info":Lox;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lot;->e:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lot;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lot;->b(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lot;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lot;->a(Landroid/content/Context;)Z

    .line 55
    return-void
.end method

.method public c(Lox;)I
    .locals 4
    .param p1, "permissionSql"    # Lox;

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    const-string/jumbo v0, "PermissionDatabase"

    const-string/jumbo v1, "insert permission info is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, -0x1

    .line 208
    :goto_0
    return v0

    .line 206
    :cond_0
    iget-object v1, p0, Lot;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lot;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lot;->a(Landroid/content/Context;)Z

    .line 208
    const-string/jumbo v0, "permission"

    invoke-virtual {p0, p1, v0}, Lot;->a(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    monitor-exit v1

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v1, p0, Lot;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lot;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lot;->a(Landroid/content/Context;)Z

    .line 170
    const-string/jumbo v0, "permission"

    invoke-virtual {p0, v0}, Lot;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
