.class public Lzz;
.super Lbby;
.source "PhoneClassifyDaoImpl.java"

# interfaces
.implements Lzy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Laab;",
        ">;",
        "Lzy;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lbby;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laab;
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 39
    const-string/jumbo v2, "SELECT uuid,phoneClassify FROM phone_classify WHERE uuid = ?"

    .line 44
    .local v2, "sql":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v3

    .line 44
    invoke-static {v3}, Ladg;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 47
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lzz;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Laab;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 49
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laab;

    .line 52
    :goto_0
    return-object v3

    .line 51
    :cond_0
    const-string/jumbo v3, "PhoneClassifyDaoImpl"

    const-string/jumbo v4, "match null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v1, "sqlBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "phone_classify"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lzz;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Laab;>;"
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Laab;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    const-string/jumbo v2, "PhoneClassifyDaoImpl"

    const-string/jumbo v3, "insertListToDB"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0, p1}, Lzz;->insert(Ljava/util/List;)J

    move-result-wide v0

    .line 60
    .local v0, "result":J
    const-string/jumbo v2, "PhoneClassifyDaoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertListToDB || result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "result":J
    :cond_0
    return-void
.end method
