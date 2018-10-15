.class public Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
.super Lcom/iflytek/viafly/player/entity/Audio;
.source "MusicCacheSongItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;",
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

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/iflytek/viafly/player/entity/Audio;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/player/entity/Audio;-><init>(Landroid/os/Parcel;)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->d:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->e:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->h:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->j:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "mError"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i:I

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlbum"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSinger"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDuration"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->e:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLrc"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContentType"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCoverUrl"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlbumUrl"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->d:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "mShareUrl"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->h:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDataSourceId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->j:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->j:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/player/entity/Audio;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return-void
.end method
