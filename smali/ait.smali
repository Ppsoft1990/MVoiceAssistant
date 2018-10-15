.class public Lait;
.super Ljava/lang/Object;
.source "HomeAudioResourceHandler.java"


# direct methods
.method public static a(Laiy;)Lcom/iflytek/viafly/listenbook/base/PlayList;
    .locals 5
    .param p0, "audioResourceCardItem"    # Laiy;

    .prologue
    .line 24
    new-instance v2, Lcom/iflytek/viafly/listenbook/base/PlayList;

    invoke-direct {v2}, Lcom/iflytek/viafly/listenbook/base/PlayList;-><init>()V

    .line 25
    .local v2, "playList":Lcom/iflytek/viafly/listenbook/base/PlayList;
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(Ljava/lang/String;)V

    .line 26
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Laiy;->a()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->b(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->c(Ljava/lang/String;)V

    .line 28
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(I)V

    .line 29
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/listenbook/base/PlayList;->b(I)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "audioList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Laiy;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    .line 34
    .local v1, "audioResourceItem":Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    .end local v0    # "audioList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    .end local v1    # "audioResourceItem":Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0

    .line 37
    .restart local v0    # "audioList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/player/entity/Audio;>;"
    :cond_1
    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/listenbook/base/PlayList;->a(Ljava/util/List;)V

    .line 38
    return-object v2
.end method
