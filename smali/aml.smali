.class public Laml;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BookDBHelper.java"


# instance fields
.field private a:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

.field private b:Ljava/lang/Object;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-string/jumbo v0, "BookBizDB_v_1.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laml;->b:Ljava/lang/Object;

    .line 49
    const/16 v0, 0x63

    iput v0, p0, Laml;->c:I

    .line 70
    new-instance v0, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-direct {v0}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;-><init>()V

    iput-object v0, p0, Laml;->a:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    .line 71
    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    .line 279
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/Chapter;-><init>()V

    .line 280
    .local v0, "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    const-string/jumbo v1, "chapterID"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v1, "chapterName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v1, "freeType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a(I)V

    .line 283
    const-string/jumbo v1, "orderNum"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b(I)V

    .line 284
    const-string/jumbo v1, "chapterSize"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v1, "state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c(I)V

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 140
    const-string/jumbo v2, "BookDBHelper"

    const-string/jumbo v3, "createBookMarkTable()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez p1, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 148
    :goto_0
    if-nez p1, :cond_0

    .line 174
    :goto_1
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 146
    const-string/jumbo v2, "BookDBHelper"

    const-string/jumbo v3, "getWritableDatabase() error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "drop table if exists [collectTable]"

    .line 155
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v1, "CREATE TABLE [collectTable] ([phoneNum] TEXT,[contentId] TEXT PRIMARY KEY,[contentName] TEXT,[img] TEXT,[desc] TEXT,[cid] TEXT,[reader] TEXT,[detail] TEXT,[bookmarkJsonString] TEXT,[time] TEXT,[extendField] TEXT);"

    .line 170
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 171
    .end local v1    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 172
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BookDBHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string/jumbo v2, "BookDBHelper"

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

    .line 95
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 97
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

    .line 98
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BookDBHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;)Lamo;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 899
    const-string/jumbo v9, "contentId"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, "contentId":Ljava/lang/String;
    const-string/jumbo v9, "contentName"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 901
    .local v4, "contentName":Ljava/lang/String;
    const-string/jumbo v9, "desc"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 902
    .local v5, "desc":Ljava/lang/String;
    const-string/jumbo v9, "img"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 903
    .local v7, "img":Ljava/lang/String;
    const-string/jumbo v9, "cid"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, "cid":Ljava/lang/String;
    const-string/jumbo v9, "detail"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 905
    .local v6, "detail":Ljava/lang/String;
    const-string/jumbo v9, "reader"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 906
    .local v8, "reader":Ljava/lang/String;
    invoke-direct {p0, p1}, Laml;->d(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 908
    .local v1, "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    new-instance v0, Lamo;

    invoke-direct {v0}, Lamo;-><init>()V

    .line 909
    .local v0, "bookMarkInfo":Lamo;
    invoke-virtual {v0, v3}, Lamo;->a(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v0, v4}, Lamo;->b(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, v1}, Lamo;->a(Ljava/util/List;)V

    .line 912
    invoke-virtual {v0, v7}, Lamo;->f(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, v5}, Lamo;->g(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, v6}, Lamo;->d(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v0, v8}, Lamo;->e(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0, v2}, Lamo;->c(Ljava/lang/String;)V

    .line 917
    return-object v0
.end method

.method private b(Lamo;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "bookMarkInfo"    # Lamo;

    .prologue
    const/4 v7, 0x0

    .line 921
    if-eqz p1, :cond_2

    .line 924
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 926
    .local v2, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Lth;->a()Lth;

    move-result-object v6

    invoke-virtual {v6}, Lth;->h()Lcom/iflytek/viafly/account/entity/UserToken;

    move-result-object v5

    .line 927
    .local v5, "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    const-string/jumbo v8, "phoneNum"

    if-eqz v5, :cond_1

    iget-object v6, p0, Laml;->a:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v5}, Lcom/iflytek/viafly/account/entity/UserToken;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string/jumbo v6, "contentId"

    invoke-virtual {p1}, Lamo;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string/jumbo v6, "contentName"

    invoke-virtual {p1}, Lamo;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string/jumbo v6, "desc"

    invoke-virtual {p1}, Lamo;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string/jumbo v6, "img"

    invoke-virtual {p1}, Lamo;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string/jumbo v6, "cid"

    invoke-virtual {p1}, Lamo;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string/jumbo v6, "detail"

    invoke-virtual {p1}, Lamo;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string/jumbo v6, "reader"

    invoke-virtual {p1}, Lamo;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-virtual {p1}, Lamo;->f()Ljava/util/List;

    move-result-object v1

    .line 939
    .local v1, "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    invoke-static {v1}, Lamt;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, "json":Ljava/lang/String;
    const-string/jumbo v6, "bookmarkJsonString"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 943
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lamo$a;

    invoke-virtual {v6}, Lamo$a;->e()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "addTime":Ljava/lang/String;
    const-string/jumbo v6, "time"

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .end local v0    # "addTime":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "BookDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "attachBookMarkValue() | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .end local v1    # "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    :goto_1
    return-object v2

    .restart local v2    # "contentValues":Landroid/content/ContentValues;
    .restart local v5    # "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    :cond_1
    move-object v6, v7

    .line 927
    goto/16 :goto_0

    .line 948
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v5    # "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    :catch_0
    move-exception v3

    .line 949
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BookDBHelper"

    const-string/jumbo v8, ""

    invoke-static {v6, v8, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v2, v7

    .line 952
    goto :goto_1
.end method

.method private b(Lcom/iflytek/viafly/listenbook/entity/Chapter;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "chapter"    # Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .prologue
    const/4 v2, 0x0

    .line 437
    if-eqz p1, :cond_1

    .line 439
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->h()Lcom/iflytek/viafly/account/entity/UserToken;

    move-result-object v1

    .line 442
    .local v1, "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    const-string/jumbo v3, "phoneNum"

    if-eqz v1, :cond_0

    iget-object v2, p0, Laml;->a:Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;

    invoke-virtual {v1}, Lcom/iflytek/viafly/account/entity/UserToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/viafly/account/model/UserInfoDBEncryptHelper;->getEncryptContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string/jumbo v2, "chapterID"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string/jumbo v2, "chapterName"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string/jumbo v2, "contentID"

    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v3

    invoke-virtual {v3}, Lamk;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string/jumbo v2, "freeType"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string/jumbo v2, "orderNum"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string/jumbo v2, "chapterSize"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string/jumbo v2, "state"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string/jumbo v2, "BookDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attachChapterValue() | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "userToken":Lcom/iflytek/viafly/account/entity/UserToken;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 211
    const-string/jumbo v2, "BookDBHelper"

    const-string/jumbo v3, "createChapterListTable()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-nez p1, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 219
    :goto_0
    if-nez p1, :cond_0

    .line 243
    :goto_1
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 217
    const-string/jumbo v2, "BookDBHelper"

    const-string/jumbo v3, "getWritableDatabase() error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "drop table if exists [chapterList]"

    .line 226
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "CREATE TABLE [chapterList] ([phoneNum] TEXT,[chapterID] TEXT PRIMARY KEY,[chapterName] TEXT,[contentID] TEXT,[freeType] TEXT,[orderNum] INTEGER,[chapterSize] TEXT,[state] INTEGER,[extendField] TEXT);"

    .line 239
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 240
    .end local v1    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 241
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BookDBHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private c(Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "historyListenBookItem"    # Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .prologue
    .line 973
    if-eqz p1, :cond_0

    .line 975
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 977
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "img"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string/jumbo v1, "author"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string/jumbo v1, "contentName"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string/jumbo v1, "desc"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string/jumbo v1, "contentId"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string/jumbo v1, "offset"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string/jumbo v1, "time"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string/jumbo v1, "chapterId"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string/jumbo v1, "chapterName"

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string/jumbo v1, "BookDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attachChapterValue() | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/database/Cursor;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 956
    if-nez p1, :cond_0

    .line 957
    const/4 v0, 0x0

    .line 969
    :goto_0
    return-object v0

    .line 959
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;-><init>()V

    .line 960
    .local v0, "historyListenBookItem":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    const-string/jumbo v1, "img"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a(Ljava/lang/String;)V

    .line 961
    const-string/jumbo v1, "author"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f(Ljava/lang/String;)V

    .line 962
    const-string/jumbo v1, "contentName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b(Ljava/lang/String;)V

    .line 963
    const-string/jumbo v1, "desc"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g(Ljava/lang/String;)V

    .line 964
    const-string/jumbo v1, "contentId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c(Ljava/lang/String;)V

    .line 965
    const-string/jumbo v1, "offset"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a(I)V

    .line 966
    const-string/jumbo v1, "time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h(Ljava/lang/String;)V

    .line 967
    const-string/jumbo v1, "chapterId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d(Ljava/lang/String;)V

    .line 968
    const-string/jumbo v1, "chapterName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 692
    const-string/jumbo v2, "BookDBHelper"

    const-string/jumbo v3, "createHistoryTable()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-nez p1, :cond_0

    .line 695
    :try_start_0
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 700
    :goto_0
    if-nez p1, :cond_0

    .line 724
    :goto_1
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 698
    const-string/jumbo v2, "BookDBHelper"

    const-string/jumbo v3, "getWritableDatabase() error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 706
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "drop table if exists [historyTable]"

    .line 707
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 709
    const-string/jumbo v1, "CREATE TABLE [historyTable] ([img] TEXT,[contentId] TEXT PRIMARY KEY,[contentName] TEXT,[chapterId] TEXT,[chapterName] TEXT,[author] TEXT,[desc] TEXT,[offset] INTEGER,[time] TEXT,[extendField] TEXT);"

    .line 720
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 721
    .end local v1    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 722
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BookDBHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private d(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lamo$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1001
    if-nez p1, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-object v1

    .line 1005
    :cond_1
    const-string/jumbo v4, "bookmarkJsonString"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1006
    .local v3, "json":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1009
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lamt;->c(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1011
    .local v1, "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    goto :goto_0

    .line 1012
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "bookMarks":Ljava/util/List;, "Ljava/util/List<Lamo$a;>;"
    :catch_0
    move-exception v2

    .line 1013
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "BookDBHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Lamo;)I
    .locals 10
    .param p1, "bookMarkInfo"    # Lamo;

    .prologue
    const/4 v6, -0x1

    .line 532
    const-string/jumbo v7, "BookDBHelper"

    const-string/jumbo v8, "updateCollect()"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {p0, p1}, Laml;->b(Lamo;)Landroid/content/ContentValues;

    move-result-object v1

    .line 535
    .local v1, "contentValues":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 537
    const/4 v2, 0x0

    .line 539
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 544
    :goto_0
    if-nez v2, :cond_1

    move v4, v6

    .line 558
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    return v4

    .line 540
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 541
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 542
    :try_start_1
    const-string/jumbo v7, "BookDBHelper"

    const-string/jumbo v8, "getWritableDatabase() error!"

    invoke-static {v7, v8, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 553
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 554
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BookDBHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move v4, v6

    .line 558
    goto :goto_1

    .line 548
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    const-string/jumbo v5, "contentId=?"

    .line 549
    .local v5, "where":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lamo;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 550
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v7, "collectTable"

    invoke-virtual {v2, v7, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 551
    .local v4, "row":I
    const-string/jumbo v7, "BookDBHelper"

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

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lamo;)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "bookMarkInfo"    # Lamo;

    .prologue
    const/4 v5, -0x1

    .line 639
    const-string/jumbo v6, "BookDBHelper"

    const-string/jumbo v7, "insertCollect()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v6, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 641
    :try_start_0
    invoke-direct {p0, p2}, Laml;->b(Lamo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 643
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 645
    const-string/jumbo v7, "BookDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertCollect(), value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    if-nez p1, :cond_1

    .line 650
    :try_start_1
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 655
    :goto_0
    if-nez p1, :cond_1

    .line 656
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v5

    .line 677
    :goto_1
    return v3

    .line 651
    :catch_0
    move-exception v2

    .line 652
    .local v2, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 653
    :try_start_3
    const-string/jumbo v7, "BookDBHelper"

    const-string/jumbo v8, "getWritableDatabase() error!"

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 673
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 674
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "BookDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v5

    goto :goto_1

    .line 660
    :cond_1
    const-wide/16 v8, -0x1

    :try_start_5
    const-string/jumbo v7, "collectTable"

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 661
    const-string/jumbo v4, "select LAST_INSERT_ROWID()contentId"

    .line 662
    .local v4, "sql":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 663
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 664
    const-string/jumbo v7, "contentId"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 665
    .local v3, "id":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 666
    const-string/jumbo v7, "BookDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insert a new bookMark | id="

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

    .line 667
    :try_start_6
    monitor-exit v6

    goto :goto_1

    .line 678
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

    .line 669
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 670
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/listenbook/entity/Chapter;)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "audio"    # Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .prologue
    const/4 v5, -0x1

    .line 365
    iget-object v6, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 366
    :try_start_0
    invoke-direct {p0, p2}, Laml;->b(Lcom/iflytek/viafly/listenbook/entity/Chapter;)Landroid/content/ContentValues;

    move-result-object v0

    .line 367
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "BookDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAudiosRecord(), value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-eqz v0, :cond_0

    .line 370
    if-nez p1, :cond_1

    .line 372
    :try_start_1
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 377
    :goto_0
    if-nez p1, :cond_1

    .line 378
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v5

    .line 399
    :goto_1
    return v3

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 375
    :try_start_3
    const-string/jumbo v7, "BookDBHelper"

    const-string/jumbo v8, "getWritableDatabase() error!"

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 395
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 396
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "BookDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v5

    goto :goto_1

    .line 382
    :cond_1
    const-wide/16 v8, -0x1

    :try_start_5
    const-string/jumbo v7, "chapterList"

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 383
    const-string/jumbo v4, "select LAST_INSERT_ROWID()chapterID"

    .line 384
    .local v4, "sql":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 385
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 386
    const-string/jumbo v7, "chapterID"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 387
    .local v3, "id":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 388
    const-string/jumbo v7, "BookDBHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insert a new audio | id="

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

    .line 389
    :try_start_6
    monitor-exit v6

    goto :goto_1

    .line 400
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

    .line 391
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 392
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)I
    .locals 10
    .param p1, "chapter"    # Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .prologue
    const/4 v6, -0x1

    .line 290
    const-string/jumbo v7, "BookDBHelper"

    const-string/jumbo v8, "updateChapterAudiosRecord()"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, p1}, Laml;->b(Lcom/iflytek/viafly/listenbook/entity/Chapter;)Landroid/content/ContentValues;

    move-result-object v1

    .line 293
    .local v1, "contentValues":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 295
    const/4 v2, 0x0

    .line 297
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 302
    :goto_0
    if-nez v2, :cond_1

    move v4, v6

    .line 316
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    return v4

    .line 298
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 299
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 300
    :try_start_1
    const-string/jumbo v7, "BookDBHelper"

    const-string/jumbo v8, "getWritableDatabase() error!"

    invoke-static {v7, v8, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 311
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 312
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BookDBHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move v4, v6

    .line 316
    goto :goto_1

    .line 306
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    const-string/jumbo v5, "chapterID=?"

    .line 307
    .local v5, "where":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 308
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v7, "chapterList"

    invoke-virtual {v2, v7, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 309
    .local v4, "row":I
    const-string/jumbo v7, "BookDBHelper"

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

.method public a(Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)I
    .locals 8
    .param p1, "historyListenBookItem"    # Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .prologue
    const/4 v3, -0x1

    .line 813
    iget-object v4, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 814
    :try_start_0
    invoke-direct {p0, p1}, Laml;->c(Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)Landroid/content/ContentValues;

    move-result-object v0

    .line 815
    .local v0, "contentValues":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 816
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v5, "BookDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertAudiosRecord(), value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    if-eqz v0, :cond_0

    .line 820
    :try_start_1
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 825
    :goto_0
    if-nez v1, :cond_1

    .line 826
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 833
    :goto_1
    return v3

    .line 821
    :catch_0
    move-exception v2

    .line 822
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 823
    :try_start_3
    const-string/jumbo v5, "BookDBHelper"

    const-string/jumbo v6, "getWritableDatabase() error!"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 829
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 830
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v5, "BookDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v4

    goto :goto_1

    .line 834
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 828
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_5
    const-string/jumbo v5, "historyTable"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v6

    long-to-int v3, v6

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .locals 9
    .param p1, "chapterId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 324
    const-string/jumbo v6, "BookDBHelper"

    const-string/jumbo v7, "getChapter()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v6, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 329
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "select * from chapterList where chapterID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Laml;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 331
    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 332
    if-nez v1, :cond_1

    .line 349
    if-eqz v1, :cond_0

    .line 350
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    .line 353
    .end local v4    # "sql":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 336
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 337
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/Chapter;-><init>()V

    .line 338
    .local v0, "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    const-string/jumbo v7, "chapterID"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v7, "chapterName"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v7, "freeType"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->a(I)V

    .line 341
    const-string/jumbo v7, "orderNum"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->b(I)V

    .line 342
    const-string/jumbo v7, "chapterSize"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v7, "state"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/listenbook/entity/Chapter;->c(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    if-eqz v1, :cond_2

    .line 350
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 354
    .end local v0    # "chapter":Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 349
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 350
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 353
    .end local v4    # "sql":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v5

    goto :goto_0

    .line 346
    :catch_0
    move-exception v3

    .line 347
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v7, "BookDBHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 349
    if-eqz v1, :cond_4

    .line 350
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 349
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    if-eqz v1, :cond_5

    .line 350
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/Chapter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 246
    const-string/jumbo v6, "BookDBHelper"

    const-string/jumbo v7, "getChapterList()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v6, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 251
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v4, "select * from chapterList order by orderNum asc"

    .line 252
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Laml;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 253
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 254
    if-nez v0, :cond_1

    .line 267
    if-eqz v0, :cond_0

    .line 268
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 271
    .end local v4    # "sql":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 257
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 259
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3

    .line 260
    invoke-direct {p0, v0}, Laml;->a(Landroid/database/Cursor;)Lcom/iflytek/viafly/listenbook/entity/Chapter;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 264
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    .end local v4    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v7, "BookDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 267
    if-eqz v0, :cond_2

    .line 268
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_2
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 268
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v6

    goto :goto_0

    .line 272
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/Chapter;>;"
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 267
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_5

    .line 268
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public b()V
    .locals 6

    .prologue
    .line 415
    iget-object v4, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 416
    :try_start_0
    const-string/jumbo v3, "BookDBHelper"

    const-string/jumbo v5, "deleteChapterListRecords()"

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string/jumbo v2, "delete from chapterList"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 421
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 426
    :goto_0
    if-nez v0, :cond_0

    .line 427
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    :goto_1
    return-void

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 424
    :try_start_3
    const-string/jumbo v3, "BookDBHelper"

    const-string/jumbo v5, "getWritableDatabase() error!"

    invoke-static {v3, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 431
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "BookDBHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
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

    .line 429
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

.method public b(Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)V
    .locals 5
    .param p1, "historyListenBookItem"    # Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .prologue
    const/16 v4, 0x63

    .line 839
    if-nez p1, :cond_0

    .line 865
    :goto_0
    return-void

    .line 842
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Laml;->g(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    move-result-object v3

    if-nez v3, :cond_4

    .line 845
    invoke-virtual {p0}, Laml;->f()Ljava/util/List;

    move-result-object v2

    .line 846
    .local v2, "listenBookItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v4, :cond_2

    .line 847
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 848
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    .line 849
    .local v1, "item":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    if-eqz v1, :cond_1

    .line 850
    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Laml;->h(Ljava/lang/String;)V

    .line 851
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 854
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v4, :cond_3

    .line 859
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_2
    invoke-virtual {p0, p1}, Laml;->a(Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)I

    goto :goto_0

    .line 847
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 862
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    .end local v2    # "listenBookItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Laml;->h(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0, p1}, Laml;->a(Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string/jumbo v2, "BookDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isChapterExist() | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0}, Laml;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 406
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from chapterList where chapterID=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 408
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

.method public c(Ljava/lang/String;)Lamo;
    .locals 8
    .param p1, "contentID"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 503
    const-string/jumbo v5, "BookDBHelper"

    const-string/jumbo v6, "getCollect()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v6, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 508
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select * from collectTable where contentId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Laml;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 510
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 511
    if-nez v1, :cond_1

    .line 522
    if-eqz v1, :cond_0

    .line 523
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    .end local v4    # "sql":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 515
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 516
    invoke-direct {p0, v1}, Laml;->b(Landroid/database/Cursor;)Lamo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 522
    .local v0, "bookMarkInfo":Lamo;
    if-eqz v1, :cond_2

    .line 523
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 527
    .end local v0    # "bookMarkInfo":Lamo;
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 522
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 523
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 526
    .end local v4    # "sql":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v3

    .line 520
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v5, "BookDBHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 522
    if-eqz v1, :cond_4

    .line 523
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 522
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    if-eqz v1, :cond_5

    .line 523
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lamo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 468
    iget-object v7, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v7

    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 472
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v5, "select * from collectTable order by time desc"

    .line 473
    .local v5, "userSql":Ljava/lang/String;
    invoke-virtual {p0}, Laml;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 474
    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 475
    if-nez v2, :cond_1

    .line 491
    if-eqz v2, :cond_0

    .line 492
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v6

    .line 495
    .end local v5    # "userSql":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 478
    .restart local v5    # "userSql":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v1, "bookMarkInfos":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 481
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    .line 482
    invoke-direct {p0, v2}, Laml;->b(Landroid/database/Cursor;)Lamo;

    move-result-object v0

    .line 483
    .local v0, "bookMarkInfo":Lamo;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 488
    .end local v0    # "bookMarkInfo":Lamo;
    .end local v1    # "bookMarkInfos":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    .end local v5    # "userSql":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 489
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "BookDBHelper"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 491
    if-eqz v2, :cond_2

    .line 492
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_2
    monitor-exit v7

    move-object v1, v6

    goto :goto_0

    .line 491
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bookMarkInfos":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    .restart local v5    # "userSql":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 492
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v7

    goto :goto_0

    .line 496
    .end local v1    # "bookMarkInfos":Ljava/util/List;, "Ljava/util/List<Lamo;>;"
    .end local v5    # "userSql":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 491
    :catchall_1
    move-exception v6

    if-eqz v2, :cond_5

    .line 492
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 588
    iget-object v4, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 589
    :try_start_0
    const-string/jumbo v3, "BookDBHelper"

    const-string/jumbo v5, "deleteCollects()"

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string/jumbo v2, "delete from collectTable"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 594
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 599
    :goto_0
    if-nez v0, :cond_0

    .line 600
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 607
    :goto_1
    return-void

    .line 595
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 597
    :try_start_3
    const-string/jumbo v3, "BookDBHelper"

    const-string/jumbo v5, "getWritableDatabase() error!"

    invoke-static {v3, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 603
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 604
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "BookDBHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
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

    .line 602
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

.method public d(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 563
    iget-object v4, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 564
    :try_start_0
    const-string/jumbo v3, "BookDBHelper"

    const-string/jumbo v5, "deleteCollect()"

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete from collectTable where contentId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 567
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 569
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 574
    :goto_0
    if-nez v0, :cond_0

    .line 575
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    :goto_1
    return-void

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 572
    :try_start_3
    const-string/jumbo v3, "BookDBHelper"

    const-string/jumbo v5, "getWritableDatabase() error!"

    invoke-static {v3, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 578
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 579
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "BookDBHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
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

    .line 577
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

.method public e()V
    .locals 6

    .prologue
    .line 613
    iget-object v4, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 614
    :try_start_0
    const-string/jumbo v3, "BookDBHelper"

    const-string/jumbo v5, "deleteHistorys()"

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string/jumbo v2, "delete from historyTable"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 619
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 624
    :goto_0
    if-nez v0, :cond_0

    .line 625
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    :goto_1
    return-void

    .line 620
    :catch_0
    move-exception v1

    .line 621
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 622
    :try_start_3
    const-string/jumbo v3, "BookDBHelper"

    const-string/jumbo v5, "getWritableDatabase() error!"

    invoke-static {v3, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 628
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 629
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "BookDBHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
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

    .line 627
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

.method public e(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 683
    const-string/jumbo v2, "BookDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCollectExist() | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p0}, Laml;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 685
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from collectTable where contentId=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 687
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

.method public f(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    .locals 8
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 728
    iget-object v5, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 729
    :try_start_0
    const-string/jumbo v6, "BookDBHelper"

    const-string/jumbo v7, "getHomeCardItem()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    const/4 v0, 0x0

    .line 731
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 733
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select * from historyTable where contentId= \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 735
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Laml;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 736
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 737
    if-nez v0, :cond_1

    .line 748
    if-eqz v0, :cond_0

    .line 749
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    .end local v3    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 740
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 741
    invoke-direct {p0, v0}, Laml;->c(Landroid/database/Cursor;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 748
    if-eqz v0, :cond_2

    .line 749
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 753
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 748
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 749
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 745
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 746
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "BookDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 748
    if-eqz v0, :cond_5

    .line 749
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 752
    :cond_5
    monitor-exit v5

    goto :goto_0

    .line 748
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_6

    .line 749
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public f()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 869
    const-string/jumbo v6, "BookDBHelper"

    const-string/jumbo v7, "getChapterList()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v6, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 874
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string/jumbo v4, "select * from historyTable order by time desc"

    .line 875
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Laml;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 876
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 877
    if-nez v0, :cond_1

    .line 890
    if-eqz v0, :cond_0

    .line 891
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 894
    .end local v4    # "sql":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 880
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 882
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3

    .line 883
    invoke-direct {p0, v0}, Laml;->c(Landroid/database/Cursor;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 887
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    .end local v4    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 888
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v7, "BookDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 890
    if-eqz v0, :cond_2

    .line 891
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_2
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 890
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 891
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v6

    goto :goto_0

    .line 895
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;>;"
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 890
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_5

    .line 891
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public g(Ljava/lang/String;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    .locals 8
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 758
    iget-object v5, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 759
    :try_start_0
    const-string/jumbo v6, "BookDBHelper"

    const-string/jumbo v7, "getHomeCardItem()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 763
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select * from historyTable where contentId= \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Laml;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 766
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 767
    if-nez v0, :cond_1

    .line 778
    if-eqz v0, :cond_0

    .line 779
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    .end local v3    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 770
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 771
    invoke-direct {p0, v0}, Laml;->c(Landroid/database/Cursor;)Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 778
    if-eqz v0, :cond_2

    .line 779
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 783
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 778
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 779
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 775
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 776
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "BookDBHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 778
    if-eqz v0, :cond_5

    .line 779
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_5
    monitor-exit v5

    goto :goto_0

    .line 778
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_6

    .line 779
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 6
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 788
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 809
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v4, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 792
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete from historyTable where contentId=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 794
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 796
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Laml;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 801
    :goto_1
    if-nez v0, :cond_1

    .line 802
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .line 808
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 797
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 798
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 799
    :try_start_3
    const-string/jumbo v3, "BookDBHelper"

    const-string/jumbo v5, "getWritableDatabase() error!"

    invoke-static {v3, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 805
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 806
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "BookDBHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 804
    :cond_1
    :try_start_5
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 53
    const-string/jumbo v0, "BookDBHelper"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, p1}, Laml;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    invoke-direct {p0, p1}, Laml;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    invoke-direct {p0, p1}, Laml;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 89
    const-string/jumbo v0, "BookDBHelper"

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

    .line 91
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 75
    const-string/jumbo v0, "BookDBHelper"

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

    .line 78
    invoke-direct {p0, p1}, Laml;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    invoke-direct {p0, p1}, Laml;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    const-string/jumbo v0, "bookMarkTable"

    invoke-direct {p0, p1, v0}, Laml;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "sysBookMarkTable"

    invoke-direct {p0, p1, v0}, Laml;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 84
    return-void
.end method
