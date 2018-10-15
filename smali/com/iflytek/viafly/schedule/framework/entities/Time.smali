.class public Lcom/iflytek/viafly/schedule/framework/entities/Time;
.super Ljava/lang/Object;
.source "Time.java"

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
        "Lcom/iflytek/viafly/schedule/framework/entities/Time;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4076129b7ae33649L


# instance fields
.field private mHour:I

.field private mMillisecond:I

.field private mMinute:I

.field private mSecond:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    .line 23
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    .line 26
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    .line 27
    iput p2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    .line 28
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    .line 29
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    .line 30
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
    .line 140
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/iflytek/viafly/schedule/framework/entities/Time;)I
    .locals 8
    .param p1, "another"    # Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 106
    .local v2, "calendar":Ljava/util/Calendar;
    const/16 v6, 0xb

    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 107
    const/16 v6, 0xc

    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 108
    const/16 v6, 0xd

    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 109
    const/16 v6, 0xe

    iget v7, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 110
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 112
    .local v4, "thisDate":J
    const/16 v6, 0xb

    iget v7, p1, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 v6, 0xc

    iget v7, p1, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 114
    const/16 v6, 0xd

    iget v7, p1, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 v6, 0xe

    iget v7, p1, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 116
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 118
    .local v0, "anotherDate":J
    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 119
    const/4 v6, -0x1

    .line 126
    .end local v0    # "anotherDate":J
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "thisDate":J
    :goto_0
    return v6

    .line 120
    .restart local v0    # "anotherDate":J
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v4    # "thisDate":J
    :cond_0
    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    .line 121
    const/4 v6, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "anotherDate":J
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "thisDate":J
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/Time;->compareTo(Lcom/iflytek/viafly/schedule/framework/entities/Time;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    instance-of v3, p1, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    if-nez v3, :cond_3

    move v1, v2

    .line 84
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .line 87
    .local v0, "other":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_4
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_5
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 94
    goto :goto_0

    .line 96
    :cond_6
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    return v0
.end method

.method public getMillisecond()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 66
    const/16 v0, 0x1f

    .line 67
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 68
    .local v1, "result":I
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    add-int/lit8 v1, v2, 0x1f

    .line 69
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    add-int v1, v2, v3

    .line 70
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    add-int v1, v2, v3

    .line 71
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    add-int v1, v2, v3

    .line 72
    return v1
.end method

.method public isLegal()Z
    .locals 3

    .prologue
    const/16 v2, 0x3b

    .line 131
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    .line 38
    return-void
.end method

.method public setMillisecond(I)V
    .locals 0
    .param p1, "millisecond"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    .line 62
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    .line 46
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/Time;->mMillisecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
