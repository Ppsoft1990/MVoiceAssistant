.class Lcom/iflytek/viafly/music/manager/MusicBizManager$a;
.super Ljava/lang/Object;
.source "MusicBizManager.java"

# interfaces
.implements Laqa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/music/manager/MusicBizManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

.field private b:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/music/manager/MusicBizManager;Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/manager/MusicBizManager;
    .param p2, "currentAudio"    # Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->b:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 531
    return-void
.end method


# virtual methods
.method public a(ILapo;JI)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lapo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, "infoResult":Laps;
    const-string/jumbo v2, "MusicBizManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const p1, 0xc3565

    .line 539
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-static {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->c(Lcom/iflytek/viafly/music/manager/MusicBizManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lqf;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "desc":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 541
    instance-of v2, p2, Laps;

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 542
    check-cast v1, Laps;

    .line 543
    invoke-virtual {v1}, Laps;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 544
    if-nez v0, :cond_1

    .line 545
    const-string/jumbo v2, "MusicBizManager"

    const-string/jumbo v3, "mBlcListener null info"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v1, Laps;->l:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 557
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->b:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    iget-object v3, v1, Laps;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->n(Ljava/lang/String;)V

    .line 558
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->b:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->b:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    iget-object v3, v1, Laps;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f(Ljava/lang/String;)V

    .line 562
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->b:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    iget-object v3, v1, Laps;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->d(Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    iget-object v3, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->b:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-static {v2, v3}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->b(Lcom/iflytek/viafly/music/manager/MusicBizManager;Lcom/iflytek/viafly/player/entity/Audio;)V

    .line 573
    :goto_1
    return-void

    .line 547
    :cond_1
    invoke-virtual {v1}, Laps;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_2
    const-string/jumbo v2, "MusicBizManager"

    const-string/jumbo v3, "mBlcListener getImmediateListen null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :cond_3
    const-string/jumbo v2, "MusicBizManager"

    const-string/jumbo v3, "mBlcListener result null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_4
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    invoke-static {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->d(Lcom/iflytek/viafly/music/manager/MusicBizManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/iflytek/viafly/music/manager/MusicBizManager$a$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager$a$1;-><init>(Lcom/iflytek/viafly/music/manager/MusicBizManager$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    iget-object v2, p0, Lcom/iflytek/viafly/music/manager/MusicBizManager$a;->a:Lcom/iflytek/viafly/music/manager/MusicBizManager;

    const v3, 0x9ba3c1

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->e(I)V

    goto :goto_1
.end method
