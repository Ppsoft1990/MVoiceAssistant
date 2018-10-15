.class public Laqf;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"


# direct methods
.method public static a(Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;Ljava/util/List;I)V
    .locals 4
    .param p0, "type"    # Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 34
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->h()Lcom/iflytek/viafly/listenbook/base/PlayList;

    move-result-object v1

    .line 35
    .local v1, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    if-nez v1, :cond_2

    .line 36
    new-instance v1, Lcom/iflytek/viafly/listenbook/base/PlayList;

    .end local v1    # "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    invoke-direct {v1}, Lcom/iflytek/viafly/listenbook/base/PlayList;-><init>()V

    .line 38
    .restart local v1    # "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    :cond_2
    invoke-virtual {v1, p2}, Lcom/iflytek/viafly/listenbook/base/PlayList;->b(I)V

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(Ljava/util/List;)V

    .line 41
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Lcom/iflytek/viafly/listenbook/base/PlayList;)V

    .line 42
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
