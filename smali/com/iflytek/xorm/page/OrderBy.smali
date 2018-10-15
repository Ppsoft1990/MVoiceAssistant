.class public Lcom/iflytek/xorm/page/OrderBy;
.super Lcom/iflytek/xorm/page/Condition;


# instance fields
.field private a:Lcom/iflytek/xorm/page/OrderBy$OrderType;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/iflytek/xorm/page/OrderBy$OrderType;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/xorm/page/Condition;-><init>()V

    iput-object p1, p0, Lcom/iflytek/xorm/page/OrderBy;->field:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/xorm/page/OrderBy;->a:Lcom/iflytek/xorm/page/OrderBy$OrderType;

    return-void
.end method

.method public static asSQLOrders([Lcom/iflytek/xorm/page/OrderBy;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    if-lez v0, :cond_1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/iflytek/xorm/page/OrderBy;->getField()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/iflytek/xorm/page/OrderBy;->a:Lcom/iflytek/xorm/page/OrderBy$OrderType;

    sget-object v3, Lcom/iflytek/xorm/page/OrderBy$OrderType;->ASC:Lcom/iflytek/xorm/page/OrderBy$OrderType;

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, " asc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v2, " desc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static asc(Ljava/lang/String;)Lcom/iflytek/xorm/page/OrderBy;
    .locals 2

    new-instance v0, Lcom/iflytek/xorm/page/OrderBy;

    sget-object v1, Lcom/iflytek/xorm/page/OrderBy$OrderType;->ASC:Lcom/iflytek/xorm/page/OrderBy$OrderType;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/xorm/page/OrderBy;-><init>(Ljava/lang/String;Lcom/iflytek/xorm/page/OrderBy$OrderType;)V

    return-object v0
.end method

.method public static desc(Ljava/lang/String;)Lcom/iflytek/xorm/page/OrderBy;
    .locals 2

    new-instance v0, Lcom/iflytek/xorm/page/OrderBy;

    sget-object v1, Lcom/iflytek/xorm/page/OrderBy$OrderType;->DESC:Lcom/iflytek/xorm/page/OrderBy$OrderType;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/xorm/page/OrderBy;-><init>(Ljava/lang/String;Lcom/iflytek/xorm/page/OrderBy$OrderType;)V

    return-object v0
.end method
