.class public final Lcom/iflytek/framework/business/components/MediaPlayerComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "MediaPlayerComponents.java"

# interfaces
.implements Lic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;
    }
.end annotation


# static fields
.field private static final MSG_START_PLAY:I = 0xc8

.field private static final MSG_STOP_PLAY:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "Business_MediaPlayerComponents"


# instance fields
.field private locker:Ljava/lang/Object;

.field private mMusicResultListener:Laqb$a;

.field private mTitleFunctionHelper:Lrm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->locker:Ljava/lang/Object;

    .line 414
    new-instance v0, Lcom/iflytek/framework/business/components/MediaPlayerComponents$1;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents$1;-><init>(Lcom/iflytek/framework/business/components/MediaPlayerComponents;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->mMusicResultListener:Laqb$a;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/MediaPlayerComponents;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/MediaPlayerComponents;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parserToAudio(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 615
    :cond_0
    const/4 v2, 0x0

    .line 631
    :cond_1
    return-object v2

    .line 617
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 619
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 620
    .local v3, "obj":Lorg/json/JSONObject;
    new-instance v1, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-direct {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 621
    .local v1, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->l(Ljava/lang/String;)V

    .line 622
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->m(Ljava/lang/String;)V

    .line 623
    const-string/jumbo v4, "singer"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b(Ljava/lang/String;)V

    .line 624
    const-string/jumbo v4, "album"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a(Ljava/lang/String;)V

    .line 625
    const-string/jumbo v4, "albumcover"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f(Ljava/lang/String;)V

    .line 626
    const-string/jumbo v4, "shareurl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->h(Ljava/lang/String;)V

    .line 627
    const-string/jumbo v4, "source"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i(Ljava/lang/String;)V

    .line 628
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->c(I)V

    .line 629
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private submitResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 439
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 440
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 442
    .local v0, "callbackID":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    const-string/jumbo v4, "Business_MediaPlayerComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSubmitResult callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "javascript:LXJSBridge.callbackFromNative(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 451
    return-void

    .line 446
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_MediaPlayerComponents"

    const-string/jumbo v5, "onSubmitResult assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->c()I

    move-result v0

    return v0
.end method

.method public getPlayDuration()I
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->b()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->g()Z

    move-result v0

    return v0
.end method

.method public onCompleted(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 550
    const-string/jumbo v0, "Business_MediaPlayerComponents"

    const-string/jumbo v1, "onCompleted"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    const-string/jumbo v1, "onPlayCompleted"

    .line 553
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 556
    :cond_0
    const/16 v0, 0xc9

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 557
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 561
    const-string/jumbo v1, "Business_MediaPlayerComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " extra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v1

    invoke-virtual {v1}, Lie;->d()V

    .line 564
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v1

    const-string/jumbo v2, "onPlayError"

    .line 567
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 566
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-virtual {v1, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 570
    :cond_0
    const/16 v1, 0xc9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->sendHandlerMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Business_MediaPlayerComponents"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 54
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    const-string/jumbo v51, "Business_MediaPlayerComponents"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "onExec action = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, " params = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string/jumbo v51, "playMedia"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-nez v51, :cond_0

    const-string/jumbo v51, "playNetMedia"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_2

    .line 89
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lie;->a(Lic;)V

    .line 90
    const/16 v51, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 91
    .local v41, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->startPlayMedia(Ljava/lang/String;)V

    .line 382
    .end local v41    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v51, 0x0

    :goto_1
    return-object v51

    .line 93
    :cond_2
    const-string/jumbo v51, "stopMedia"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_3

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->stopPlayMedia()V

    goto :goto_0

    .line 96
    :cond_3
    const-string/jumbo v51, "resumeMedia"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_4

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->resumePlayMedia()V

    goto :goto_0

    .line 99
    :cond_4
    const-string/jumbo v51, "pauseMedia"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_5

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->pausePlayMedia()V

    goto :goto_0

    .line 102
    :cond_5
    const-string/jumbo v51, "getDuration"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_6

    .line 103
    new-instance v51, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v52, "OK"

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getPlayDuration()I

    move-result v53

    invoke-direct/range {v51 .. v53}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 105
    :cond_6
    const-string/jumbo v51, "getCurrentPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_7

    .line 106
    new-instance v51, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v52, "OK"

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getCurrentPosition()I

    move-result v53

    invoke-direct/range {v51 .. v53}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 108
    :cond_7
    const-string/jumbo v51, "isPlaying"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_8

    .line 109
    new-instance v51, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v52, "OK"

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->isPlaying()Z

    move-result v53

    invoke-direct/range {v51 .. v53}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 110
    :cond_8
    const-string/jumbo v51, "playLocalMedia"

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_9

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lie;->a(Lic;)V

    .line 113
    const/16 v51, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "audioIdString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_1

    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 116
    .local v6, "audioId":I
    invoke-static {}, Lank;->a()Lank;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Lank;->d(I)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "audioPath":Ljava/lang/String;
    const-string/jumbo v51, "Business_MediaPlayerComponents"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "PLAY_LOCAL_MEDIA, audioPath = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_1

    .line 119
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->startPlayMedia(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v6    # "audioId":I
    .end local v7    # "audioIdString":Ljava/lang/String;
    .end local v8    # "audioPath":Ljava/lang/String;
    :cond_9
    const-string/jumbo v51, "listenBookPlayer"

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_d

    .line 123
    const/16 v51, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v38

    .line 124
    .local v38, "object":Lorg/json/JSONObject;
    const-string/jumbo v51, "contentID"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 125
    .local v18, "contentID":Ljava/lang/String;
    const-string/jumbo v51, "chapterID"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 126
    .local v14, "chapterID":Ljava/lang/String;
    const-string/jumbo v51, "offset"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v39

    .line 127
    .local v39, "offset":I
    const-string/jumbo v51, "resType"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v45

    .line 128
    .local v45, "resType":I
    const-string/jumbo v51, "callOrigin"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v40

    .line 129
    .local v40, "origin":I
    const-string/jumbo v51, "Business_MediaPlayerComponents"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "START_PLAYER contentID  "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string/jumbo v51, "Business_MediaPlayerComponents"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "START_PLAYER chapterID  "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string/jumbo v51, "Business_MediaPlayerComponents"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "START_PLAYER offset  "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-static/range {v51 .. v52}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_a

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_a

    const/16 v51, 0x1

    move/from16 v0, v45

    move/from16 v1, v51

    if-eq v0, v1, :cond_b

    .line 134
    :cond_a
    new-instance v51, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v52, "Error"

    const-string/jumbo v53, "Error"

    invoke-direct/range {v51 .. v53}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_b
    new-instance v29, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    const-class v52, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v29, "intent":Landroid/content/Intent;
    const-string/jumbo v51, "entry"

    const-string/jumbo v52, "listenBookPage"

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v51, "contentId"

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v51, "chapterId"

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    if-lez v39, :cond_c

    .line 142
    move/from16 v0, v39

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v39, v0

    .line 143
    const-string/jumbo v51, "offset"

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 146
    .end local v14    # "chapterID":Ljava/lang/String;
    .end local v18    # "contentID":Ljava/lang/String;
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v38    # "object":Lorg/json/JSONObject;
    .end local v39    # "offset":I
    .end local v40    # "origin":I
    .end local v45    # "resType":I
    :cond_d
    const-string/jumbo v51, "cardMusicPlayer"

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_10

    .line 147
    const/16 v51, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v38

    .line 148
    .restart local v38    # "object":Lorg/json/JSONObject;
    const-string/jumbo v51, "seq"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v36

    .line 149
    .local v36, "musicPlayIndex":I
    const-string/jumbo v51, "list"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 150
    .local v35, "musicListStr":Ljava/lang/String;
    new-instance v34, Lorg/json/JSONArray;

    invoke-direct/range {v34 .. v35}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 151
    .local v34, "musicList":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->parserToAudio(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v31

    .line 152
    .local v31, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    if-ltz v36, :cond_e

    if-eqz v31, :cond_e

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v51

    if-nez v51, :cond_f

    .line 153
    :cond_e
    new-instance v51, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v52, "Error"

    const-string/jumbo v53, "Error"

    invoke-direct/range {v51 .. v53}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 156
    :cond_f
    sget-object v51, Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;->PLAY_TYPE_CARD:Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;

    move-object/from16 v0, v51

    move-object/from16 v1, v31

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Laqf;->a(Lcom/iflytek/viafly/music/manager/MusicBizManager$MusicPlayType;Ljava/util/List;I)V

    .line 158
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v23, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v51, "d_entry"

    const-string/jumbo v52, "h5"

    move-object/from16 v0, v23

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v51

    const-string/jumbo v52, "FT90008"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 161
    .end local v23    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v31    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;>;"
    .end local v34    # "musicList":Lorg/json/JSONArray;
    .end local v35    # "musicListStr":Ljava/lang/String;
    .end local v36    # "musicPlayIndex":I
    .end local v38    # "object":Lorg/json/JSONObject;
    :cond_10
    const-string/jumbo v51, "deleteCollect"

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1e

    .line 163
    const/16 v51, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v38

    .line 164
    .restart local v38    # "object":Lorg/json/JSONObject;
    const-string/jumbo v51, "contentIds"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 165
    .local v21, "contentIds":Ljava/lang/String;
    new-instance v17, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 166
    .local v17, "contentArray":Lorg/json/JSONArray;
    const-string/jumbo v51, "resType"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 167
    .local v45, "resType":Ljava/lang/String;
    const-string/jumbo v51, "source"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 168
    .local v49, "source":Ljava/lang/String;
    const-string/jumbo v51, "callbackId"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 169
    .local v13, "callbackId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_11

    .line 171
    const-string/jumbo v51, "deleteCollect"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v13}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_11
    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v51

    if-eqz v51, :cond_12

    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_12

    const-string/jumbo v51, "music"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_13

    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_13

    .line 174
    :cond_12
    const-string/jumbo v51, "deleteCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 178
    :cond_13
    invoke-static {}, Lth;->a()Lth;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lth;->c()Z

    move-result v51

    if-nez v51, :cond_14

    .line 179
    const-string/jumbo v51, "deleteCollect"

    const-string/jumbo v52, "100013"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 182
    :cond_14
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lhl;->c()Z

    move-result v51

    if-nez v51, :cond_15

    .line 183
    const-string/jumbo v51, "deleteCollect"

    const-string/jumbo v52, "100015"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 186
    :cond_15
    const-string/jumbo v51, "book"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_19

    .line 187
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v28, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v20, "contentIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v51

    move/from16 v0, v26

    move/from16 v1, v51

    if-ge v0, v1, :cond_17

    .line 190
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v27

    .line 191
    .local v27, "id":Ljava/lang/String;
    if-eqz v27, :cond_16

    .line 192
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lamk;->d(Ljava/lang/String;)Lamo;

    move-result-object v11

    .line 194
    .local v11, "bookMarkInfo":Lamo;
    if-eqz v11, :cond_16

    .line 195
    invoke-virtual {v11}, Lamo;->c()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v28

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v11    # "bookMarkInfo":Lamo;
    :cond_16
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 199
    .end local v27    # "id":Ljava/lang/String;
    :cond_17
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v51

    if-nez v51, :cond_18

    .line 200
    const-string/jumbo v51, "deleteCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 203
    :cond_18
    new-instance v32, Lamx;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    new-instance v52, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;-><init>(Lcom/iflytek/framework/business/components/MediaPlayerComponents;Ljava/util/List;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lamx;-><init>(Landroid/content/Context;Lamq;)V

    .line 204
    .local v32, "model":Lamx;
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lamx;->a(Ljava/util/List;)J

    goto/16 :goto_0

    .line 205
    .end local v20    # "contentIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "i":I
    .end local v28    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "model":Lamx;
    :cond_19
    const-string/jumbo v51, "music"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1d

    .line 206
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .restart local v28    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v51

    move/from16 v0, v26

    move/from16 v1, v51

    if-ge v0, v1, :cond_1b

    .line 208
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v27

    .line 210
    .restart local v27    # "id":Ljava/lang/String;
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Laqg;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v25

    .line 211
    .local v25, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    if-eqz v25, :cond_1a

    .line 212
    invoke-virtual/range {v25 .. v25}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->n()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v28

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1a
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 215
    .end local v25    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .end local v27    # "id":Ljava/lang/String;
    :cond_1b
    new-instance v33, Laqb;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    const-string/jumbo v52, "1136"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->mMusicResultListener:Laqb$a;

    move-object/from16 v53, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Laqb$a;)V

    .line 216
    .local v33, "musicBizHelper":Laqb;
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v51

    if-nez v51, :cond_1c

    .line 217
    const-string/jumbo v51, "deleteCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 220
    :cond_1c
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Laqb;->a(Ljava/util/List;)J

    goto/16 :goto_0

    .line 222
    .end local v26    # "i":I
    .end local v28    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "musicBizHelper":Laqb;
    :cond_1d
    const-string/jumbo v51, "deleteCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v13    # "callbackId":Ljava/lang/String;
    .end local v17    # "contentArray":Lorg/json/JSONArray;
    .end local v21    # "contentIds":Ljava/lang/String;
    .end local v38    # "object":Lorg/json/JSONObject;
    .end local v45    # "resType":Ljava/lang/String;
    .end local v49    # "source":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v51, "addCollect"

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_2a

    .line 226
    const/16 v51, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v38

    .line 227
    .restart local v38    # "object":Lorg/json/JSONObject;
    const-string/jumbo v51, "contentId"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 228
    .local v19, "contentId":Ljava/lang/String;
    const-string/jumbo v51, "resType"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 229
    .restart local v45    # "resType":Ljava/lang/String;
    const-string/jumbo v51, "source"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 230
    .restart local v49    # "source":Ljava/lang/String;
    const-string/jumbo v51, "chapterId"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v15, "chapterId":Ljava/lang/String;
    const-string/jumbo v51, "name"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 232
    .local v37, "name":Ljava/lang/String;
    const-string/jumbo v51, "singer"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 233
    .local v47, "singer":Ljava/lang/String;
    const-string/jumbo v51, "albumName"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "albumName":Ljava/lang/String;
    const-string/jumbo v51, "coverUrl"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 235
    .local v22, "coverUrl":Ljava/lang/String;
    const-string/jumbo v51, "callbackId"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 236
    .restart local v13    # "callbackId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_1f

    .line 238
    const-string/jumbo v51, "addCollect"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v13}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_1f
    if-eqz v19, :cond_20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v51

    if-eqz v51, :cond_20

    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_21

    .line 241
    :cond_20
    const-string/jumbo v51, "addCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 244
    :cond_21
    const-string/jumbo v51, "book"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_23

    .line 245
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_22

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_25

    .line 246
    :cond_22
    const-string/jumbo v51, "addCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 249
    :cond_23
    const-string/jumbo v51, "music"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_25

    .line 250
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_24

    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_24

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_24

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_25

    .line 251
    :cond_24
    const-string/jumbo v51, "addCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 255
    :cond_25
    invoke-static {}, Lth;->a()Lth;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lth;->c()Z

    move-result v51

    if-nez v51, :cond_26

    .line 256
    const-string/jumbo v51, "addCollect"

    const-string/jumbo v52, "100013"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 259
    :cond_26
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lhl;->c()Z

    move-result v51

    if-nez v51, :cond_27

    .line 260
    const-string/jumbo v51, "addCollect"

    const-string/jumbo v52, "100015"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 263
    :cond_27
    const-string/jumbo v51, "book"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_28

    .line 264
    new-instance v32, Lamx;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    new-instance v52, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents$BookCollectListener;-><init>(Lcom/iflytek/framework/business/components/MediaPlayerComponents;Ljava/util/List;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lamx;-><init>(Landroid/content/Context;Lamq;)V

    .line 265
    .restart local v32    # "model":Lamx;
    const/16 v51, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move/from16 v3, v51

    invoke-virtual {v0, v1, v15, v2, v3}, Lamx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    goto/16 :goto_0

    .line 266
    .end local v32    # "model":Lamx;
    :cond_28
    const-string/jumbo v51, "music"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_29

    .line 267
    new-instance v33, Laqb;

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    const-string/jumbo v52, "1135"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->mMusicResultListener:Laqb$a;

    move-object/from16 v53, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Laqb$a;)V

    .line 268
    .restart local v33    # "musicBizHelper":Laqb;
    new-instance v48, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-direct/range {v48 .. v48}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;-><init>()V

    .line 269
    .local v48, "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->l(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {v48 .. v49}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->i(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, v48

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->m(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->b(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->a(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, v48

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->f(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Laqb;->a(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)J

    goto/16 :goto_0

    .line 277
    .end local v33    # "musicBizHelper":Laqb;
    .end local v48    # "song":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    :cond_29
    const-string/jumbo v51, "addCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    .end local v4    # "albumName":Ljava/lang/String;
    .end local v13    # "callbackId":Ljava/lang/String;
    .end local v15    # "chapterId":Ljava/lang/String;
    .end local v19    # "contentId":Ljava/lang/String;
    .end local v22    # "coverUrl":Ljava/lang/String;
    .end local v37    # "name":Ljava/lang/String;
    .end local v38    # "object":Lorg/json/JSONObject;
    .end local v45    # "resType":Ljava/lang/String;
    .end local v47    # "singer":Ljava/lang/String;
    .end local v49    # "source":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v51, "queryCollect"

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_33

    .line 281
    const/16 v51, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v38

    .line 282
    .restart local v38    # "object":Lorg/json/JSONObject;
    const-string/jumbo v51, "contentId"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 283
    .restart local v19    # "contentId":Ljava/lang/String;
    const-string/jumbo v51, "resType"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 284
    .restart local v45    # "resType":Ljava/lang/String;
    const-string/jumbo v51, "source"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 285
    .restart local v49    # "source":Ljava/lang/String;
    const-string/jumbo v51, "callbackId"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 286
    .restart local v13    # "callbackId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_2b

    .line 288
    const-string/jumbo v51, "queryCollect"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v13}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_2b
    if-eqz v19, :cond_2c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v51

    if-eqz v51, :cond_2c

    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_2c

    const-string/jumbo v51, "music"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_2d

    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_2d

    .line 291
    :cond_2c
    const-string/jumbo v51, "queryCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 294
    :cond_2d
    invoke-static {}, Lth;->a()Lth;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lth;->c()Z

    move-result v51

    if-nez v51, :cond_2e

    .line 295
    const-string/jumbo v51, "queryCollect"

    const-string/jumbo v52, "100013"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 298
    :cond_2e
    const/16 v16, 0x0

    .line 299
    .local v16, "collected":Z
    const-string/jumbo v51, "book"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_30

    .line 300
    invoke-static {}, Lamk;->a()Lamk;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lamk;->d(Ljava/lang/String;)Lamo;

    move-result-object v11

    .line 301
    .restart local v11    # "bookMarkInfo":Lamo;
    if-eqz v11, :cond_2f

    const/16 v16, 0x1

    .line 309
    .end local v11    # "bookMarkInfo":Lamo;
    :goto_4
    new-instance v30, Lorg/json/JSONObject;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v30, "jsonObject":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 312
    .local v12, "callbackID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v51, "queryCollect"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 313
    const-string/jumbo v51, "callbackId"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string/jumbo v51, "errorCode"

    const-string/jumbo v52, "000000"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string/jumbo v51, "collected"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    const-string/jumbo v51, "resType"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string/jumbo v51, "contentId"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_5
    new-instance v51, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v52, "OK"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual/range {v51 .. v51}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v46

    .line 322
    .local v46, "result":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v51

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "javascript:LXJSBridge.callbackFromNative(\'"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, "\',\'"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, "\')"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .end local v12    # "callbackID":Ljava/lang/String;
    .end local v30    # "jsonObject":Lorg/json/JSONObject;
    .end local v46    # "result":Ljava/lang/String;
    .restart local v11    # "bookMarkInfo":Lamo;
    :cond_2f
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 302
    .end local v11    # "bookMarkInfo":Lamo;
    :cond_30
    const-string/jumbo v51, "music"

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_32

    .line 303
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v19

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Laqg;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-result-object v25

    .line 304
    .restart local v25    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    if-eqz v25, :cond_31

    const/16 v16, 0x1

    .line 305
    :goto_6
    goto/16 :goto_4

    .line 304
    :cond_31
    const/16 v16, 0x0

    goto :goto_6

    .line 306
    .end local v25    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    :cond_32
    const-string/jumbo v51, "queryCollect"

    const-string/jumbo v52, "100016"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->submitResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 318
    .restart local v12    # "callbackID":Ljava/lang/String;
    .restart local v30    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v24

    .line 319
    .local v24, "e":Ljava/lang/Exception;
    const-string/jumbo v51, "Business_MediaPlayerComponents"

    const-string/jumbo v52, "onSubmitResult assemble json error "

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 323
    .end local v12    # "callbackID":Ljava/lang/String;
    .end local v13    # "callbackId":Ljava/lang/String;
    .end local v16    # "collected":Z
    .end local v19    # "contentId":Ljava/lang/String;
    .end local v24    # "e":Ljava/lang/Exception;
    .end local v30    # "jsonObject":Lorg/json/JSONObject;
    .end local v38    # "object":Lorg/json/JSONObject;
    .end local v45    # "resType":Ljava/lang/String;
    .end local v49    # "source":Ljava/lang/String;
    :cond_33
    const-string/jumbo v51, "getPlayerContent"

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1

    .line 325
    invoke-static {}, Larc;->a()Larc;

    move-result-object v44

    .line 326
    .local v44, "playerManager":Larc;
    const-string/jumbo v42, "idle"

    .line 327
    .local v42, "playState":Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Larc;->g()I

    move-result v50

    .line 328
    .local v50, "state":I
    const/16 v51, 0x4

    move/from16 v0, v51

    move/from16 v1, v50

    if-ne v0, v1, :cond_37

    .line 329
    const-string/jumbo v42, "playing"

    .line 333
    :cond_34
    :goto_7
    invoke-virtual/range {v44 .. v44}, Larc;->i()Lcom/iflytek/viafly/player/base/PlayerBizType;

    move-result-object v9

    .line 334
    .local v9, "bizType":Lcom/iflytek/viafly/player/base/PlayerBizType;
    const-string/jumbo v43, ""

    .line 335
    .local v43, "playType":Ljava/lang/String;
    const-string/jumbo v19, ""

    .line 336
    .restart local v19    # "contentId":Ljava/lang/String;
    const-string/jumbo v15, ""

    .line 337
    .restart local v15    # "chapterId":Ljava/lang/String;
    const-string/jumbo v49, ""

    .line 338
    .restart local v49    # "source":Ljava/lang/String;
    sget-object v51, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_MUSIC:Lcom/iflytek/viafly/player/base/PlayerBizType;

    move-object/from16 v0, v51

    if-ne v0, v9, :cond_38

    .line 339
    const-string/jumbo v43, "music"

    .line 340
    invoke-static {}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->a()Lcom/iflytek/viafly/music/manager/MusicBizManager;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/iflytek/viafly/music/manager/MusicBizManager;->s()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v5

    .line 341
    .local v5, "audio":Lcom/iflytek/viafly/player/entity/Audio;
    instance-of v0, v5, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move/from16 v51, v0

    if-eqz v51, :cond_35

    .line 342
    invoke-virtual {v5}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v19

    .line 343
    check-cast v5, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    .end local v5    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    invoke-virtual {v5}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->k()Ljava/lang/String;

    move-result-object v49

    .line 344
    if-nez v49, :cond_35

    .line 345
    const-string/jumbo v49, ""

    .line 359
    :cond_35
    :goto_8
    const-string/jumbo v51, "idle"

    move-object/from16 v0, v51

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_36

    .line 360
    const-string/jumbo v43, ""

    .line 361
    const-string/jumbo v19, ""

    .line 362
    const-string/jumbo v15, ""

    .line 363
    const-string/jumbo v49, ""

    .line 365
    :cond_36
    new-instance v30, Lorg/json/JSONObject;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONObject;-><init>()V

    .line 366
    .restart local v30    # "jsonObject":Lorg/json/JSONObject;
    const/16 v51, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v38

    .line 367
    .restart local v38    # "object":Lorg/json/JSONObject;
    const-string/jumbo v51, "callbackId"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 369
    .restart local v12    # "callbackID":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v51, "callbackId"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string/jumbo v51, "errorCode"

    const-string/jumbo v52, "000000"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string/jumbo v51, "playState"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string/jumbo v51, "playType"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string/jumbo v51, "contentId"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string/jumbo v51, "chapterId"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string/jumbo v51, "source"

    move-object/from16 v0, v30

    move-object/from16 v1, v51

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    :goto_9
    new-instance v51, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v52, "OK"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual/range {v51 .. v51}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v46

    .line 380
    .restart local v46    # "result":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v51

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "javascript:LXJSBridge.callbackFromNative(\'"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, "\',\'"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string/jumbo v53, "\')"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    .end local v9    # "bizType":Lcom/iflytek/viafly/player/base/PlayerBizType;
    .end local v12    # "callbackID":Ljava/lang/String;
    .end local v15    # "chapterId":Ljava/lang/String;
    .end local v19    # "contentId":Ljava/lang/String;
    .end local v30    # "jsonObject":Lorg/json/JSONObject;
    .end local v38    # "object":Lorg/json/JSONObject;
    .end local v43    # "playType":Ljava/lang/String;
    .end local v46    # "result":Ljava/lang/String;
    .end local v49    # "source":Ljava/lang/String;
    :cond_37
    const/16 v51, 0x5

    move/from16 v0, v51

    move/from16 v1, v50

    if-ne v0, v1, :cond_34

    .line 331
    const-string/jumbo v42, "pause"

    goto/16 :goto_7

    .line 348
    .restart local v9    # "bizType":Lcom/iflytek/viafly/player/base/PlayerBizType;
    .restart local v15    # "chapterId":Ljava/lang/String;
    .restart local v19    # "contentId":Ljava/lang/String;
    .restart local v43    # "playType":Ljava/lang/String;
    .restart local v49    # "source":Ljava/lang/String;
    :cond_38
    sget-object v51, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_BOOK:Lcom/iflytek/viafly/player/base/PlayerBizType;

    move-object/from16 v0, v51

    if-ne v0, v9, :cond_39

    .line 349
    const-string/jumbo v43, "book"

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lamp;->H()Lamm;

    move-result-object v10

    .line 351
    .local v10, "bookInfo":Lamm;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lamp;->G()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v5

    .line 352
    .restart local v5    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    if-eqz v10, :cond_35

    if-eqz v5, :cond_35

    .line 353
    invoke-virtual {v10}, Lamm;->a()Ljava/lang/String;

    move-result-object v19

    .line 354
    invoke-virtual {v5}, Lcom/iflytek/viafly/player/entity/Audio;->p()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_8

    .line 357
    .end local v5    # "audio":Lcom/iflytek/viafly/player/entity/Audio;
    .end local v10    # "bookInfo":Lamm;
    :cond_39
    const-string/jumbo v42, "idle"

    goto/16 :goto_8

    .line 376
    .restart local v12    # "callbackID":Ljava/lang/String;
    .restart local v30    # "jsonObject":Lorg/json/JSONObject;
    .restart local v38    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v24

    .line 377
    .restart local v24    # "e":Ljava/lang/Exception;
    const-string/jumbo v51, "Business_MediaPlayerComponents"

    const-string/jumbo v52, "onSubmitResult assemble json error "

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 579
    invoke-super {p0, p1}, Lcom/iflytek/framework/business/components/AbsComponents;->onHandleMessage(Landroid/os/Message;)V

    .line 581
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 583
    :pswitch_0
    const-string/jumbo v0, "Business_MediaPlayerComponents"

    const-string/jumbo v1, "MSG_START_PLAY"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->mTitleFunctionHelper:Lrm;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->mTitleFunctionHelper:Lrm;

    invoke-virtual {v0}, Lrm;->b()V

    goto :goto_0

    .line 589
    :pswitch_1
    const-string/jumbo v0, "Business_MediaPlayerComponents"

    const-string/jumbo v1, "MSG_STOP_PLAY"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->mTitleFunctionHelper:Lrm;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->mTitleFunctionHelper:Lrm;

    invoke-virtual {v0}, Lrm;->c()V

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0, p0}, Lie;->a(Lic;)V

    .line 457
    invoke-static {}, Lrm;->a()Lrm;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->mTitleFunctionHelper:Lrm;

    .line 458
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 536
    const-string/jumbo v0, "Business_MediaPlayerComponents"

    const-string/jumbo v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->a()V

    .line 540
    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 542
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    const-string/jumbo v1, "onPlayPrepared"

    .line 544
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 546
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 4

    .prologue
    .line 601
    const-string/jumbo v1, "Business_MediaPlayerComponents"

    const-string/jumbo v2, "onRelease:"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->locker:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v1

    invoke-virtual {v1}, Lie;->e()V

    .line 607
    monitor-exit v2

    .line 611
    :goto_0
    return-void

    .line 607
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Business_MediaPlayerComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pausePlayMedia()V
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->f()V

    .line 511
    const/16 v0, 0xc9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 512
    return-void
.end method

.method public resumePlayMedia()V
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->a()V

    .line 502
    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 503
    return-void
.end method

.method public startPlayMedia(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const-string/jumbo v0, "Business_MediaPlayerComponents"

    const-string/jumbo v1, "startPlayMedia path is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0, p1}, Lie;->a(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    const-string/jumbo v1, "onPlayPreparing"

    .line 474
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 478
    :cond_1
    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public stopPlayMedia()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 485
    const-string/jumbo v0, "Business_MediaPlayerComponents"

    const-string/jumbo v1, "stopPlayMedia()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->d()V

    .line 487
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    const-string/jumbo v1, "onMediaStopped"

    .line 489
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 493
    :cond_0
    const/16 v0, 0xc9

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 494
    return-void
.end method
