.class public Lzi;
.super Ljava/lang/Object;
.source "BlcTimePoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lzi;",
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
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lzi;->a:I

    .line 12
    iput p2, p0, Lzi;->b:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lzi;->c:I

    .line 14
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 18
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    iput v1, p0, Lzi;->a:I

    .line 19
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    iput v1, p0, Lzi;->b:I

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Lzi;->c:I

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lzi;)I
    .locals 4
    .param p1, "another"    # Lzi;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 71
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    iget v2, p0, Lzi;->a:I

    iget v3, p1, Lzi;->a:I

    if-gt v2, v3, :cond_0

    .line 77
    iget v2, p0, Lzi;->a:I

    iget v3, p1, Lzi;->a:I

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 78
    goto :goto_0

    .line 82
    :cond_2
    iget v2, p0, Lzi;->b:I

    iget v3, p1, Lzi;->b:I

    if-gt v2, v3, :cond_0

    .line 84
    iget v2, p0, Lzi;->b:I

    iget v3, p1, Lzi;->b:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_3
    iget v2, p0, Lzi;->c:I

    iget v3, p1, Lzi;->c:I

    if-gt v2, v3, :cond_0

    .line 90
    iget v0, p0, Lzi;->c:I

    iget v2, p1, Lzi;->c:I

    if-ge v0, v2, :cond_4

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lzi;

    invoke-virtual {p0, p1}, Lzi;->a(Lzi;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    if-ne p0, p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 30
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 31
    check-cast v0, Lzi;

    .line 32
    .local v0, "other":Lzi;
    iget v3, p0, Lzi;->a:I

    iget v4, v0, Lzi;->a:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_4
    iget v3, p0, Lzi;->b:I

    iget v4, v0, Lzi;->b:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_5
    iget v3, p0, Lzi;->c:I

    iget v4, v0, Lzi;->c:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 37
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 55
    const/16 v0, 0x1f

    .line 56
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 57
    .local v1, "result":I
    iget v2, p0, Lzi;->a:I

    add-int/lit8 v1, v2, 0x1f

    .line 58
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lzi;->b:I

    add-int v1, v2, v3

    .line 59
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lzi;->c:I

    add-int v1, v2, v3

    .line 60
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lzi;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzi;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzi;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
