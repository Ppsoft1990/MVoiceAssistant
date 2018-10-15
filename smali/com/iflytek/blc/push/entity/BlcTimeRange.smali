.class public Lcom/iflytek/blc/push/entity/BlcTimeRange;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

.field private b:Lcom/iflytek/blc/push/entity/BlcTimePoint;


# direct methods
.method public constructor <init>(Lcom/iflytek/blc/push/entity/BlcTimePoint;Lcom/iflytek/blc/push/entity/BlcTimePoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    iput-object p2, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->b:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/iflytek/blc/push/entity/BlcTimeRange;

    iget-object v2, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->b:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/iflytek/blc/push/entity/BlcTimeRange;->b:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->b:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    iget-object v3, p1, Lcom/iflytek/blc/push/entity/BlcTimeRange;->b:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-virtual {v2, v3}, Lcom/iflytek/blc/push/entity/BlcTimePoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/iflytek/blc/push/entity/BlcTimeRange;->a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    iget-object v3, p1, Lcom/iflytek/blc/push/entity/BlcTimeRange;->a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-virtual {v2, v3}, Lcom/iflytek/blc/push/entity/BlcTimePoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getEndPoint()Lcom/iflytek/blc/push/entity/BlcTimePoint;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->b:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    return-object v0
.end method

.method public getStartPoint()Lcom/iflytek/blc/push/entity/BlcTimePoint;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->b:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->b:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/BlcTimePoint;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-virtual {v1}, Lcom/iflytek/blc/push/entity/BlcTimePoint;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BlcTimeRange [startPoint="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->a:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/push/entity/BlcTimeRange;->b:Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
