.class Laqj$4;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqj;


# direct methods
.method constructor <init>(Laqj;)V
    .locals 0
    .param p1, "this$0"    # Laqj;

    .prologue
    .line 635
    iput-object p1, p0, Laqj$4;->a:Laqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 27
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Laqj;->a(Laqj;Z)Z

    move-object/from16 v9, p2

    .line 641
    check-cast v9, Lwa;

    .line 642
    .local v9, "business":Lwa;
    if-nez v9, :cond_1

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    const-string/jumbo v4, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v3, v4}, Laqj;->a(Laqj;Ljava/lang/String;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->b(Laqj;)Laph;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->b(Laqj;)Laph;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Laph;->b(Z)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    invoke-virtual {v9}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v8

    .line 650
    .local v8, "response":Ljava/lang/String;
    const-string/jumbo v3, "MusicPlayerPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "response is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 655
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->d(Laqj;)J

    move-result-wide v4

    cmp-long v3, v4, p3

    if-nez v3, :cond_3

    .line 656
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 657
    .local v18, "json":Lorg/json/JSONObject;
    if-eqz v18, :cond_2

    .line 658
    const-string/jumbo v3, "error_code"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 659
    .local v23, "resultCode":Ljava/lang/String;
    const-string/jumbo v3, "status"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 660
    .local v25, "status":Ljava/lang/String;
    const-string/jumbo v3, "000000"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "success"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 661
    const-string/jumbo v3, "result"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 662
    .local v10, "collectedObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "collected"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 663
    .local v20, "mCurrentFavor":Z
    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->c(Laqj;)Lapg;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->c(Laqj;)Lapg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lapg;->a(Ljava/lang/Boolean;)V

    .line 666
    const-string/jumbo v3, "songid"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 667
    .local v24, "songId":Ljava/lang/String;
    const-string/jumbo v3, "lxsongid"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 668
    .local v19, "lxSongId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Laqj;->b(Laqj;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v17

    .line 669
    .local v17, "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    new-instance v13, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;-><init>(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 670
    .local v13, "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->k(Ljava/lang/String;)V

    .line 671
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->j(Ljava/lang/String;)V

    .line 672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(J)V

    .line 673
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v3

    invoke-virtual {v3, v13}, Laqg;->a(Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 764
    .end local v10    # "collectedObj":Lorg/json/JSONObject;
    .end local v13    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .end local v17    # "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .end local v18    # "json":Lorg/json/JSONObject;
    .end local v19    # "lxSongId":Ljava/lang/String;
    .end local v20    # "mCurrentFavor":Z
    .end local v23    # "resultCode":Ljava/lang/String;
    .end local v24    # "songId":Ljava/lang/String;
    .end local v25    # "status":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 765
    .local v12, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "MusicPlayerPresenter"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 678
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v18    # "json":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->c(Laqj;)Lapg;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->c(Laqj;)Lapg;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lapg;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 681
    .end local v18    # "json":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->e(Laqj;)J

    move-result-wide v4

    cmp-long v3, v4, p3

    if-nez v3, :cond_5

    .line 683
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 684
    .restart local v18    # "json":Lorg/json/JSONObject;
    if-eqz v18, :cond_4

    .line 685
    const-string/jumbo v3, "error_code"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 686
    .restart local v23    # "resultCode":Ljava/lang/String;
    const-string/jumbo v3, "status"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 687
    .restart local v25    # "status":Ljava/lang/String;
    const-string/jumbo v3, "000000"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "success"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 688
    const-string/jumbo v3, "result"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 689
    .local v14, "favorResult":Lorg/json/JSONObject;
    const-string/jumbo v3, "data"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 690
    .local v11, "data":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 691
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 692
    .local v22, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "lxsongid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 693
    .restart local v19    # "lxSongId":Ljava/lang/String;
    const-string/jumbo v3, "songid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 694
    .restart local v24    # "songId":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Laqj;->b(Laqj;Ljava/lang/String;)Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    move-result-object v17

    .line 697
    .restart local v17    # "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    new-instance v13, Lcom/iflytek/viafly/music/business/entry/MusicFavor;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;-><init>(Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V

    .line 698
    .restart local v13    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->k(Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->j(Ljava/lang/String;)V

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/iflytek/viafly/music/business/entry/MusicFavor;->a(J)V

    .line 701
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v3

    invoke-virtual {v3, v13}, Laqg;->a(Lcom/iflytek/viafly/music/business/entry/MusicFavor;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    const-string/jumbo v4, "\u6536\u85cf\u6210\u529f"

    invoke-static {v3, v4}, Laqj;->a(Laqj;Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->c(Laqj;)Lapg;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->c(Laqj;)Lapg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lapg;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 712
    .end local v11    # "data":Lorg/json/JSONArray;
    .end local v13    # "favor":Lcom/iflytek/viafly/music/business/entry/MusicFavor;
    .end local v14    # "favorResult":Lorg/json/JSONObject;
    .end local v17    # "item":Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;
    .end local v19    # "lxSongId":Ljava/lang/String;
    .end local v22    # "obj":Lorg/json/JSONObject;
    .end local v23    # "resultCode":Ljava/lang/String;
    .end local v24    # "songId":Ljava/lang/String;
    .end local v25    # "status":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    const-string/jumbo v4, "\u6536\u85cf\u5931\u8d25"

    invoke-static {v3, v4}, Laqj;->a(Laqj;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 713
    .end local v18    # "json":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->f(Laqj;)J

    move-result-wide v4

    cmp-long v3, v4, p3

    if-nez v3, :cond_9

    .line 715
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 716
    .restart local v18    # "json":Lorg/json/JSONObject;
    if-eqz v18, :cond_8

    .line 717
    const-string/jumbo v3, "error_code"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 718
    .restart local v23    # "resultCode":Ljava/lang/String;
    const-string/jumbo v3, "status"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 719
    .restart local v25    # "status":Ljava/lang/String;
    const-string/jumbo v3, "000000"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "success"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 720
    const-string/jumbo v3, "result"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 721
    .restart local v14    # "favorResult":Lorg/json/JSONObject;
    const-string/jumbo v3, "lxsongids"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 722
    .restart local v11    # "data":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_7

    .line 723
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v19

    .line 724
    .restart local v19    # "lxSongId":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 726
    invoke-static {}, Laqg;->a()Laqg;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Laqg;->a(Ljava/lang/String;)V

    .line 722
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 729
    .end local v19    # "lxSongId":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    const-string/jumbo v4, "\u53d6\u6d88\u6536\u85cf\u6210\u529f"

    invoke-static {v3, v4}, Laqj;->a(Laqj;Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->c(Laqj;)Lapg;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->c(Laqj;)Lapg;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lapg;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 736
    .end local v11    # "data":Lorg/json/JSONArray;
    .end local v14    # "favorResult":Lorg/json/JSONObject;
    .end local v16    # "i":I
    .end local v23    # "resultCode":Ljava/lang/String;
    .end local v25    # "status":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    const-string/jumbo v4, "\u53d6\u6d88\u6536\u85cf\u5931\u8d25"

    invoke-static {v3, v4}, Laqj;->a(Laqj;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    .end local v18    # "json":Lorg/json/JSONObject;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->g(Laqj;)J

    move-result-wide v4

    cmp-long v3, v4, p3

    if-nez v3, :cond_0

    .line 739
    new-instance v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-static {}, Lpr;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    const-string/jumbo v6, "music"

    const-string/jumbo v7, ""

    invoke-direct/range {v2 .. v8}, Lcom/iflytek/yd/speech/ViaAsrResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .local v2, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v15, Lafq;

    invoke-direct {v15}, Lafq;-><init>()V

    .line 741
    .local v15, "filter":Lafq;
    invoke-virtual {v15, v2}, Lafq;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v21

    check-cast v21, Lafn;

    .line 742
    .local v21, "musicFilterResult":Lafn;
    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Lafn;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 743
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    new-instance v4, Laqj$4$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Laqj$4$1;-><init>(Laqj$4;Lafn;)V

    invoke-virtual {v3, v4}, Laqj;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 758
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-virtual/range {v21 .. v21}, Lafn;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laqj;->a(Laqj;Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->b(Laqj;)Laph;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Laqj$4;->a:Laqj;

    invoke-static {v3}, Laqj;->b(Laqj;)Laph;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Laph;->b(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
