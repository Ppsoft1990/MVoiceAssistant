.class public Lakl;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HomeCardDbHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lakk;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    const-string/jumbo v0, "HomeCardDbHelper"

    iput-object v0, p0, Lakl;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lakl;->b:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Laic;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 446
    if-nez p2, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-object v0

    .line 450
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    new-instance v0, Laic;

    invoke-direct {v0}, Laic;-><init>()V

    .line 452
    .local v0, "dataItem":Laic;
    sget-object v1, Lakk;->d:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laic;->i(Ljava/lang/String;)V

    .line 453
    sget-object v1, Lakk;->e:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laic;->a(Ljava/lang/String;)V

    .line 454
    sget-object v1, Lakk;->f:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laic;->b(Ljava/lang/String;)V

    .line 455
    sget-object v1, Lakk;->g:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laic;->c(Ljava/lang/String;)V

    .line 456
    sget-object v1, Lakk;->h:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laic;->d(Ljava/lang/String;)V

    .line 457
    sget-object v1, Lakk;->i:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laic;->a(I)V

    .line 458
    sget-object v1, Lakk;->k:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laic;->e(Ljava/lang/String;)V

    .line 459
    sget-object v1, Lakk;->l:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laic;->f(I)V

    .line 460
    sget-object v1, Lakk;->j:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laic;->b(I)V

    .line 461
    sget-object v1, Lakk;->m:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laic;->e(I)V

    .line 462
    sget-object v1, Lakk;->n:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laic;->f(Ljava/lang/String;)V

    .line 463
    sget-object v1, Lakk;->o:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laic;->g(Ljava/lang/String;)V

    .line 464
    sget-object v1, Lakk;->p:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laic;->d(I)V

    .line 465
    sget-object v1, Lakk;->q:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laic;->c(I)V

    goto/16 :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 46
    iget-object v2, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v3, "createUserNoteTable()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-nez p1, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lakl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 54
    :goto_0
    if-nez p1, :cond_0

    .line 80
    :goto_1
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 52
    iget-object v2, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v3, "getWritableDatabase() error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CREATE TABLE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] TEXT PRIMARY KEY,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] INTEGER,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] INTEGER,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] INTEGER,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] INTEGER,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] INTEGER,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] INTEGER,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lakk;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] TEXT);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 77
    .end local v1    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 78
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lakl;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private b(Laic;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "dataItem"    # Laic;

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 415
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 417
    .local v0, "contentValues":Landroid/content/ContentValues;
    sget-object v1, Lakk;->d:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v1, Lakk;->e:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v1, Lakk;->f:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v1, Lakk;->g:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v1, Lakk;->h:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v1, Lakk;->i:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    sget-object v1, Lakk;->j:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    sget-object v1, Lakk;->k:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    sget-object v1, Lakk;->l:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->y()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    sget-object v1, Lakk;->m:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    sget-object v1, Lakk;->n:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v1, Lakk;->o:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v1, Lakk;->p:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    sget-object v1, Lakk;->q:Ljava/lang/String;

    invoke-virtual {p1}, Laic;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    iget-object v1, p0, Lakl;->a:Ljava/lang/String;

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

    .line 442
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Laic;)I
    .locals 8
    .param p1, "homeCardItem"    # Laic;

    .prologue
    const/4 v3, -0x1

    .line 162
    iget-object v4, p0, Lakl;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 163
    :try_start_0
    invoke-direct {p0, p1}, Lakl;->b(Laic;)Landroid/content/ContentValues;

    move-result-object v0

    .line 164
    .local v0, "contentValues":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 165
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lakl;->a:Ljava/lang/String;

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

    .line 166
    if-eqz v0, :cond_0

    .line 169
    :try_start_1
    invoke-virtual {p0}, Lakl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 174
    :goto_0
    if-nez v1, :cond_1

    .line 175
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :goto_1
    return v3

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 172
    :try_start_3
    iget-object v5, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v6, "getWritableDatabase() error!"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 178
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 179
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v5, p0, Lakl;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v4

    goto :goto_1

    .line 183
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 177
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_5
    sget-object v5, Lakk;->b:Ljava/lang/String;

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

.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "onlyKey"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v6

    .line 191
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v1, "contentValues":Landroid/content/ContentValues;
    sget-object v8, Lakk;->k:Ljava/lang/String;

    invoke-virtual {v1, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v8, Lakk;->l:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const/4 v2, 0x0

    .line 197
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lakl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 202
    :goto_1
    if-eqz v2, :cond_0

    .line 205
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lakk;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "where":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v0, v8

    .line 207
    .local v0, "args":[Ljava/lang/String;
    sget-object v8, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v2, v8, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 208
    .local v4, "row":I
    iget-object v8, p0, Lakl;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update a user | affected row="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 213
    goto :goto_0

    .line 198
    .end local v0    # "args":[Ljava/lang/String;
    .end local v4    # "row":I
    .end local v5    # "where":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 199
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 200
    iget-object v8, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v9, "getWritableDatabase() error!"

    invoke-static {v8, v9, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 209
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 210
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lakl;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v7, p0, Lakl;->b:Ljava/lang/Object;

    monitor-enter v7

    .line 371
    :try_start_0
    iget-object v6, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v8, "getAllItemList()"

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 374
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laic;>;"
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "select * from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lakl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 379
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 380
    if-nez v0, :cond_1

    .line 394
    if-eqz v0, :cond_0

    .line 395
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    .end local v5    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 384
    .restart local v5    # "sql":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 385
    invoke-direct {p0, v1, v0}, Lakl;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Laic;

    move-result-object v3

    .line 386
    .local v3, "item":Laic;
    if-eqz v3, :cond_1

    .line 387
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 391
    .end local v3    # "item":Laic;
    .end local v5    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 392
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v6, p0, Lakl;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 394
    if-eqz v0, :cond_2

    .line 395
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_2
    monitor-exit v7

    goto :goto_0

    .line 399
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laic;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 394
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laic;>;"
    .restart local v5    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 395
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v7

    goto :goto_0

    .line 394
    .end local v5    # "sql":Ljava/lang/String;
    :catchall_1
    move-exception v6

    if-eqz v0, :cond_5

    .line 395
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 84
    iget-object v7, p0, Lakl;->b:Ljava/lang/Object;

    monitor-enter v7

    .line 85
    :try_start_0
    iget-object v8, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v9, "getHomeCardItem()"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    const/4 v1, 0x0

    .line 90
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select * from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " where "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lakk;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "= \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lakl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 92
    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    .line 106
    if-eqz v0, :cond_0

    .line 107
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v6

    .line 110
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    .end local v5    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 96
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    .restart local v5    # "sql":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    invoke-direct {p0, v1, v0}, Lakl;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Laic;

    move-result-object v3

    .line 98
    .local v3, "item":Laic;
    if-eqz v3, :cond_1

    .line 99
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 103
    .end local v3    # "item":Laic;
    .end local v5    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v6, p0, Lakl;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    if-eqz v0, :cond_2

    .line 107
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_2
    monitor-exit v7

    goto :goto_0

    .line 111
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 106
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    .restart local v5    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 107
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v7

    goto :goto_0

    .line 106
    .end local v5    # "sql":Ljava/lang/String;
    :catchall_1
    move-exception v6

    if-eqz v0, :cond_5

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v2, p0, Lakl;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 352
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lakk;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\' and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lakk;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lakl;->e(Ljava/lang/String;)V

    .line 354
    monitor-exit v2

    goto :goto_0

    .end local v0    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p3, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 288
    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 289
    :cond_3
    invoke-virtual {p0, p1}, Lakl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 290
    .local v2, "currentCard":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laic;

    .line 291
    .local v5, "homeCardItem":Laic;
    invoke-virtual {v5}, Laic;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lakl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 296
    .end local v2    # "currentCard":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    .end local v5    # "homeCardItem":Laic;
    :cond_4
    :try_start_0
    invoke-virtual {p0, p1}, Lakl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 298
    .restart local v2    # "currentCard":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 299
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laic;

    .line 300
    .restart local v5    # "homeCardItem":Laic;
    invoke-virtual {v5}, Laic;->c()Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "oldContentId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 302
    .local v4, "have":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, "contentId":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 304
    const/4 v4, 0x1

    .line 308
    .end local v0    # "contentId":Ljava/lang/String;
    :cond_7
    if-nez v4, :cond_5

    .line 309
    invoke-virtual {p0, p1, v7}, Lakl;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 341
    .end local v2    # "currentCard":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    .end local v4    # "have":Z
    .end local v5    # "homeCardItem":Laic;
    .end local v7    # "oldContentId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 342
    .local v3, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 314
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "currentCard":Ljava/util/List;, "Ljava/util/List<Laic;>;"
    :cond_8
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 315
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    .restart local v0    # "contentId":Ljava/lang/String;
    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    .local v1, "contentName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 318
    .restart local v4    # "have":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laic;

    .line 319
    .restart local v5    # "homeCardItem":Laic;
    invoke-virtual {v5}, Laic;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 320
    const/4 v4, 0x1

    .line 324
    .end local v5    # "homeCardItem":Laic;
    :cond_a
    if-nez v4, :cond_c

    .line 325
    new-instance v5, Laic;

    invoke-direct {v5}, Laic;-><init>()V

    .line 326
    .restart local v5    # "homeCardItem":Laic;
    invoke-virtual {v5, v0}, Laic;->c(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v5, p1}, Laic;->a(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v5, p2}, Laic;->b(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v5, v1}, Laic;->d(Ljava/lang/String;)V

    .line 330
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Laic;->b(I)V

    .line 331
    const-string/jumbo v8, "Fee"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "Weather"

    .line 332
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "Schedule"

    .line 333
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 334
    :cond_b
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Laic;->a(I)V

    .line 338
    :goto_4
    invoke-virtual {p0, v5}, Lakl;->a(Laic;)I

    .line 314
    .end local v5    # "homeCardItem":Laic;
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 336
    .restart local v5    # "homeCardItem":Laic;
    :cond_d
    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Laic;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public b(Ljava/lang/String;)Laic;
    .locals 8
    .param p1, "onlyKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    :goto_0
    return-object v4

    .line 119
    :cond_0
    iget-object v5, p0, Lakl;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 120
    :try_start_0
    iget-object v6, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v7, "getHomeCardItem()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 124
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select * from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lakk;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "= \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lakl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 126
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 127
    if-nez v0, :cond_2

    .line 138
    if-eqz v0, :cond_1

    .line 139
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 143
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 130
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 131
    invoke-direct {p0, v1, v0}, Lakl;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)Laic;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 138
    if-eqz v0, :cond_3

    .line 139
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    monitor-exit v5

    goto :goto_0

    .line 138
    :cond_4
    if-eqz v0, :cond_5

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 135
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v6, p0, Lakl;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 138
    if-eqz v0, :cond_6

    .line 139
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_6
    monitor-exit v5

    goto :goto_0

    .line 138
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_7

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "onlyKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    :goto_0
    return-object v4

    .line 221
    :cond_0
    iget-object v5, p0, Lakl;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 222
    :try_start_0
    iget-object v6, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v7, "getVoiceNoteItem()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 226
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lakk;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lakk;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lakl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 228
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 229
    if-nez v0, :cond_2

    .line 240
    if-eqz v0, :cond_1

    .line 241
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 245
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 232
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 233
    sget-object v6, Lakk;->k:Ljava/lang/String;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 240
    if-eqz v0, :cond_3

    .line 241
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    monitor-exit v5

    goto :goto_0

    .line 240
    :cond_4
    if-eqz v0, :cond_5

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 237
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v6, p0, Lakl;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 240
    if-eqz v0, :cond_6

    .line 241
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_6
    monitor-exit v5

    goto/16 :goto_0

    .line 240
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_7

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 4
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v2, p0, Lakl;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 363
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lakk;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lakk;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lakl;->e(Ljava/lang/String;)V

    .line 365
    monitor-exit v2

    goto :goto_0

    .end local v0    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(Ljava/lang/String;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lakl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 406
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    iget-object v0, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0, p1}, Lakl;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 32
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lakl;->a:Ljava/lang/String;

    const-string/jumbo v1, "onUpgrade()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
