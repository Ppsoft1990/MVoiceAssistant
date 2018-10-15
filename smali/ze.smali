.class public Lze;
.super Lbby;
.source "ClientNoticeDaoImpl.java"

# interfaces
.implements Lzb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Lzk;",
        ">;",
        "Lzb;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lbby;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lzk;
    .locals 10
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v1

    .line 156
    :cond_1
    const-string/jumbo v2, "msgId = ?"

    .line 157
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

    .line 159
    invoke-virtual/range {v0 .. v7}, Lze;->find([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 162
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lzk;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzk;

    move-object v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lze;->getUpdateSqlBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    .local v1, "sqlBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, " set readFlag = 1 where msgId = ? and readFlag = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 41
    .local v0, "selectionArgs":[Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lze;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
