.class public Lcom/iflytek/viafly/account/model/UserInfoDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UserInfoDBHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "UserInfoDB_v_1.db"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "user_info"

.field private static final TAG:Ljava/lang/String; = "UserInfoDBHelper"


# instance fields
.field private final HAS_NOT_SET_VOICE_PRINT:I

.field private final HAS_SET_VOICE_PRINT:I

.field private encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

.field private mContext:Landroid/content/Context;

.field private mObjLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string/jumbo v0, "UserInfoDB_v_1.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->HAS_NOT_SET_VOICE_PRINT:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->HAS_SET_VOICE_PRINT:I

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->mObjLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-direct {v0}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    .line 64
    return-void
.end method

.method private attachUserValue(Lcom/iflytek/viafly/account/entity/User;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "user"    # Lcom/iflytek/viafly/account/entity/User;

    .prologue
    .line 348
    if-eqz p1, :cond_2

    .line 349
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "phone_num"

    iget-object v4, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v3, "userid"

    iget-object v4, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v1

    .line 357
    .local v1, "userProfile":Lcom/iflytek/viafly/account/entity/UserProfile;
    if-eqz v1, :cond_0

    .line 359
    const-string/jumbo v3, "portrait_url"

    iget-object v4, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->getPortraitUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v3, "portrait_local_path"

    iget-object v4, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->getPortraitLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v3, "nick_name"

    iget-object v4, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v3, "has_profile_complete"

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->isUserProfileComplete()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 372
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getToken()Lcom/iflytek/viafly/account/entity/UserToken;

    move-result-object v2

    .line 373
    .local v2, "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    if-eqz v2, :cond_1

    .line 374
    const-string/jumbo v3, "token"

    iget-object v4, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/UserToken;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string/jumbo v3, "token_expire_time"

    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/UserToken;->getTokenExpireTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v3, "token_source"

    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/UserToken;->getTokenSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    :cond_1
    const-string/jumbo v3, "login_state"

    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getUserLoginState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string/jumbo v3, "has_set_voice_print"

    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->isVoicePrintPasswordSetted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 381
    const-string/jumbo v3, "extend_field"

    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getExtendField()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string/jumbo v3, "UserInfoDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attachUserValue() | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "userProfile":Lcom/iflytek/viafly/account/entity/UserProfile;
    .end local v2    # "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 92
    const-string/jumbo v2, "UserInfoDBHelper"

    const-string/jumbo v3, "createNewTable()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-nez p1, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 100
    :goto_0
    if-nez p1, :cond_0

    .line 138
    :goto_1
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 98
    const-string/jumbo v2, "UserInfoDBHelper"

    const-string/jumbo v3, "getWritableDatabase() error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "drop table if exists [user_info]"

    .line 107
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "CREATE TABLE [user_info] ([id] INTEGER,[userid] TEXT,[phone_num] TEXT PRIMARY KEY,[portrait_url] TEXT,[portrait_local_path] TEXT,[nick_name] TEXT,[has_profile_complete] INTEGER,[token] TEXT,[token_expire_time] TEXT,[token_source] INTEGER,[login_state] TEXT,[has_set_voice_print] INTEGER,[extend_field] TEXT);"

    .line 134
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 135
    .end local v1    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UserInfoDBHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v2, "UserInfoDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteTable() | name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 83
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drop table if exists ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UserInfoDBHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tabName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 263
    if-nez p1, :cond_1

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 270
    :goto_0
    if-nez p1, :cond_1

    .line 298
    :cond_0
    :goto_1
    return v3

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 268
    const-string/jumbo v5, "UserInfoDBHelper"

    const-string/jumbo v6, "getWritableDatabase() error!"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 274
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz p2, :cond_0

    .line 278
    const/4 v3, 0x0

    .line 279
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 282
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select count(*) as c from sqlite_master where type =\'table\' and name =\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_2

    .line 285
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 287
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 288
    const/4 v3, 0x1

    .line 292
    .end local v0    # "count":I
    :cond_2
    if-eqz v1, :cond_0

    .line 293
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 295
    .end local v4    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 296
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "UserInfoDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private obtainUserValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/account/entity/User;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    .line 621
    if-nez p1, :cond_0

    .line 622
    const/4 v6, 0x0

    .line 665
    :goto_0
    return-object v6

    .line 625
    :cond_0
    new-instance v6, Lcom/iflytek/viafly/account/entity/User;

    invoke-direct {v6}, Lcom/iflytek/viafly/account/entity/User;-><init>()V

    .line 626
    .local v6, "user":Lcom/iflytek/viafly/account/entity/User;
    iget-object v8, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    const-string/jumbo v9, "phone_num"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/iflytek/viafly/account/entity/User;->setPhoneNum(Ljava/lang/String;)V

    .line 627
    iget-object v8, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    const-string/jumbo v9, "userid"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/iflytek/viafly/account/entity/User;->setUserId(Ljava/lang/String;)V

    .line 629
    new-instance v5, Lcom/iflytek/viafly/account/entity/UserToken;

    invoke-direct {v5}, Lcom/iflytek/viafly/account/entity/UserToken;-><init>()V

    .line 630
    .local v5, "token":Lcom/iflytek/viafly/account/entity/UserToken;
    iget-object v8, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    const-string/jumbo v9, "token"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/account/entity/UserToken;->setToken(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v8, "token_expire_time"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/account/entity/UserToken;->setTokenExpireTime(Ljava/lang/String;)V

    .line 632
    const-string/jumbo v8, "token_source"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/account/entity/UserToken;->setTokenSource(I)V

    .line 634
    invoke-virtual {v6, v5}, Lcom/iflytek/viafly/account/entity/User;->setToken(Lcom/iflytek/viafly/account/entity/UserToken;)V

    .line 636
    new-instance v4, Lcom/iflytek/viafly/account/entity/UserProfile;

    invoke-direct {v4}, Lcom/iflytek/viafly/account/entity/UserProfile;-><init>()V

    .line 637
    .local v4, "profile":Lcom/iflytek/viafly/account/entity/UserProfile;
    iget-object v8, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    const-string/jumbo v9, "portrait_url"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/iflytek/viafly/account/entity/UserProfile;->setPortraitUrl(Ljava/lang/String;)V

    .line 638
    iget-object v8, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    const-string/jumbo v9, "portrait_local_path"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/iflytek/viafly/account/entity/UserProfile;->setPortraitLocalPath(Ljava/lang/String;)V

    .line 639
    iget-object v8, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    const-string/jumbo v9, "nick_name"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/iflytek/viafly/account/entity/UserProfile;->setNickName(Ljava/lang/String;)V

    .line 641
    const-string/jumbo v8, "has_profile_complete"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 642
    .local v1, "hasProfileComplete":I
    if-ne v1, v7, :cond_2

    move v0, v7

    .line 643
    .local v0, "hasComplete":Z
    :goto_1
    invoke-virtual {v4, v0}, Lcom/iflytek/viafly/account/entity/UserProfile;->setUserProfileComplete(Z)V

    .line 644
    invoke-virtual {v6, v4}, Lcom/iflytek/viafly/account/entity/User;->setUserProfile(Lcom/iflytek/viafly/account/entity/UserProfile;)V

    .line 654
    const-string/jumbo v8, "login_state"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/iflytek/viafly/account/entity/User;->setUserLoginState(I)V

    .line 655
    const-string/jumbo v8, "has_set_voice_print"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 656
    .local v2, "hasSetVP":I
    const/4 v3, 0x0

    .line 657
    .local v3, "hasSetted":Z
    if-ne v2, v7, :cond_1

    .line 658
    const/4 v3, 0x1

    .line 660
    :cond_1
    invoke-virtual {v6, v3}, Lcom/iflytek/viafly/account/entity/User;->setVoicePrintPasswordSetted(Z)V

    .line 662
    const-string/jumbo v7, "extend_field"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/account/entity/User;->setExtendField(Ljava/lang/String;)V

    .line 664
    const-string/jumbo v7, "UserInfoDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "obtainUserValue user : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/iflytek/viafly/account/entity/User;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 642
    .end local v0    # "hasComplete":Z
    .end local v2    # "hasSetVP":I
    .end local v3    # "hasSetted":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 25
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 142
    const-string/jumbo v22, "UserInfoDBHelper"

    const-string/jumbo v23, "updateTable()"

    invoke-static/range {v22 .. v23}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-nez p1, :cond_1

    .line 145
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 150
    :goto_0
    if-nez p1, :cond_1

    .line 151
    const-string/jumbo v22, "UserInfoDBHelper"

    const-string/jumbo v23, "db == null, error!"

    invoke-static/range {v22 .. v23}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    :goto_1
    return-void

    .line 146
    :catch_0
    move-exception v5

    .line 147
    .local v5, "e":Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 148
    const-string/jumbo v22, "UserInfoDBHelper"

    const-string/jumbo v23, "getWritableDatabase() error!"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 156
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    const-string/jumbo v22, "user_info"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 157
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 161
    :cond_3
    const/4 v11, 0x0

    .line 163
    .local v11, "oldColumnsObject":Ljava/lang/Object;
    :try_start_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "com.iflytek.viafly.account.model.UserInfoColumns_Ver"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    move-object v3, v11

    .line 169
    check-cast v3, Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;

    .line 171
    .local v3, "columnsHandler":Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;
    const-string/jumbo v13, "select * from user_info"

    .line 172
    .local v13, "sql":Ljava/lang/String;
    const/16 v18, 0x0

    .line 173
    .local v18, "userInfoMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 175
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v3, v4}, Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;->convertDataToMap(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v18

    .line 180
    if-eqz v4, :cond_4

    .line 181
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_4
    if-eqz v18, :cond_0

    .line 189
    const/4 v6, 0x0

    .line 191
    .local v6, "firstUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    :try_start_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "com.iflytek.viafly.account.model.UserInfoColumns_Ver"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, p2, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "firstUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    check-cast v6, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 196
    .restart local v6    # "firstUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    move-object v12, v6

    .line 197
    .local v12, "oldUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    const/4 v14, 0x0

    .line 198
    .local v14, "succesorUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    add-int/lit8 v15, p2, 0x2

    .local v15, "tmpVersion":I
    :goto_2
    move/from16 v0, p3

    if-gt v15, v0, :cond_6

    .line 199
    const-string/jumbo v22, "UserInfoDBHelper"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "com.iflytek.viafly.account.model.UserInfoColumns_Ver"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    move-object v14, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 205
    :goto_3
    invoke-virtual {v12, v14}, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;->setSuccessor(Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;)V

    .line 206
    move-object v12, v14

    .line 198
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 164
    .end local v3    # "columnsHandler":Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v6    # "firstUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .end local v12    # "oldUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .end local v13    # "sql":Ljava/lang/String;
    .end local v14    # "succesorUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .end local v15    # "tmpVersion":I
    .end local v18    # "userInfoMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_1
    move-exception v5

    .line 165
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v22, "UserInfoDBHelper"

    const-string/jumbo v23, "Exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 176
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "columnsHandler":Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "sql":Ljava/lang/String;
    .restart local v18    # "userInfoMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_2
    move-exception v5

    .line 177
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v22, "UserInfoDBHelper"

    const-string/jumbo v23, "Exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    if-eqz v4, :cond_0

    .line 181
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 180
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    if-eqz v4, :cond_5

    .line 181
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v22

    .line 192
    :catch_3
    move-exception v5

    .line 193
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v22, "UserInfoDBHelper"

    const-string/jumbo v23, "Exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 202
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "firstUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .restart local v12    # "oldUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .restart local v14    # "succesorUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .restart local v15    # "tmpVersion":I
    :catch_4
    move-exception v5

    .line 203
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v22, "UserInfoDBHelper"

    const-string/jumbo v23, "Exception"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 208
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;->onUpgrade(Ljava/util/List;)V

    .line 210
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v19, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/account/entity/User;>;"
    invoke-static/range {v18 .. v18}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 212
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 214
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v17, Lcom/iflytek/viafly/account/entity/User;

    invoke-direct/range {v17 .. v17}, Lcom/iflytek/viafly/account/entity/User;-><init>()V

    .line 215
    .local v17, "user":Lcom/iflytek/viafly/account/entity/User;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    move-object/from16 v24, v0

    const-string/jumbo v22, "phone_num"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setPhoneNum(Ljava/lang/String;)V

    .line 217
    new-instance v21, Lcom/iflytek/viafly/account/entity/UserToken;

    invoke-direct/range {v21 .. v21}, Lcom/iflytek/viafly/account/entity/UserToken;-><init>()V

    .line 218
    .local v21, "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    move-object/from16 v24, v0

    const-string/jumbo v22, "token"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/account/entity/UserToken;->setToken(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v22, "token_expire_time"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Lcom/iflytek/viafly/account/entity/UserToken;->setTokenExpireTime(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v22, "token_source"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 221
    .local v16, "tokenSource":I
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/UserToken;->setTokenSource(I)V

    .line 223
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setToken(Lcom/iflytek/viafly/account/entity/UserToken;)V

    .line 225
    new-instance v20, Lcom/iflytek/viafly/account/entity/UserProfile;

    invoke-direct/range {v20 .. v20}, Lcom/iflytek/viafly/account/entity/UserProfile;-><init>()V

    .line 226
    .local v20, "userProfile":Lcom/iflytek/viafly/account/entity/UserProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    move-object/from16 v24, v0

    const-string/jumbo v22, "portrait_url"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->setPortraitUrl(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    move-object/from16 v24, v0

    const-string/jumbo v22, "portrait_local_path"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->setPortraitLocalPath(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    move-object/from16 v24, v0

    const-string/jumbo v22, "nick_name"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getDecryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/UserProfile;->setNickName(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v22, "has_profile_complete"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/4 v7, 0x1

    .line 230
    .local v7, "isProfileComplete":Z
    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/account/entity/UserProfile;->setUserProfileComplete(Z)V

    .line 231
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/entity/User;->setUserProfile(Lcom/iflytek/viafly/account/entity/UserProfile;)V

    .line 233
    const-string/jumbo v22, "login_state"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 234
    .local v9, "loginState":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/account/entity/User;->setUserLoginState(I)V

    .line 236
    const-string/jumbo v22, "has_set_voice_print"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/4 v8, 0x1

    .line 237
    .local v8, "isVoicePrintPasswordSetted":Z
    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/account/entity/User;->setVoicePrintPasswordSetted(Z)V

    .line 241
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 229
    .end local v7    # "isProfileComplete":Z
    .end local v8    # "isVoicePrintPasswordSetted":Z
    .end local v9    # "loginState":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 236
    .restart local v7    # "isProfileComplete":Z
    .restart local v9    # "loginState":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_6

    .line 245
    .end local v7    # "isProfileComplete":Z
    .end local v9    # "loginState":I
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "tokenSource":I
    .end local v17    # "user":Lcom/iflytek/viafly/account/entity/User;
    .end local v20    # "userProfile":Lcom/iflytek/viafly/account/entity/UserProfile;
    .end local v21    # "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_a

    .line 246
    const-string/jumbo v22, "user_info"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 247
    invoke-direct/range {p0 .. p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 248
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/iflytek/viafly/account/entity/User;

    .line 249
    .restart local v17    # "user":Lcom/iflytek/viafly/account/entity/User;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->insertRecord(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/account/entity/User;)I

    goto :goto_7

    .line 252
    .end local v17    # "user":Lcom/iflytek/viafly/account/entity/User;
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public deleteRecord(Ljava/lang/String;)V
    .locals 6
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v4, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v4

    .line 397
    :try_start_0
    const-string/jumbo v3, "UserInfoDBHelper"

    const-string/jumbo v5, "deleteRecord()"

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete from user_info where phone_num= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v5, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 400
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 402
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 407
    :goto_0
    if-nez v0, :cond_0

    .line 408
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    :goto_1
    return-void

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 405
    :try_start_3
    const-string/jumbo v3, "UserInfoDBHelper"

    const-string/jumbo v5, "getWritableDatabase() error!"

    invoke-static {v3, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 411
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 412
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "UserInfoDBHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v4

    goto :goto_1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 410
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sql":Ljava/lang/String;
    :cond_0
    :try_start_5
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public deleteRecords()V
    .locals 6

    .prologue
    .line 421
    iget-object v4, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v4

    .line 422
    :try_start_0
    const-string/jumbo v3, "UserInfoDBHelper"

    const-string/jumbo v5, "deleteRecords()"

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string/jumbo v2, "delete from user_info"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 427
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 432
    :goto_0
    if-nez v0, :cond_0

    .line 433
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    :goto_1
    return-void

    .line 428
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 430
    :try_start_3
    const-string/jumbo v3, "UserInfoDBHelper"

    const-string/jumbo v5, "getWritableDatabase() error!"

    invoke-static {v3, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 436
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 437
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "UserInfoDBHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v4

    goto :goto_1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 435
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sql":Ljava/lang/String;
    :cond_0
    :try_start_5
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public getDeaultUserInfo()Lcom/iflytek/viafly/account/entity/User;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 593
    iget-object v5, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v5

    .line 594
    :try_start_0
    const-string/jumbo v6, "UserInfoDBHelper"

    const-string/jumbo v7, "getDeaultUserInfo()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 598
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string/jumbo v3, "select * from user_info limit 1"

    .line 599
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 600
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 601
    if-nez v0, :cond_1

    .line 610
    if-eqz v0, :cond_0

    .line 611
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    .end local v3    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 604
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 605
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->obtainUserValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/account/entity/User;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 610
    if-eqz v0, :cond_2

    .line 611
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 615
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 610
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 611
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 614
    .end local v3    # "sql":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "UserInfoDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 610
    if-eqz v0, :cond_4

    .line 611
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 610
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_5

    .line 611
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public getUser(Ljava/lang/String;)Lcom/iflytek/viafly/account/entity/User;
    .locals 8
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 501
    iget-object v5, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v5

    .line 502
    :try_start_0
    const-string/jumbo v6, "UserInfoDBHelper"

    const-string/jumbo v7, "getUser()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 506
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select * from user_info where phone_num=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v7, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 508
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 509
    if-nez v0, :cond_1

    .line 518
    if-eqz v0, :cond_0

    .line 519
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    .end local v3    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 512
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 513
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->obtainUserValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/account/entity/User;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 518
    if-eqz v0, :cond_2

    .line 519
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 523
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 518
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 519
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 522
    .end local v3    # "sql":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v2

    .line 516
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "UserInfoDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 518
    if-eqz v0, :cond_4

    .line 519
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 518
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_5

    .line 519
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public getUserByCondition(Ljava/lang/String;)Lcom/iflytek/viafly/account/entity/User;
    .locals 8
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 532
    iget-object v5, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v5

    .line 533
    :try_start_0
    const-string/jumbo v6, "UserInfoDBHelper"

    const-string/jumbo v7, "getUserByCondition()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 537
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select * from user_info where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 539
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 540
    if-nez v0, :cond_1

    .line 549
    if-eqz v0, :cond_0

    .line 550
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    .end local v3    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 543
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 544
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->obtainUserValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/account/entity/User;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 549
    if-eqz v0, :cond_2

    .line 550
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 554
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 549
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 550
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 553
    .end local v3    # "sql":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v2

    .line 547
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "UserInfoDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 549
    if-eqz v0, :cond_4

    .line 550
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 549
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_5

    .line 550
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public getUserInfoByToken(Ljava/lang/String;)Lcom/iflytek/viafly/account/entity/User;
    .locals 8
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 563
    iget-object v5, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v5

    .line 564
    :try_start_0
    const-string/jumbo v6, "UserInfoDBHelper"

    const-string/jumbo v7, "getUser()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 568
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select * from user_info where token=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v7, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 570
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 571
    if-nez v0, :cond_1

    .line 580
    if-eqz v0, :cond_0

    .line 581
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    .end local v3    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 574
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 575
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->obtainUserValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/account/entity/User;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 580
    if-eqz v0, :cond_2

    .line 581
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 585
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 580
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 581
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 584
    .end local v3    # "sql":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 577
    :catch_0
    move-exception v2

    .line 578
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "UserInfoDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 580
    if-eqz v0, :cond_4

    .line 581
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 580
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_5

    .line 581
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public insertRecord(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/account/entity/User;)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "user"    # Lcom/iflytek/viafly/account/entity/User;

    .prologue
    const/4 v5, -0x1

    .line 309
    iget-object v6, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v6

    .line 310
    :try_start_0
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->attachUserValue(Lcom/iflytek/viafly/account/entity/User;)Landroid/content/ContentValues;

    move-result-object v0

    .line 311
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "UserInfoDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertRecord(), value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    if-eqz v0, :cond_0

    .line 314
    if-nez p1, :cond_1

    .line 316
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 321
    :goto_0
    if-nez p1, :cond_1

    .line 322
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v5

    .line 343
    :goto_1
    return v3

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 319
    :try_start_3
    const-string/jumbo v7, "UserInfoDBHelper"

    const-string/jumbo v8, "getWritableDatabase() error!"

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 339
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 340
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "UserInfoDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v5

    goto :goto_1

    .line 326
    :cond_1
    const-wide/16 v8, -0x1

    :try_start_5
    const-string/jumbo v7, "user_info"

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 327
    const-string/jumbo v4, "select LAST_INSERT_ROWID()id"

    .line 328
    .local v4, "sql":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 329
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 330
    const-string/jumbo v7, "id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 331
    .local v3, "id":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 332
    const-string/jumbo v7, "UserInfoDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insert a new user | id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    :try_start_6
    monitor-exit v6

    goto :goto_1

    .line 344
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "id":I
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 335
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 336
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public isUserExist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 488
    const-string/jumbo v2, "UserInfoDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query() | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 490
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from user_info where phone_num=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 492
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 55
    const-string/jumbo v0, "UserInfoDBHelper"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 75
    const-string/jumbo v0, "UserInfoDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDowngrade() | oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 77
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 68
    const-string/jumbo v0, "UserInfoDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade() | oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 70
    return-void
.end method

.method public query(I)Landroid/database/Cursor;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 481
    const-string/jumbo v2, "UserInfoDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query() | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 483
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from user_info where id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 484
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public updateRecord(Lcom/iflytek/viafly/account/entity/User;)I
    .locals 10
    .param p1, "user"    # Lcom/iflytek/viafly/account/entity/User;

    .prologue
    const/4 v6, -0x1

    .line 444
    const-string/jumbo v7, "UserInfoDBHelper"

    const-string/jumbo v8, "updateRecord()"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->attachUserValue(Lcom/iflytek/viafly/account/entity/User;)Landroid/content/ContentValues;

    move-result-object v1

    .line 447
    .local v1, "contentValues":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 449
    const/4 v2, 0x0

    .line 451
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 456
    :goto_0
    if-nez v2, :cond_1

    move v4, v6

    .line 470
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    return v4

    .line 452
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 453
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 454
    :try_start_1
    const-string/jumbo v7, "UserInfoDBHelper"

    const-string/jumbo v8, "getWritableDatabase() error!"

    invoke-static {v7, v8, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 465
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 466
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "UserInfoDBHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move v4, v6

    .line 470
    goto :goto_1

    .line 460
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    const-string/jumbo v5, "phone_num=?"

    .line 461
    .local v5, "where":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->encryptHelper:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 462
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v7, "user_info"

    invoke-virtual {v2, v7, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 463
    .local v4, "row":I
    const-string/jumbo v7, "UserInfoDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update a user | affected row="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
