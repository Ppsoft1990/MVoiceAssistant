.class public Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
.super Ljava/lang/Object;
.source "MonthDate.java"

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
        "Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x32ba9aab051de6caL


# instance fields
.field private mMonthDay:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "monthDay"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    .line 18
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    .line 19
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
    .line 81
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;)I
    .locals 3
    .param p1, "another"    # Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 69
    const/4 v1, -0x1

    .line 76
    :goto_0
    return v1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-le v1, v2, :cond_1

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->compareTo(Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    instance-of v3, p1, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    if-nez v3, :cond_3

    move v1, v2

    .line 52
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;

    .line 55
    .local v0, "other":Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    if-nez v3, :cond_4

    .line 56
    iget-object v3, v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 60
    goto :goto_0
.end method

.method public getMonthDay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0x1f

    .line 37
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 38
    .local v1, "result":I
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 39
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 40
    return v1

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isLegal()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 31
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMonthDay(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "monthDay"    # Ljava/lang/Integer;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/MonthDate;->mMonthDay:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "th]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
