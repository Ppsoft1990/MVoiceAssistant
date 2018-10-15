.class public Lzf;
.super Ljava/lang/Object;
.source "NoticeItemDaoImpl.java"

# interfaces
.implements Lzc;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final c:Ljava/lang/String;

.field private d:Lza;

.field private e:Lzb;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "NoticeItemDao"

    iput-object v0, p0, Lzf;->a:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "notice_view"

    iput-object v0, p0, Lzf;->c:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzf;->f:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lzf;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 36
    new-instance v0, Lzd;

    invoke-direct {v0, p1}, Lzd;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lzf;->d:Lza;

    .line 37
    new-instance v0, Lze;

    invoke-direct {v0, p1}, Lze;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lzf;->e:Lzb;

    .line 39
    invoke-direct {p0}, Lzf;->a()V

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 254
    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v6, "count"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string/jumbo v5, "NoticeItemDao"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[rawQuery]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 259
    .local v2, "cursor":Landroid/database/Cursor;
    const-wide/16 v0, 0x0

    .line 260
    .local v0, "count":J
    iget-object v6, p0, Lzf;->f:Ljava/lang/Object;

    monitor-enter v6

    .line 261
    :try_start_0
    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v7, "count | enter Critical Section"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :try_start_1
    iget-object v5, p0, Lzf;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 264
    invoke-virtual {v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 266
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 271
    :cond_0
    if-eqz v2, :cond_1

    .line 272
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_1
    if-eqz v3, :cond_2

    .line 275
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 277
    :cond_2
    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v7, "count | leave Critical Section"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    return-wide v0

    .line 268
    :catch_0
    move-exception v4

    .line 269
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v7, "[rawQuery] from DB Exception."

    invoke-static {v5, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    if-eqz v2, :cond_3

    .line 272
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_3
    if-eqz v3, :cond_4

    .line 275
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 277
    :cond_4
    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v7, "count | leave Critical Section"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 271
    :catchall_1
    move-exception v5

    if-eqz v2, :cond_5

    .line 272
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_5
    if-eqz v3, :cond_6

    .line 275
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 277
    :cond_6
    const-string/jumbo v7, "NoticeItemDao"

    const-string/jumbo v8, "count | leave Critical Section"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;
    .locals 16
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "pageNo"    # I
    .param p4, "pageSize"    # I
    .param p5, "orderBys"    # [Lcom/iflytek/xorm/page/OrderBy;

    .prologue
    .line 229
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v12, "sqlBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select count(*) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "notice_view"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-static/range {p1 .. p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_0
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lzf;->a(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v14

    .line 236
    .local v14, "totalCount":J
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    new-instance v11, Lcom/iflytek/xorm/page/Pagination;

    .line 239
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v11, v0, v1, v2}, Lcom/iflytek/xorm/page/Pagination;-><init>(III)V

    .line 241
    .local v11, "p":Lcom/iflytek/xorm/page/Pagination;
    const-wide/16 v2, 0x1

    cmp-long v2, v14, v2

    if-gez v2, :cond_1

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v2}, Lcom/iflytek/xorm/page/Pagination;->setList(Ljava/util/List;)V

    .line 250
    :goto_0
    return-object v11

    .line 245
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/iflytek/xorm/page/Pagination;->getFirstResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {v11}, Lcom/iflytek/xorm/page/Pagination;->getPageSize()I

    move-result v3

    invoke-virtual {v11}, Lcom/iflytek/xorm/page/Pagination;->getFirstResult()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 247
    .local v9, "limit":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 248
    invoke-static/range {p5 .. p5}, Lcom/iflytek/xorm/page/OrderBy;->asSQLOrders([Lcom/iflytek/xorm/page/OrderBy;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 247
    invoke-direct/range {v2 .. v9}, Lzf;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 249
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-virtual {v11, v10}, Lcom/iflytek/xorm/page/Pagination;->setList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "startTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "endTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "sql":Ljava/lang/String;
    return-object v0
.end method

.method private a(Lcom/iflytek/viafly/blcpush/NoticeStatus;J)Ljava/lang/String;
    .locals 4
    .param p1, "status"    # Lcom/iflytek/viafly/blcpush/NoticeStatus;
    .param p2, "time"    # J

    .prologue
    .line 696
    if-nez p1, :cond_0

    .line 697
    const-string/jumbo v0, ""

    .line 731
    :goto_0
    return-object v0

    .line 700
    :cond_0
    const-string/jumbo v0, ""

    .line 701
    .local v0, "sql":Ljava/lang/String;
    sget-object v1, Lzf$1;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/NoticeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 713
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lzf;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 714
    goto :goto_0

    .line 716
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "startTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    goto :goto_0

    .line 725
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "endTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    goto :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "groupBy"    # Ljava/lang/String;
    .param p4, "having"    # Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 287
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "select * from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "notice_view"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    :cond_0
    invoke-static {p3}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " groupBy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :cond_1
    invoke-static {p4}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " having "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :cond_2
    invoke-static {p5}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " orderBy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    :cond_3
    invoke-static {p6}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "sql":Ljava/lang/String;
    if-eqz p2, :cond_5

    array-length v3, p2

    if-lez v3, :cond_5

    .line 310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_5

    .line 311
    const-string/jumbo v3, "\\?"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v1

    .line 312
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "i":I
    :cond_5
    return-object v2
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    const-string/jumbo v7, "NoticeItemDao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[find]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 196
    invoke-direct/range {v0 .. v6}, Lzf;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v7, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const/4 v0, 0x0

    .line 201
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 202
    .local v9, "cursor":Landroid/database/Cursor;
    iget-object v12, p0, Lzf;->f:Ljava/lang/Object;

    monitor-enter v12

    .line 203
    :try_start_0
    const-string/jumbo v1, "NoticeItemDao"

    const-string/jumbo v2, "find | enter Critical Section"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :try_start_1
    iget-object v1, p0, Lzf;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "notice_view"

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 209
    invoke-direct {p0, v11, v9}, Lzf;->a(Ljava/util/List;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    if-eqz v9, :cond_0

    .line 214
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_0
    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 219
    :cond_1
    const-string/jumbo v1, "NoticeItemDao"

    const-string/jumbo v2, "find | enter Critical Section"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v11

    .line 210
    :catch_0
    move-exception v10

    .line 211
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "NoticeItemDao"

    const-string/jumbo v2, "[find] from DB Exception"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    if-eqz v9, :cond_2

    .line 214
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_2
    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 219
    :cond_3
    const-string/jumbo v1, "NoticeItemDao"

    const-string/jumbo v2, "find | enter Critical Section"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 213
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_4

    .line 214
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_4
    if-eqz v0, :cond_5

    .line 217
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 219
    :cond_5
    const-string/jumbo v2, "NoticeItemDao"

    const-string/jumbo v3, "find | enter Critical Section"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v1, "sqlBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v2, "notice_view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v2, " AS SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v2, "b.msgId,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v2, "b.typeId,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v2, "b.actionId,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v2, "b.title,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v2, "b.content,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v2, "b.startTime,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v2, "b.endTime,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v2, "b.extraInfo,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v2, "c.displayCount,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v2, "c.closeFlag,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v2, "c.receiveTime,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v2, "c.readFlag,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v2, "c.localPicUri,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v2, "c.reservedData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzf;->d:Lza;

    invoke-interface {v3}, Lza;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AS b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v2, " inner join "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzf;->e:Lzb;

    invoke-interface {v3}, Lzb;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AS c "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v2, " on b.msgId = c.msgId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "selectionArgs":[Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lzf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    .line 585
    const-string/jumbo v0, "NoticeItemDao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[execSql]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2, p3}, Lzf;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 587
    :cond_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 20
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    new-instance v2, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    const-string/jumbo v3, "msgId"

    .line 119
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 118
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "typeId"

    .line 121
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 120
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "actionId"

    .line 123
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 122
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "title"

    .line 125
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 124
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "content"

    .line 127
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 126
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "startTime"

    .line 129
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 128
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string/jumbo v10, "endTime"

    .line 131
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 130
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v12, "extraInfo"

    .line 133
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 132
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "displayCount"

    .line 135
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 134
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string/jumbo v14, "closeFlag"

    .line 137
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 136
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string/jumbo v15, "receiveTime"

    .line 139
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 138
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-string/jumbo v17, "readFlag"

    .line 141
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 140
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string/jumbo v18, "localPicUri"

    .line 143
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 142
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "reservedData"

    .line 145
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 144
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJILjava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v2, "entity":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 148
    .end local v2    # "entity":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 105
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 111
    .end local p1    # "sql":Ljava/lang/String;
    .local v1, "sql":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 108
    .end local v1    # "sql":Ljava/lang/String;
    .restart local p1    # "sql":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 109
    const-string/jumbo v2, "\\?"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, p1

    .line 111
    .end local p1    # "sql":Ljava/lang/String;
    .restart local v1    # "sql":Ljava/lang/String;
    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    :cond_0
    const-string/jumbo v2, ""

    .line 661
    :goto_0
    return-object v2

    .line 654
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v0, "sqlBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, " typeId in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 657
    .local v1, "type":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\',"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 659
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 660
    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private b(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "statuses":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/NoticeStatus;>;"
    invoke-direct {p0, p1}, Lzf;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "typesSelection":Ljava/lang/String;
    invoke-direct {p0, p2}, Lzf;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "statusSelection":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 766
    .local v0, "selection":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 767
    move-object v0, v2

    .line 768
    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    :cond_0
    :goto_0
    return-object v0

    .line 772
    :cond_1
    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 773
    move-object v0, v1

    goto :goto_0
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 735
    .local p1, "statuses":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/NoticeStatus;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 736
    :cond_0
    const-string/jumbo v6, ""

    .line 758
    :goto_0
    return-object v6

    .line 739
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 740
    .local v0, "currentTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .local v4, "sqlBuilder":Ljava/lang/StringBuilder;
    const/16 v6, 0x28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/blcpush/NoticeStatus;

    .line 743
    .local v5, "status":Lcom/iflytek/viafly/blcpush/NoticeStatus;
    if-eqz v5, :cond_2

    .line 746
    invoke-direct {p0, v5, v0, v1}, Lzf;->a(Lcom/iflytek/viafly/blcpush/NoticeStatus;J)Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v3, "sql":Ljava/lang/String;
    invoke-static {v3}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 748
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const-string/jumbo v7, " or "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 753
    .end local v3    # "sql":Ljava/lang/String;
    .end local v5    # "status":Lcom/iflytek/viafly/blcpush/NoticeStatus;
    :cond_3
    const-string/jumbo v6, " or "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 754
    .local v2, "index":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    .line 755
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 757
    :cond_4
    const-string/jumbo v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public a(II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;
    .locals 6
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I
    .param p3, "orderBys"    # [Lcom/iflytek/xorm/page/OrderBy;

    .prologue
    const/4 v1, 0x0

    .line 459
    move-object v0, p0

    move-object v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lzf;->a(Ljava/lang/String;[Ljava/lang/String;II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/util/List;II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;
    .locals 7
    .param p3, "pageNo"    # I
    .param p4, "pageSize"    # I
    .param p5, "orderBys"    # [Lcom/iflytek/xorm/page/OrderBy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
            ">;II[",
            "Lcom/iflytek/xorm/page/OrderBy;",
            ")",
            "Lcom/iflytek/xorm/page/Pagination;"
        }
    .end annotation

    .prologue
    .line 784
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "statuses":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/NoticeStatus;>;"
    invoke-direct {p0, p1, p2}, Lzf;->b(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 786
    .local v6, "selection":Ljava/lang/String;
    invoke-static {v6}, Lcom/iflytek/viafly/util/IflyStringUtil;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lzf;->a(Ljava/lang/String;[Ljava/lang/String;II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V
    .locals 14
    .param p1, "item"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 368
    const-string/jumbo v10, "NoticeItemDao"

    const-string/jumbo v11, "save"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-nez p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "msgId":Ljava/lang/String;
    invoke-static {v6}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 378
    const/4 v4, 0x0

    .line 379
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v11, p0, Lzf;->f:Ljava/lang/Object;

    monitor-enter v11

    .line 380
    :try_start_0
    const-string/jumbo v10, "NoticeItemDao"

    const-string/jumbo v12, "save | enter Critical Section"

    invoke-static {v10, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v10, p0, Lzf;->e:Lzb;

    invoke-interface {v10, v6}, Lzb;->a(Ljava/lang/String;)Lzk;

    move-result-object v7

    .line 382
    .local v7, "oldNotice":Lzk;
    if-eqz v7, :cond_2

    .line 384
    invoke-virtual {v7}, Lzk;->a()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setCloseFlag(I)V

    .line 389
    :cond_2
    const-string/jumbo v1, "DELETE FROM #TABLENAME where msgId = ?"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .local v1, "baseSql":Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lzf;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 394
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 396
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v2, v10

    .line 397
    .local v2, "bindArgs":[Ljava/lang/Object;
    const-string/jumbo v10, "#TABLENAME"

    iget-object v12, p0, Lzf;->d:Lza;

    .line 398
    invoke-interface {v12}, Lza;->getTableName()Ljava/lang/String;

    move-result-object v12

    .line 397
    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "sql1":Ljava/lang/String;
    const-string/jumbo v10, "#TABLENAME"

    iget-object v12, p0, Lzf;->e:Lzb;

    .line 400
    invoke-interface {v12}, Lzb;->getTableName()Ljava/lang/String;

    move-result-object v12

    .line 399
    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "sql2":Ljava/lang/String;
    invoke-direct {p0, v4, v8, v2}, Lzf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    invoke-direct {p0, v4, v9, v2}, Lzf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    new-instance v0, Lzg;

    invoke-direct {v0, p1}, Lzg;-><init>(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V

    .line 405
    .local v0, "baseNotice":Lzg;
    iget-object v10, p0, Lzf;->d:Lza;

    const/4 v12, 0x0

    invoke-interface {v10, v4, v0, v12}, Lza;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;Z)J

    .line 407
    new-instance v3, Lzk;

    invoke-direct {v3, p1}, Lzk;-><init>(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V

    .line 408
    .local v3, "clientNotice":Lzk;
    iget-object v10, p0, Lzf;->e:Lzb;

    const/4 v12, 0x0

    invoke-interface {v10, v4, v3, v12}, Lzb;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;Z)J

    .line 410
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    if-eqz v4, :cond_3

    .line 416
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 417
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 419
    :cond_3
    const-string/jumbo v10, "NoticeItemDao"

    const-string/jumbo v12, "save | leave Critical Section"

    invoke-static {v10, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .end local v0    # "baseNotice":Lzg;
    .end local v2    # "bindArgs":[Ljava/lang/Object;
    .end local v3    # "clientNotice":Lzk;
    .end local v8    # "sql1":Ljava/lang/String;
    .end local v9    # "sql2":Ljava/lang/String;
    :goto_1
    monitor-exit v11

    goto/16 :goto_0

    .end local v1    # "baseSql":Ljava/lang/String;
    .end local v7    # "oldNotice":Lzk;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 412
    .restart local v1    # "baseSql":Ljava/lang/String;
    .restart local v7    # "oldNotice":Lzk;
    :catch_0
    move-exception v5

    .line 413
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v10, "NoticeItemDao"

    const-string/jumbo v12, "[execSql] DB exception."

    invoke-static {v10, v12, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
    if-eqz v4, :cond_4

    .line 416
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 417
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 419
    :cond_4
    const-string/jumbo v10, "NoticeItemDao"

    const-string/jumbo v12, "save | leave Critical Section"

    invoke-static {v10, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 415
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    if-eqz v4, :cond_5

    .line 416
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 417
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 419
    :cond_5
    const-string/jumbo v12, "NoticeItemDao"

    const-string/jumbo v13, "save | leave Critical Section"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 10
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string/jumbo v6, "NoticeItemDao"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delete | msgId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v1, 0x0

    .line 160
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, " where msgId = ?"

    .line 161
    .local v2, "deleteArg":Ljava/lang/String;
    iget-object v7, p0, Lzf;->f:Ljava/lang/Object;

    monitor-enter v7

    .line 162
    :try_start_0
    const-string/jumbo v6, "NoticeItemDao"

    const-string/jumbo v8, "delete | enter Critical Section"

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    iget-object v6, p0, Lzf;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 167
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v0, v6

    .line 168
    .local v0, "bindArgs":[Ljava/lang/Object;
    iget-object v6, p0, Lzf;->d:Lza;

    invoke-interface {v6}, Lza;->getDeleteSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    .local v4, "sqlBuilder1":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v6, p0, Lzf;->e:Lzb;

    .line 171
    invoke-interface {v6}, Lzb;->getDeleteSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 172
    .local v5, "sqlBuilder2":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    if-eqz v1, :cond_1

    .line 182
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 183
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 185
    :cond_1
    const-string/jumbo v6, "NoticeItemDao"

    const-string/jumbo v8, "delete | leave Critical Section"

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v4    # "sqlBuilder1":Ljava/lang/StringBuilder;
    .end local v5    # "sqlBuilder2":Ljava/lang/StringBuilder;
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "NoticeItemDao"

    const-string/jumbo v8, "[execSql] DB exception."

    invoke-static {v6, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    if-eqz v1, :cond_2

    .line 182
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 183
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 185
    :cond_2
    const-string/jumbo v6, "NoticeItemDao"

    const-string/jumbo v8, "delete | leave Critical Section"

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 181
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    if-eqz v1, :cond_3

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 183
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 185
    :cond_3
    const-string/jumbo v8, "NoticeItemDao"

    const-string/jumbo v9, "delete | leave Critical Section"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/Object;

    .prologue
    .line 80
    const-string/jumbo v2, "NoticeItemDao"

    const-string/jumbo v3, "execSql"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v2, "NoticeItemDao"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[execSql]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1, p2}, Lzf;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lzf;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 85
    :try_start_0
    const-string/jumbo v2, "NoticeItemDao"

    const-string/jumbo v4, "execSql | enter Critical Section"

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    iget-object v2, p0, Lzf;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    if-nez p2, :cond_1

    .line 89
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    :cond_0
    const-string/jumbo v2, "NoticeItemDao"

    const-string/jumbo v4, "execSql | leave Critical Section"

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    return-void

    .line 91
    :cond_1
    :try_start_3
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v2, "NoticeItemDao"

    const-string/jumbo v4, "[execSql] DB exception."

    invoke-static {v2, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    if-eqz v0, :cond_2

    .line 97
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    :cond_2
    const-string/jumbo v2, "NoticeItemDao"

    const-string/jumbo v4, "execSql | leave Critical Section"

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 96
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 97
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    :cond_3
    const-string/jumbo v4, "NoticeItemDao"

    const-string/jumbo v5, "execSql | leave Critical Section"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "noticeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const-string/jumbo v1, "NoticeItemDao"

    const-string/jumbo v2, "save | save noticeItems"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    :cond_0
    return-void

    .line 431
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 432
    .local v0, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    invoke-virtual {p0, v0}, Lzf;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "statuses":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/NoticeStatus;>;"
    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v6, "delete | delete by types and statuses"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct {p0, p1, p2}, Lzf;->b(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 795
    .local v2, "selection":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 830
    :goto_0
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x0

    .line 800
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, p0, Lzf;->f:Ljava/lang/Object;

    monitor-enter v6

    .line 801
    :try_start_0
    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v7, "delete | enter Critical Section"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    :try_start_1
    iget-object v5, p0, Lzf;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 806
    iget-object v5, p0, Lzf;->e:Lzb;

    .line 807
    invoke-interface {v5}, Lzb;->getDeleteSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 808
    .local v3, "sqlBuilder1":Ljava/lang/StringBuilder;
    const-string/jumbo v5, " WHERE msgId in (SELECT msgId FROM "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    iget-object v5, p0, Lzf;->d:Lza;

    invoke-interface {v5}, Lza;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " WHERE "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {p0, v0, v5, v7}, Lzf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    iget-object v5, p0, Lzf;->d:Lza;

    invoke-interface {v5}, Lza;->getDeleteSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 816
    .local v4, "sqlBuilder2":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " WHERE "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {p0, v0, v5, v7}, Lzf;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 823
    if-eqz v0, :cond_1

    .line 824
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 825
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 827
    :cond_1
    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v7, "delete | leave Critical Section"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .end local v3    # "sqlBuilder1":Ljava/lang/StringBuilder;
    .end local v4    # "sqlBuilder2":Ljava/lang/StringBuilder;
    :goto_1
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v7, "[execSql] DB exception."

    invoke-static {v5, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 823
    if-eqz v0, :cond_2

    .line 824
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 825
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 827
    :cond_2
    const-string/jumbo v5, "NoticeItemDao"

    const-string/jumbo v7, "delete | leave Critical Section"

    invoke-static {v5, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 823
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_3

    .line 824
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 825
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 827
    :cond_3
    const-string/jumbo v7, "NoticeItemDao"

    const-string/jumbo v8, "delete | leave Critical Section"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public b(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .locals 10
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 438
    const-string/jumbo v0, "NoticeItemDao"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNoticeItem | msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-object v1

    .line 444
    :cond_1
    const-string/jumbo v2, "msgId = ?"

    .line 445
    .local v2, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v9

    .local v3, "selectionArgs":[Ljava/lang/String;
    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    .line 447
    invoke-direct/range {v0 .. v7}, Lzf;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 450
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    move-object v1, v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 464
    const-string/jumbo v0, "NoticeItemDao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNoticeHasRead | msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lzf;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    :try_start_0
    const-string/jumbo v0, "NoticeItemDao"

    const-string/jumbo v2, "setNoticeHasRead | enter Critical Section"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lzf;->e:Lzb;

    invoke-interface {v0, p1}, Lzb;->b(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v0, "NoticeItemDao"

    const-string/jumbo v2, "setNoticeHasRead | leave Critical Section"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    monitor-exit v1

    .line 470
    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
