.class public Lafr;
.super Ladr;
.source "MusicResultHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ladr;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lafq;

    invoke-direct {v0}, Lafq;-><init>()V

    return-object v0
.end method

.method protected c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 12
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    const/4 v11, 0x0

    .line 29
    invoke-super {p0, p1, p2}, Ladr;->c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    move-object v5, p2

    .line 30
    check-cast v5, Lafn;

    .line 32
    .local v5, "result":Lafn;
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Lafn;)V

    .line 34
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v7

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5}, Lafn;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lafn;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 35
    .local v2, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    invoke-virtual {v5}, Lafn;->a()Ljava/util/List;

    move-result-object v4

    .line 36
    .local v4, "netList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v6, "totalList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 64
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v7, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_RECOGNITION:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    invoke-static {v7, v6, v11}, Laqf;->a(Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;Ljava/util/List;I)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "d_entry"

    const-string/jumbo v8, "mic"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v7

    const-string/jumbo v8, "FT90008"

    invoke-virtual {v7, v8, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v7

    const-string/jumbo v8, "LX_100129"

    invoke-virtual {v7, v8}, Lwz;->a(Ljava/lang/String;)V

    .line 50
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .line 51
    .local v1, "firstSong":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    new-instance v3, Lafo;

    invoke-direct {v3}, Lafo;-><init>()V

    .line 52
    .local v3, "message":Lafo;
    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lafo;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->q()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lafo;->e:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lafo;->f:Ljava/lang/String;

    .line 55
    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lafo;->g:Ljava/lang/String;

    .line 56
    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->r()I

    move-result v7

    if-nez v7, :cond_1

    .line 57
    const-string/jumbo v7, "\u672c\u5730\u97f3\u4e50"

    iput-object v7, v3, Lafo;->h:Ljava/lang/String;

    .line 61
    :goto_1
    iput-object v5, v3, Lafo;->i:Lafn;

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lafo;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lafo;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v11}, Lafr;->b(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual {p0, v3}, Lafr;->a(Laee;)V

    goto/16 :goto_0

    .line 59
    :cond_1
    invoke-virtual {v5}, Lafn;->h()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lafo;->h:Ljava/lang/String;

    goto :goto_1
.end method
