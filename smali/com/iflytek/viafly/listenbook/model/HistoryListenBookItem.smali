.class public Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;
.super Lcom/iflytek/viafly/player/entity/Audio;
.source "HistoryListenBookItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/iflytek/viafly/player/entity/Audio;-><init>()V

    .line 11
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/player/entity/Audio;-><init>(Landroid/os/Parcel;)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->i:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->j:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->k:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->l:Z

    .line 158
    return-void

    :cond_0
    move v0, v2

    .line 155
    goto :goto_0

    :cond_1
    move v1, v2

    .line 157
    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "mOffset"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h:I

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mImg"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "mSelected"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->j:Z

    .line 104
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContentName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "fromHistory"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->l:Z

    .line 120
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContentId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mChapterId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "mChapterName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAuthor"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDesc"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h:I

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUpdateTime"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->i:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailUrl"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->k:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->j:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->l:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/player/entity/Audio;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->j:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/model/HistoryListenBookItem;->l:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    return-void

    :cond_0
    move v0, v2

    .line 139
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1
.end method
