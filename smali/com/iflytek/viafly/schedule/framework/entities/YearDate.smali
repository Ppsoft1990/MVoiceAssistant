.class public Lcom/iflytek/viafly/schedule/framework/entities/YearDate;
.super Ljava/lang/Object;
.source "YearDate.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/entities/IDatetimeLegal;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iflytek/viafly/schedule/framework/entities/IDatetimeLegal;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/YearDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33203924c24b073aL


# instance fields
.field private mMonth:I

.field private mMonthDay:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "month"    # I
    .param p2, "monthDay"    # I

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    .line 17
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    .line 24
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    .line 25
    iput p2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    .line 26
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/iflytek/viafly/schedule/framework/entities/YearDate;)I
    .locals 3
    .param p1, "another"    # Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    .prologue
    const/4 v0, -0x1

    .line 79
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    iget v2, p1, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    if-ge v1, v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    iget v2, p1, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    if-ne v1, v2, :cond_3

    .line 82
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    iget v2, p1, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    if-ne v1, v2, :cond_2

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_2
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    iget v2, p1, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    if-lt v1, v2, :cond_0

    .line 88
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->compareTo(Lcom/iflytek/viafly/schedule/framework/entities/YearDate;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    instance-of v3, p1, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    if-nez v3, :cond_3

    move v1, v2

    .line 65
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;

    .line 68
    .local v0, "other":Lcom/iflytek/viafly/schedule/framework/entities/YearDate;
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_4
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    return v0
.end method

.method public getMonthDay()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 49
    const/16 v0, 0x1f

    .line 50
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 51
    .local v1, "result":I
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    add-int/lit8 v1, v2, 0x1f

    .line 52
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    add-int v1, v2, v3

    .line 53
    return v1
.end method

.method public isLegal()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    if-lt v2, v1, :cond_0

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    const/16 v3, 0xc

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    if-lt v2, v1, :cond_0

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    .line 37
    return-void
.end method

.method public setMonthDay(I)V
    .locals 0
    .param p1, "monthDay"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/YearDate;->mMonthDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "th]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
