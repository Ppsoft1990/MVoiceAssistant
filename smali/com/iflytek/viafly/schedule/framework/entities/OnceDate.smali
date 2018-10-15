.class public Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
.super Ljava/lang/Object;
.source "OnceDate.java"

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
        "Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3d75681e15802e43L


# instance fields
.field private mDay:I

.field private mHour:I

.field private mMillisecond:I

.field private mMinute:I

.field private mMonth:I

.field private mSecond:I

.field private mYear:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    .line 26
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    .line 36
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    .line 37
    iput p2, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    .line 38
    iput p3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    .line 39
    iput p4, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    .line 40
    iput p5, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    .line 41
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    .line 42
    iput v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    .line 43
    return-void
.end method


# virtual methods
.method public addDay(I)V
    .locals 8
    .param p1, "day"    # I

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .local v0, "calendar":Ljava/util/Calendar;
    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    iget v5, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    iget v6, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 115
    const/16 v1, 0xe

    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    .line 119
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    .line 120
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    .line 121
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    .line 122
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    .line 123
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    .line 124
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "calendar":Ljava/util/Calendar;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v7

    .line 126
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)I
    .locals 9
    .param p1, "another"    # Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .prologue
    const/4 v6, 0x1

    .line 183
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 184
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v7, 0x1

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 185
    const/4 v7, 0x2

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 186
    const/4 v7, 0x5

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 187
    const/16 v7, 0xb

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 188
    const/16 v7, 0xc

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 189
    const/16 v7, 0xd

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 190
    const/16 v7, 0xe

    iget v8, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 191
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 193
    .local v4, "thisDate":J
    const/4 v7, 0x1

    iget v8, p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 194
    const/4 v7, 0x2

    iget v8, p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 195
    const/4 v7, 0x5

    iget v8, p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 196
    const/16 v7, 0xb

    iget v8, p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 197
    const/16 v7, 0xc

    iget v8, p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 198
    const/16 v7, 0xd

    iget v8, p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 199
    const/16 v7, 0xe

    iget v8, p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 200
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 202
    .local v0, "anotherDate":J
    cmp-long v7, v4, v0

    if-gez v7, :cond_1

    .line 203
    const/4 v6, -0x1

    .line 210
    .end local v0    # "anotherDate":J
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "thisDate":J
    :cond_0
    :goto_0
    return v6

    .line 204
    .restart local v0    # "anotherDate":J
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v4    # "thisDate":J
    :cond_1
    cmp-long v7, v4, v0

    if-gtz v7, :cond_0

    .line 210
    .end local v0    # "anotherDate":J
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "thisDate":J
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v3

    .line 208
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->compareTo(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    if-ne p0, p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 150
    goto :goto_0

    .line 152
    :cond_2
    instance-of v3, p1, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    if-nez v3, :cond_3

    move v1, v2

    .line 153
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 155
    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    .line 156
    .local v0, "other":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_4
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 160
    goto :goto_0

    .line 162
    :cond_5
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 163
    goto :goto_0

    .line 165
    :cond_6
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 166
    goto :goto_0

    .line 168
    :cond_7
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 169
    goto :goto_0

    .line 171
    :cond_8
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 172
    goto :goto_0

    .line 174
    :cond_9
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    iget v4, v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 175
    goto :goto_0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    return v0
.end method

.method public getMillisecond()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 132
    const/16 v0, 0x1f

    .line 133
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 134
    .local v1, "result":I
    iget v2, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    add-int/lit8 v1, v2, 0x1f

    .line 135
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    add-int v1, v2, v3

    .line 136
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    add-int v1, v2, v3

    .line 137
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    add-int v1, v2, v3

    .line 138
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    add-int v1, v2, v3

    .line 139
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    add-int v1, v2, v3

    .line 140
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    add-int v1, v2, v3

    .line 141
    return v1
.end method

.method public isLegal()Z
    .locals 6

    .prologue
    const/16 v5, 0x3b

    const/4 v2, 0x1

    .line 215
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    if-lt v3, v2, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    if-lt v3, v2, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    if-lt v3, v2, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    const/16 v4, 0x17

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    if-gt v3, v5, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    if-gt v3, v5, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    const/16 v4, 0x3e7

    if-gt v3, v4, :cond_0

    .line 223
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 224
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x1

    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 225
    const/4 v3, 0x2

    iget v4, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 226
    iget v3, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gt v3, v4, :cond_0

    .line 233
    .end local v0    # "calendar":Ljava/util/Calendar;
    :goto_0
    return v2

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    .line 73
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    .line 81
    return-void
.end method

.method public setMillisecond(I)V
    .locals 0
    .param p1, "millisecond"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    .line 105
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    .line 89
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    .line 65
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    .line 97
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mSecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->mMillisecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
