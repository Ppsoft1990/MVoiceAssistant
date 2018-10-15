.class public Lcom/iflytek/base/contacts/entities/ContactItem;
.super Ljava/lang/Object;
.source "ContactItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ltf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/contacts/entities/ContactItem$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem$1;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem$1;-><init>()V

    sput-object v0, Lcom/iflytek/base/contacts/entities/ContactItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v2, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->a:J

    .line 14
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->e:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->f:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->g:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->h:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    .line 31
    iput-wide v2, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->j:J

    .line 34
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "contactId"    # J
    .param p3, "contactName"    # Ljava/lang/String;
    .param p4, "phoneId"    # Ljava/lang/String;
    .param p5, "phoneNum"    # Ljava/lang/String;
    .param p6, "mode"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v2, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->a:J

    .line 14
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->e:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->f:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->g:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->h:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    .line 31
    iput-wide v2, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->j:J

    .line 37
    iput-wide p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->a:J

    .line 38
    iput-object p3, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->c:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->f:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->h:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/contacts/entities/ContactItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # J

    .prologue
    .line 10
    iput-wide p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/iflytek/base/contacts/entities/ContactItem;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # J

    .prologue
    .line 10
    iput-wide p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->j:J

    return-wide p1
.end method

.method static synthetic b(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/iflytek/base/contacts/entities/ContactItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/contacts/entities/ContactItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->a:J

    .line 67
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "numberType"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->h:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->a:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1
    .param p1, "photoId"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->j:J

    .line 115
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->f:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    if-ne p0, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 187
    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 189
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 190
    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 191
    .local v0, "other":Lcom/iflytek/base/contacts/entities/ContactItem;
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 192
    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 193
    goto :goto_0

    .line 194
    :cond_4
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 195
    goto :goto_0

    .line 196
    :cond_5
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 197
    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 198
    goto :goto_0

    .line 199
    :cond_6
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 200
    goto :goto_0

    .line 201
    :cond_7
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 202
    iget-object v3, v0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 203
    goto :goto_0

    .line 204
    :cond_8
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 205
    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "showNumber"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->e:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->j:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 174
    const/16 v0, 0x1f

    .line 175
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 176
    .local v1, "result":I
    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 177
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 178
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 179
    return v1

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ContactItem [mContactName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-wide v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-wide v0, p0, Lcom/iflytek/base/contacts/entities/ContactItem;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    return-void
.end method
