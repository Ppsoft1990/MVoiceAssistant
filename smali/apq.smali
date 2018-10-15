.class public Lapq;
.super Ljava/lang/Object;
.source "MusicCacheSearchItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSearchType"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lapq;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSinger"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lapq;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSongName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lapq;->c:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlbum"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lapq;->d:Ljava/lang/String;

    .line 47
    return-void
.end method
