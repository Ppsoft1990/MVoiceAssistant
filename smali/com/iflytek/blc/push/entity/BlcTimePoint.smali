.class public Lcom/iflytek/blc/push/entity/BlcTimePoint;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/iflytek/blc/push/entity/BlcTimePoint;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    iput p2, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    iput v1, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/iflytek/blc/push/entity/BlcTimePoint;)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    iget v3, p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    iget v3, p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    iget v3, p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    iget v3, p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    if-ge v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    iget v3, p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    if-gt v2, v3, :cond_0

    iget v0, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    iget v2, p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    if-ge v0, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-virtual {p0, p1}, Lcom/iflytek/blc/push/entity/BlcTimePoint;->compareTo(Lcom/iflytek/blc/push/entity/BlcTimePoint;)I

    move-result v0

    return v0
.end method

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
    check-cast p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;

    iget v2, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    iget v3, p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    iget v3, p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    iget v3, p1, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/blc/push/entity/BlcTimePoint;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
