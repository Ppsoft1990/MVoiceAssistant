.class public Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
.super Ljava/lang/Object;
.source "WeekDate.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/entities/IDatetimeLegal;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iflytek/viafly/schedule/framework/entities/IDatetimeLegal;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3b2cb3184e82e3d1L


# instance fields
.field private mWeekDay:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "weekDay"    # Ljava/lang/Integer;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    .line 20
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    .line 21
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)I
    .locals 3
    .param p1, "another"    # Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 44
    const/4 v1, -0x1

    .line 51
    :goto_0
    return v1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-le v1, v2, :cond_1

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->compareTo(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    instance-of v3, p1, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    if-nez v3, :cond_3

    move v1, v2

    .line 72
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .line 75
    .local v0, "other":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    if-nez v3, :cond_4

    .line 76
    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 80
    goto :goto_0
.end method

.method public getWeekDay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 59
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 60
    return v1

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isLegal()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 37
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWeekDay(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "weekDay"    # Ljava/lang/Integer;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;->mWeekDay:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
