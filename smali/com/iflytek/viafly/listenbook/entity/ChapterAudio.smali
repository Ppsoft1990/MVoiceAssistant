.class public Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;
.super Lcom/iflytek/viafly/player/entity/Audio;
.source "ChapterAudio.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iflytek/viafly/player/entity/Audio;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChapterStream;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/iflytek/viafly/listenbook/entity/Chapter;

.field private h:Lcom/iflytek/viafly/listenbook/entity/Chapter;

.field private i:Z

.field private j:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/iflytek/viafly/player/entity/Audio;-><init>()V

    .line 21
    const-string/jumbo v0, "ChapterAudio"

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a:Ljava/lang/String;

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/player/entity/Audio;-><init>(Landroid/os/Parcel;)V

    .line 21
    const-string/jumbo v0, "ChapterAudio"

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->c:I

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    const-class v1, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->e:Ljava/lang/String;

    .line 197
    const-class v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->g:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .line 198
    const-class v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/Chapter;

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .line 199
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->c:I

    return v0
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)I
    .locals 2
    .param p1, "other"    # Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .param p1, "freeType"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b:I

    .line 57
    return-void
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/Chapter;)V
    .locals 0
    .param p1, "nextChapter"    # Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->g:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .line 99
    return-void
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V
    .locals 0
    .param p1, "chargeInfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->j:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    .line 132
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailUrl"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->e:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChapterStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "streamList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/listenbook/entity/ChapterStream;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 75
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "tryListen"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->i:Z

    .line 122
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "orderNum"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->c:I

    .line 65
    return-void
.end method

.method public b(Lcom/iflytek/viafly/listenbook/entity/Chapter;)V
    .locals 0
    .param p1, "prevChapter"    # Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    .line 107
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->f:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->f:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->a(Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->g:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/iflytek/viafly/listenbook/entity/Chapter;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->i()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/iflytek/viafly/player/entity/Audio;->n(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->i:Z

    return v0
.end method

.method public h()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->j:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 143
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    const-string/jumbo v1, "ChapterAudio"

    const-string/jumbo v2, "play use high rate"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 151
    .local v0, "length":I
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 154
    .end local v0    # "length":I
    :cond_3
    const-string/jumbo v1, "ChapterAudio"

    const-string/jumbo v2, "play use low rate"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;

    invoke-virtual {v1}, Lcom/iflytek/viafly/listenbook/entity/ChapterStream;->b()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChapterAudio{mOrderNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mFreeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mStreamList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDetailUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNextChpter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->g:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mPrevChapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "info= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    invoke-super {p0}, Lcom/iflytek/viafly/player/entity/Audio;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/player/entity/Audio;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->g:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChapterAudio;->h:Lcom/iflytek/viafly/listenbook/entity/Chapter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 188
    return-void
.end method
