.class public Lcom/iflytek/viafly/listenbook/base/PlayList;
.super Ljava/lang/Object;
.source "PlayList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/base/PlayList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/player/entity/Audio;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/iflytek/viafly/listenbook/base/PlayList$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/base/PlayList$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/base/PlayList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    .line 36
    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->g:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    .line 40
    invoke-static {}, Lamj;->a()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->e:I

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, -0x1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    .line 36
    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->g:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->a:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->b:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->c:Ljava/lang/String;

    .line 321
    sget-object v0, Lcom/iflytek/viafly/player/entity/Audio;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->e:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    .line 324
    return-void
.end method

.method private declared-synchronized e(Ljava/lang/String;)Lcom/iflytek/viafly/player/entity/Audio;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 144
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 152
    :goto_0
    monitor-exit p0

    return-object v1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/player/entity/Audio;

    invoke-virtual {v1}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/player/entity/Audio;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 152
    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private m()I
    .locals 3

    .prologue
    .line 293
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 295
    .local v0, "randomIndex":I
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    if-ne v0, v1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->m()I

    move-result v0

    .line 298
    .end local v0    # "randomIndex":I
    :cond_0
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "playbackMode"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->e:I

    .line 111
    return-void
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 1
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 73
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/player/entity/Audio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "audioList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PlayList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audioList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)Z
    .locals 4
    .param p1, "fromComplete"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 254
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    if-eqz p1, :cond_3

    .line 259
    iget v2, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->e:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 262
    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0
    .param p1, "playingIndex"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    .line 119
    return-void
.end method

.method public declared-synchronized b(Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 4
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 90
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 91
    const/4 v1, -0x1

    .line 92
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/player/entity/Audio;

    invoke-virtual {v2}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    move v1, v0

    .line 99
    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_1
    monitor-exit p0

    return-void

    .line 92
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public declared-synchronized c(Lcom/iflytek/viafly/player/entity/Audio;)I
    .locals 2
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    const/4 v0, -0x1

    .line 130
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->d(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->e(Ljava/lang/String;)Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object p1

    .line 135
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/player/entity/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->a:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->e:I

    return v0
.end method

.method public d(Lcom/iflytek/viafly/player/entity/Audio;)V
    .locals 1
    .param p1, "audio"    # Lcom/iflytek/viafly/player/entity/Audio;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c(Lcom/iflytek/viafly/player/entity/Audio;)I

    move-result v0

    .line 228
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->b(I)V

    .line 229
    return-void
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 156
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string/jumbo v1, "PlayList"

    const-string/jumbo v3, "isContainAudio id is null"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 167
    :goto_0
    monitor-exit p0

    return v1

    .line 161
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/player/entity/Audio;

    invoke-virtual {v1}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const/4 v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 167
    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    return v0
.end method

.method public declared-synchronized f()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 210
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    .line 214
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/player/entity/Audio;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->i()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/player/entity/Audio;

    return-object v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 236
    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->e:I

    packed-switch v1, :pswitch_data_0

    .line 250
    :goto_0
    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->g:I

    return v1

    .line 238
    :pswitch_0
    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    add-int/lit8 v0, v1, -0x1

    .line 239
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 242
    :cond_0
    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->g:I

    goto :goto_0

    .line 245
    .end local v0    # "index":I
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->m()I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->g:I

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public j()Lcom/iflytek/viafly/player/entity/Audio;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->k()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/player/entity/Audio;

    return-object v0
.end method

.method public k()I
    .locals 2

    .prologue
    .line 270
    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->e:I

    packed-switch v1, :pswitch_data_0

    .line 284
    :goto_0
    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->g:I

    return v1

    .line 272
    :pswitch_0
    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    add-int/lit8 v0, v1, 0x1

    .line 273
    .local v0, "index":I
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 276
    :cond_0
    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->g:I

    goto :goto_0

    .line 279
    .end local v0    # "index":I
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->m()I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->g:I

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized l()V
    .locals 1

    .prologue
    .line 339
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->b:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayList{mUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAudioList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayingIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlaybackMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 313
    iget v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Lcom/iflytek/viafly/listenbook/base/PlayList;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    return-void
.end method
