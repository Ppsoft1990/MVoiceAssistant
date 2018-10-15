.class public Lus;
.super Lbby;
.source "AppEntityDaoImpl.java"

# interfaces
.implements Lur;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Luu;",
        ">;",
        "Lur;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lbby;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 21
    const-string/jumbo v0, "AppEntityDaoImpl"

    iput-object v0, p0, Lus;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Luu;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 30
    const-string/jumbo v1, "packageName = ?"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v3

    const/16 v4, 0xa

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lus;->find(Ljava/lang/String;[Ljava/lang/String;II[Lcom/iflytek/xorm/page/OrderBy;)Lcom/iflytek/xorm/page/Pagination;

    move-result-object v6

    .line 31
    .local v6, "result":Lcom/iflytek/xorm/page/Pagination;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/iflytek/xorm/page/Pagination;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/iflytek/xorm/page/Pagination;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v5

    .line 34
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v6}, Lcom/iflytek/xorm/page/Pagination;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luu;

    goto :goto_0
.end method

.method public a(Luu;)V
    .locals 2
    .param p1, "appEntity"    # Luu;

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Luu;->a()Ljava/lang/Integer;

    move-result-object v0

    .line 64
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lus;->delete(I)V

    goto :goto_0
.end method

.method public a()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 39
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v1, "sqlBuffer":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select count(*) from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lus;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const-string/jumbo v6, " status=? "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 43
    .local v0, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v0}, Lus;->count(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 44
    .local v2, "totalCount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method
