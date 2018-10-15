.class public Laaf;
.super Lbby;
.source "PhoneNumTypeDaoImpl.java"

# interfaces
.implements Laae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;",
        ">;",
        "Laae;"
    }
.end annotation


# instance fields
.field private a:Lzy;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lbby;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Laaf;->a:Lzy;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    .locals 14
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 41
    const-string/jumbo v7, "SELECT phoneNum,phoneName FROM business_number WHERE phoneNum = ?"

    .line 44
    .local v7, "sql":Ljava/lang/String;
    new-array v5, v13, [Ljava/lang/String;

    aput-object p1, v5, v12

    .line 46
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0, v7, v5}, Laaf;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 47
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    const/4 v8, 0x0

    .line 48
    .local v8, "tBusinessNumberTypeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 51
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    invoke-virtual {v9}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->toBusinessNumberType()Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 52
    if-eqz v8, :cond_1

    move-object v3, v8

    .line 90
    :cond_0
    :goto_0
    return-object v3

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v9, "PhoneNumTypeDaoImpl"

    const-string/jumbo v11, "get Business Number error"

    invoke-static {v9, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    if-nez v8, :cond_2

    if-eqz p1, :cond_2

    .line 62
    new-array v6, v13, [Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/iflytek/viafly/dial/cipher/NativeCipher;->a([BLandroid/content/Context;)[B

    move-result-object v9

    .line 62
    invoke-static {v9}, Ladg;->a([B)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v12

    .line 64
    .local v6, "selectionArgs1":[Ljava/lang/String;
    const-string/jumbo v7, "SELECT phoneClassify,phoneNum,phoneName,markTimes FROM phone_number_type WHERE phoneNum = ?"

    .line 67
    invoke-virtual {p0, v7, v6}, Laaf;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 69
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 70
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    .line 72
    .local v3, "item":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    :try_start_1
    invoke-virtual {v3}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getClassify()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "classify":Ljava/lang/String;
    const-string/jumbo v9, "T#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 75
    iget-object v9, p0, Laaf;->a:Lzy;

    invoke-interface {v9, v0}, Lzy;->a(Ljava/lang/String;)Laab;

    move-result-object v1

    .line 77
    .local v1, "classifyItem":Laab;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Laab;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->setClassify(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 81
    .end local v0    # "classify":Ljava/lang/String;
    .end local v1    # "classifyItem":Laab;
    :catch_1
    move-exception v2

    .line 82
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v9, "PhoneNumTypeDaoImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "find number mark error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v10

    .line 83
    goto :goto_0

    .line 89
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "item":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    .end local v6    # "selectionArgs1":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "PhoneNumTypeDaoImpl"

    const-string/jumbo v11, "match null"

    invoke-static {v9, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v10

    .line 90
    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v1, "sqlBuffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "phone_number_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Laaf;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 122
    const-string/jumbo v2, "PhoneNumTypeDaoImpl"

    const-string/jumbo v3, "insertListToDB"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0, p1}, Laaf;->insert(Ljava/util/List;)J

    move-result-wide v0

    .line 124
    .local v0, "result":J
    const-string/jumbo v2, "PhoneNumTypeDaoImpl"

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

    .line 126
    .end local v0    # "result":J
    :cond_0
    return-void
.end method

.method public a(Lzy;)V
    .locals 0
    .param p1, "pClassifyDao"    # Lzy;

    .prologue
    .line 145
    iput-object p1, p0, Laaf;->a:Lzy;

    .line 146
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lbby;->clear()V

    .line 132
    const-string/jumbo v0, "PhoneNumTypeDaoImpl"

    const-string/jumbo v1, "clear"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method
