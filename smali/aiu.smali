.class public Laiu;
.super Lajj;
.source "HomeAudioResourcePresenter.java"

# interfaces
.implements Laim;
.implements Laqy;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lais;

.field private d:Laiw;

.field private e:Laiy;

.field private f:Lair;

.field private g:Landroid/widget/Toast;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Larc;

.field private k:Laix;

.field private l:Z

.field private m:Lyn;


# direct methods
.method public constructor <init>(Laiw;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "cardView"    # Laiw;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "contentId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Lajj;-><init>()V

    .line 46
    const-string/jumbo v0, "HomeAudioResourcePresenter"

    iput-object v0, p0, Laiu;->b:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Laiu;->l:Z

    .line 165
    new-instance v0, Laiu$2;

    invoke-direct {v0, p0}, Laiu$2;-><init>(Laiu;)V

    iput-object v0, p0, Laiu;->m:Lyn;

    .line 67
    iput-object p1, p0, Laiu;->d:Laiw;

    .line 68
    iput-object p2, p0, Laiu;->h:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Laiu;->i:Ljava/lang/String;

    .line 70
    new-instance v0, Lais;

    iget-object v1, p0, Laiu;->h:Landroid/content/Context;

    iget-object v2, p0, Laiu;->m:Lyn;

    invoke-direct {v0, v1, v2}, Lais;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Laiu;->c:Lais;

    .line 71
    new-instance v0, Lair;

    invoke-direct {v0}, Lair;-><init>()V

    iput-object v0, p0, Laiu;->f:Lair;

    .line 72
    invoke-static {}, Laix;->a()Laix;

    move-result-object v0

    iput-object v0, p0, Laiu;->k:Laix;

    .line 73
    return-void
.end method

.method static synthetic a(Laiu;Laiy;)Laiy;
    .locals 0
    .param p0, "x0"    # Laiu;
    .param p1, "x1"    # Laiy;

    .prologue
    .line 45
    iput-object p1, p0, Laiu;->e:Laiy;

    return-object p1
.end method

.method static synthetic a(Laiu;)V
    .locals 0
    .param p0, "x0"    # Laiu;

    .prologue
    .line 45
    invoke-direct {p0}, Laiu;->t()V

    return-void
.end method

.method static synthetic a(Laiu;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laiu;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Laiu;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Laiu;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laiu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Laiu;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Laiu;)Lair;
    .locals 1
    .param p0, "x0"    # Laiu;

    .prologue
    .line 45
    iget-object v0, p0, Laiu;->f:Lair;

    return-object v0
.end method

.method static synthetic b(Laiu;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Laiu;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Laiu;->a(ILjava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p1}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Laiu;->g:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 225
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Laiu;->g:Landroid/widget/Toast;

    .line 229
    :goto_1
    iget-object v0, p0, Laiu;->g:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Laiu;->g:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic c(Laiu;)Laiw;
    .locals 1
    .param p0, "x0"    # Laiu;

    .prologue
    .line 45
    iget-object v0, p0, Laiu;->d:Laiw;

    return-object v0
.end method

.method static synthetic d(Laiu;)Larc;
    .locals 1
    .param p0, "x0"    # Laiu;

    .prologue
    .line 45
    iget-object v0, p0, Laiu;->j:Larc;

    return-object v0
.end method

.method static synthetic e(Laiu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Laiu;

    .prologue
    .line 45
    iget-object v0, p0, Laiu;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Laiu;)Laix;
    .locals 1
    .param p0, "x0"    # Laiu;

    .prologue
    .line 45
    iget-object v0, p0, Laiu;->k:Laix;

    return-object v0
.end method

.method private f(I)V
    .locals 1
    .param p1, "clickPosition"    # I

    .prologue
    .line 121
    iget-object v0, p0, Laiu;->k:Laix;

    invoke-virtual {v0}, Laix;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 122
    iget-object v0, p0, Laiu;->j:Larc;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Laiu;->j:Larc;

    invoke-virtual {v0, p0}, Larc;->b(Laqy;)Z

    .line 125
    :cond_0
    iget-object v0, p0, Laiu;->k:Laix;

    invoke-virtual {v0, p1}, Laix;->a(I)V

    .line 127
    :cond_1
    invoke-direct {p0}, Laiu;->s()Z

    .line 128
    return-void
.end method

.method private s()Z
    .locals 4

    .prologue
    .line 139
    const-string/jumbo v0, "HomeAudioResourcePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HomeAudioResourcePresenterprePlay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Laiu;->l:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Laiu;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Laiu;->j:Larc;

    invoke-virtual {v0}, Larc;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0}, Laiu;->t()V

    .line 155
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Laiu$1;

    invoke-direct {v1, p0}, Laiu$1;-><init>(Laiu;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private t()V
    .locals 3

    .prologue
    .line 232
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Laiu;->h:Landroid/content/Context;

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Laiu;->b(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Laiu;->u()V

    .line 252
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-direct {p0}, Laiu;->v()V

    .line 238
    iget-object v1, p0, Laiu;->j:Larc;

    invoke-virtual {v1, p0}, Larc;->e(Laqy;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Laiu;->j:Larc;

    invoke-virtual {v1, p0}, Larc;->a(Laqy;)Z

    goto :goto_0

    .line 241
    :cond_1
    iget-object v1, p0, Laiu;->k:Laix;

    invoke-virtual {v1}, Laix;->d()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 242
    .local v0, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-nez v0, :cond_2

    .line 243
    iget-object v1, p0, Laiu;->k:Laix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laix;->a(I)V

    .line 244
    iget-object v1, p0, Laiu;->k:Laix;

    invoke-virtual {v1}, Laix;->d()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v0

    .line 246
    :cond_2
    if-nez v0, :cond_3

    .line 247
    iget-object v1, p0, Laiu;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Laiu;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v1, p0, Laiu;->j:Larc;

    invoke-virtual {v1, v0, p0}, Larc;->a(Lcom/iflytek/viafly/player/entity/Audio;Laqy;)Z

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 258
    const-string/jumbo v0, "HomeAudioResourcePresenter"

    const-string/jumbo v1, "stopPlayer"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laiu$3;

    invoke-direct {v1, p0}, Laiu$3;-><init>(Laiu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 267
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 394
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Laiu$7;

    invoke-direct {v1, p0}, Laiu$7;-><init>(Laiu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laiy;
    .locals 1
    .param p1, "cache"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Laiu;->f:Lair;

    invoke-virtual {v0, p1}, Lair;->a(Ljava/lang/String;)Laiy;

    move-result-object v0

    iput-object v0, p0, Laiu;->e:Laiy;

    .line 106
    iget-object v0, p0, Laiu;->e:Laiy;

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "clickPosition"    # I

    .prologue
    .line 113
    const-string/jumbo v2, "item"

    iget-object v1, p0, Laiu;->e:Laiy;

    invoke-virtual {v1}, Laiy;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Laiu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Laiu;->e:Laiy;

    invoke-static {v1}, Lait;->a(Laiy;)Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v0

    .line 116
    .local v0, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    iget-object v1, p0, Laiu;->k:Laix;

    invoke-virtual {v1, v0}, Laix;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;)V

    .line 117
    invoke-direct {p0, p1}, Laiu;->f(I)V

    .line 118
    return-void
.end method

.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 96
    iput-object p1, p0, Laiu;->a:Lail;

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    :cond_0
    const-string/jumbo v1, "HomeAudioResourcePresenter"

    const-string/jumbo v2, "appendFtLog | entry or id is null or empty"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v1, "d_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Laiu;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT89602"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 373
    invoke-virtual {p0}, Laiu;->i()Z

    .line 374
    return-void
.end method

.method public b(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Laiu;->e:Laiy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laiu;->e:Laiy;

    invoke-virtual {v1}, Laiy;->b()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Laiu;->e:Laiy;

    invoke-virtual {v1}, Laiy;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 209
    iget-object v1, p0, Laiu;->e:Laiy;

    invoke-virtual {v1}, Laiy;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Laiu;->u()V

    .line 379
    iget-object v0, p0, Laiu;->j:Larc;

    invoke-virtual {v0, p0}, Larc;->d(Laqy;)V

    .line 380
    return-void
.end method

.method public c(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 296
    const-string/jumbo v0, "HomeAudioResourcePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HomeAudioResourcePresenterstate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Laiu$4;

    invoke-direct {v1, p0, p1}, Laiu$4;-><init>(Laiu;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    iget-object v0, p0, Laiu;->d:Laiw;

    invoke-interface {v0, p1}, Laiw;->a(I)V

    .line 304
    return-void
.end method

.method public d(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 307
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Laiu;->k:Laix;

    invoke-virtual {v0}, Laix;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Laiu;->v()V

    .line 390
    invoke-static {}, Laio;->b()Laio;

    move-result-object v0

    iget-object v1, p0, Laiu;->j:Larc;

    invoke-virtual {v1}, Larc;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Laio;->a(I)V

    .line 391
    return-void
.end method

.method public e(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 314
    const-string/jumbo v0, "HomeAudioResourcePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HomeAudioResourcePresentererrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Laiu$5;

    invoke-direct {v1, p0}, Laiu$5;-><init>(Laiu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    invoke-direct {p0}, Laiu;->u()V

    .line 322
    return-void
.end method

.method public f()Z
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Larc;->a()Larc;

    move-result-object v1

    iput-object v1, p0, Laiu;->j:Larc;

    .line 77
    iget-object v1, p0, Laiu;->j:Larc;

    sget-object v2, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_AUDIO_RESOURCE:Lcom/iflytek/viafly/player/base/PlayerBizType;

    invoke-virtual {v1, v2, p0}, Larc;->a(Lcom/iflytek/viafly/player/base/PlayerBizType;Laqy;)I

    move-result v0

    .line 78
    .local v0, "resultCode":I
    const-string/jumbo v1, "HomeAudioResourcePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Laio;->b()Laio;

    move-result-object v1

    invoke-virtual {v1, p0}, Laio;->a(Laim;)V

    .line 80
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v1, 0x1

    .line 83
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Laiu;->c:Lais;

    invoke-virtual {v0}, Lais;->a()J

    .line 92
    :cond_0
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AudioNews"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laiu;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 134
    const-string/jumbo v0, "HomeAudioResourcePresenter"

    const-string/jumbo v1, "HomeAudioResourcePresenterhandlePlayClick"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Laiu;->s()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Laiu;->u()V

    .line 163
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Laiu;->k:Laix;

    invoke-virtual {v1}, Laix;->c()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 287
    .local v0, "clickPosition":I
    invoke-virtual {p0, v0}, Laiu;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-direct {p0, v0}, Laiu;->f(I)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-direct {p0}, Laiu;->u()V

    goto :goto_0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 330
    const-string/jumbo v0, "HomeAudioResourcePresenter"

    const-string/jumbo v1, "registered "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Laiu;->l:Z

    .line 332
    invoke-static {}, Laio;->b()Laio;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_AUDIO_RESOURCE:Lcom/iflytek/viafly/player/base/PlayerBizType;

    invoke-virtual {v0, v1}, Laio;->a(Lcom/iflytek/viafly/player/base/PlayerBizType;)V

    .line 333
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 336
    const-string/jumbo v0, "HomeAudioResourcePresenter"

    const-string/jumbo v1, "unregistered "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Laiu;->l:Z

    .line 338
    iget-object v0, p0, Laiu;->k:Laix;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laix;->a(I)V

    .line 339
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Laiu$6;

    invoke-direct {v1, p0}, Laiu$6;-><init>(Laiu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public p()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 363
    invoke-virtual {p0}, Laiu;->i()Z

    .line 364
    return-void
.end method
