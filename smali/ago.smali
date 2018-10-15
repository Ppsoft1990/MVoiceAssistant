.class public Lago;
.super Lbby;
.source "GrayControlDaoImp.java"

# interfaces
.implements Lagn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Lagp;",
        ">;",
        "Lagn;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lbby;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lagp;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    .line 37
    .local v3, "selectionArgs1":[Ljava/lang/String;
    const-string/jumbo v2, "modelInfo = ?"

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-virtual/range {v0 .. v7}, Lago;->find([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 40
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lagp;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagp;

    .line 45
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string/jumbo v0, "GrayControlDaoImp"

    const-string/jumbo v2, "match null"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 45
    goto :goto_0
.end method

.method public a(Lagp;)V
    .locals 2
    .param p1, "grayControlInfo"    # Lagp;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lagp;->a()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v0, "GrayControlDaoImp"

    const-string/jumbo v1, "updateDataBase"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0, p1}, Lago;->update(Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public b(Lagp;)V
    .locals 5
    .param p1, "grayControlInfo"    # Lagp;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string/jumbo v2, "GrayControlDaoImp"

    const-string/jumbo v3, "insertDataBase"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0, p1}, Lago;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    .line 74
    .local v0, "row":J
    const-string/jumbo v2, "GrayControlDaoImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertDataBase || row = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "row":J
    :cond_0
    return-void
.end method
