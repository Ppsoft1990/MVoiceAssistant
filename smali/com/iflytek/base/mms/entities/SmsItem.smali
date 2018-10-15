.class public Lcom/iflytek/base/mms/entities/SmsItem;
.super Ljava/lang/Object;
.source "SmsItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5dff44c5a2f16cb4L


# instance fields
.field private address:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private date:J

.field private dateSent:J

.field private msgId:J

.field private simId:I

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/iflytek/base/mms/entities/SmsItem$1;

    invoke-direct {v0}, Lcom/iflytek/base/mms/entities/SmsItem$1;-><init>()V

    sput-object v0, Lcom/iflytek/base/mms/entities/SmsItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p2, :cond_1

    .line 67
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v5

    invoke-virtual {v5}, Lhp;->b()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "modeName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 41
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "curName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 43
    const-string/jumbo v5, "_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 44
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    .line 40
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_3
    const-string/jumbo v5, "date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 46
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    goto :goto_1

    .line 47
    :cond_4
    const-string/jumbo v5, "thread_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 48
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    goto :goto_1

    .line 49
    :cond_5
    const-string/jumbo v5, "address"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 50
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    goto :goto_1

    .line 51
    :cond_6
    const-string/jumbo v5, "body"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 52
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    goto :goto_1

    .line 53
    :cond_7
    const-string/jumbo v5, "date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 54
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    goto :goto_1

    .line 55
    :cond_8
    const-string/jumbo v5, "date_sent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 56
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    goto :goto_1

    .line 57
    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "mode":Ljava/lang/String;
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v5

    invoke-virtual {v5, v2}, Lhp;->a(Ljava/lang/String;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v4

    .line 61
    .local v4, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    if-nez v4, :cond_a

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v5

    .line 62
    :goto_2
    iput v5, p0, Lcom/iflytek/base/mms/entities/SmsItem;->simId:I

    goto :goto_1

    :cond_a
    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v5

    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->simId:I

    .line 149
    return-void
.end method

.method public constructor <init>(Lhw;)V
    .locals 2
    .param p1, "sms"    # Lhw;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Lhw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    .line 71
    invoke-virtual {p1}, Lhw;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    .line 72
    invoke-virtual {p1}, Lhw;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lhw;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lhw;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    if-ne p0, p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 193
    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 195
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 196
    check-cast v0, Lcom/iflytek/base/mms/entities/SmsItem;

    .line 197
    .local v0, "other":Lcom/iflytek/base/mms/entities/SmsItem;
    iget-object v3, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 198
    iget-object v3, v0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 199
    goto :goto_0

    .line 200
    :cond_4
    iget-object v3, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 201
    goto :goto_0

    .line 202
    :cond_5
    iget-object v3, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 203
    iget-object v3, v0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 204
    goto :goto_0

    .line 205
    :cond_6
    iget-object v3, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 206
    goto :goto_0

    .line 207
    :cond_7
    iget-wide v4, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    iget-wide v6, v0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_8

    move v1, v2

    .line 208
    goto :goto_0

    .line 209
    :cond_8
    iget-wide v4, p0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    iget-wide v6, v0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_9

    move v1, v2

    .line 210
    goto :goto_0

    .line 211
    :cond_9
    iget-wide v4, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    iget-wide v6, v0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_a

    move v1, v2

    .line 212
    goto :goto_0

    .line 213
    :cond_a
    iget v3, p0, Lcom/iflytek/base/mms/entities/SmsItem;->simId:I

    iget v4, v0, Lcom/iflytek/base/mms/entities/SmsItem;->simId:I

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 214
    goto :goto_0

    .line 215
    :cond_b
    iget-wide v4, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    iget-wide v6, v0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    .line 216
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    return-wide v0
.end method

.method public getDateSent()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    return-wide v0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    return-wide v0
.end method

.method public getSimCard()Lcom/iflytek/common/adaptation/entity/SimCard;
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/iflytek/common/adaptation/entity/SimCard;->values()[Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->simId:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->simId:I

    return v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x20

    .line 176
    const/16 v0, 0x1f

    .line 177
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 178
    .local v1, "result":I
    iget-object v2, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 179
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 180
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    iget-wide v6, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 181
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    iget-wide v6, p0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 182
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    iget-wide v6, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 183
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/iflytek/base/mms/entities/SmsItem;->simId:I

    add-int v1, v2, v3

    .line 184
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    iget-wide v6, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 185
    return v1

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    .line 99
    return-void
.end method

.method public setDateSent(J)V
    .locals 1
    .param p1, "dateSent"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    .line 107
    return-void
.end method

.method public setMsgId(J)V
    .locals 1
    .param p1, "msgId"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    .line 83
    return-void
.end method

.method public setThreadId(J)V
    .locals 1
    .param p1, "threadId"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsItem [msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dateSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/base/mms/entities/SmsItem;->simId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->msgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->threadId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-wide v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->dateSent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Lcom/iflytek/base/mms/entities/SmsItem;->simId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
