.class public Lhd;
.super Ljava/lang/Object;
.source "ContactLocationManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhd;->a:Ljava/lang/String;

    return-void
.end method

.method private static a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 199
    :try_start_0
    sget-object v1, Lhd;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/location.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lhd;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v1, Lhd;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v1

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 203
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ContactLocationManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x4

    .line 120
    move-object v2, p1

    .line 121
    .local v2, "fnumber":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 122
    :cond_0
    const/4 v3, 0x0

    .line 194
    :cond_1
    :goto_0
    return-object v3

    .line 124
    :cond_2
    invoke-static {}, Lhd;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 127
    .local v3, "queryLocation":Ljava/lang/String;
    const/4 v5, 0x0

    .line 128
    .local v5, "subNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 129
    .local v4, "sql":Ljava/lang/String;
    invoke-static {p1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    const-string/jumbo v7, "0086"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 133
    const/4 v7, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_4

    const-string/jumbo v7, "00"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 136
    const v7, 0x7f0c0350

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 183
    invoke-static {v0}, Lazj;->a(Landroid/database/Cursor;)V

    .line 184
    invoke-static {}, Lhd;->b()V

    goto :goto_0

    .line 139
    :cond_4
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 141
    const-string/jumbo v7, "10"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_7

    .line 143
    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 156
    :goto_1
    const-string/jumbo v4, "select city_zone.city from city_zone where city_zone.uuid=(select location.city from location where location.uuid=?)"

    .line 170
    :goto_2
    sget-object v7, Lhd;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 171
    if-nez v0, :cond_e

    .line 172
    const-string/jumbo v7, "ContactLocationManager"

    const-string/jumbo v8, "query location cursor is null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_5
    :goto_3
    invoke-static {v0}, Lazj;->a(Landroid/database/Cursor;)V

    .line 184
    invoke-static {}, Lhd;->b()V

    .line 186
    :goto_4
    if-eqz v3, :cond_6

    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 187
    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "tmpStrings":[Ljava/lang/String;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v3, v6, v7

    .line 191
    .end local v6    # "tmpStrings":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v10, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v11, :cond_1

    .line 192
    const-string/jumbo v3, ""

    goto/16 :goto_0

    .line 145
    :cond_7
    move-object v5, p1

    goto :goto_1

    .line 150
    :cond_8
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x7

    if-le v7, v8, :cond_9

    .line 151
    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 153
    :cond_9
    move-object v5, p1

    goto :goto_1

    .line 158
    :cond_a
    const-string/jumbo v7, "0"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 159
    const-string/jumbo v7, "01"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "02"

    .line 160
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 161
    :cond_b
    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 168
    :goto_5
    const-string/jumbo v4, "select city from city_zone where zone=?"

    goto :goto_2

    .line 163
    :cond_c
    const/4 v7, 0x1

    const/4 v8, 0x4

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 166
    :cond_d
    move-object v5, p1

    goto :goto_5

    .line 173
    :cond_e
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_f

    .line 174
    const-string/jumbo v7, "ContactLocationManager"

    const-string/jumbo v8, "query location cursor size is 0"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v7, "ContactLocationManager"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    invoke-static {v0}, Lazj;->a(Landroid/database/Cursor;)V

    .line 184
    invoke-static {}, Lhd;->b()V

    goto/16 :goto_4

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 177
    const-string/jumbo v7, "city"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    goto/16 :goto_3

    .line 183
    :catchall_0
    move-exception v7

    invoke-static {v0}, Lazj;->a(Landroid/database/Cursor;)V

    .line 184
    invoke-static {}, Lhd;->b()V

    throw v7
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccLOCATION_VERSION"

    .line 67
    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "version":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v1, "ContactLocationManager"

    const-string/jumbo v2, "location database version is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccLOCATION_VERSION"

    const-string/jumbo v3, "1.3"

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lhd;->b(Landroid/content/Context;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string/jumbo v1, "1.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    const-string/jumbo v1, "ContactLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "location database current version is 1.3cached version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccLOCATION_VERSION"

    const-string/jumbo v3, "1.3"

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0}, Lhd;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 80
    :cond_2
    const-string/jumbo v1, "ContactLocationManager"

    const-string/jumbo v2, "version check is right"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/location.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-static {p0}, Lhd;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static b()V
    .locals 3

    .prologue
    .line 210
    :try_start_0
    sget-object v1, Lhd;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Lhd;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 212
    const/4 v1, 0x0

    sput-object v1, Lhd;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ContactLocationManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string/jumbo v4, "ContactLocationManager"

    const-string/jumbo v5, "unzipDataBase from assets to rom"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/location.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/location.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 93
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    .local v2, "startTime":J
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "contact_location.zip"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/location_crypto.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhh;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1

    .line 95
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .line 96
    const-string/jumbo v4, "ContactLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypto contact_location database success. time usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/location_crypto.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/location.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhh;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    const-string/jumbo v4, "ContactLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncompress contact_location database success. time usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/location_crypto.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 111
    .end local v1    # "success":Z
    .end local v2    # "startTime":J
    :goto_1
    return-void

    .line 102
    .restart local v1    # "success":Z
    .restart local v2    # "startTime":J
    :cond_1
    const-string/jumbo v4, "ContactLocationManager"

    const-string/jumbo v5, "uncompress contact_location database fail."

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v1    # "success":Z
    .end local v2    # "startTime":J
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "ContactLocationManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "success":Z
    .restart local v2    # "startTime":J
    :cond_2
    :try_start_1
    const-string/jumbo v4, "ContactLocationManager"

    const-string/jumbo v5, "decrypto contact_location database fail."

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
