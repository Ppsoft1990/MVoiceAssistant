.class public Lapp;
.super Lapo;
.source "MusicCacheResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Lapr;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lapq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lapo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "mTotal"    # I

    .prologue
    .line 39
    iput p1, p0, Lapp;->c:I

    .line 40
    return-void
.end method

.method public a(Lapr;)V
    .locals 0
    .param p1, "mSettings"    # Lapr;

    .prologue
    .line 63
    iput-object p1, p0, Lapp;->g:Lapr;

    .line 64
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "mSongList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    iput-object p1, p0, Lapp;->h:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "mStart"    # I

    .prologue
    .line 51
    iput p1, p0, Lapp;->e:I

    .line 52
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lapq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "mSearchItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lapq;>;"
    iput-object p1, p0, Lapp;->i:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "mCount"    # I

    .prologue
    .line 57
    iput p1, p0, Lapp;->f:I

    .line 58
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lapp;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStatus"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lapp;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCacheId"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lapp;->d:Ljava/lang/String;

    .line 46
    return-void
.end method
