.class public Lair;
.super Ljava/lang/Object;
.source "AudioResourceResultParser.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "AudioResourceResultParser"

    iput-object v0, p0, Lair;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 10
    .param p1, "dataArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v6, "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 88
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 89
    .local v7, "data":Lorg/json/JSONObject;
    const-string/jumbo v0, "id"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "dataTitle":Ljava/lang/String;
    const-string/jumbo v0, "audioUrl"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "audioUrl":Ljava/lang/String;
    const-string/jumbo v0, "display"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "display":Ljava/lang/String;
    const-string/jumbo v0, "images"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 94
    .local v9, "images":Lorg/json/JSONArray;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    new-instance v0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "dataTitle":Ljava/lang/String;
    .end local v3    # "audioUrl":Ljava/lang/String;
    .end local v4    # "display":Ljava/lang/String;
    .end local v7    # "data":Lorg/json/JSONObject;
    .end local v9    # "images":Lorg/json/JSONArray;
    :cond_1
    return-object v6
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laiy;
    .locals 22
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 49
    const-string/jumbo v18, "AudioResourceResultParser"

    const-string/jumbo v19, "result is null"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v5, 0x0

    .line 81
    :goto_0
    return-object v5

    .line 53
    :cond_0
    const/4 v11, 0x0

    .line 55
    .local v11, "cardItem":Laiy;
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v16, "resultObj":Lorg/json/JSONObject;
    const-string/jumbo v18, "hotAudios"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 57
    .local v15, "hotAudiosObj":Lorg/json/JSONObject;
    if-eqz v15, :cond_2

    .line 58
    const-string/jumbo v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 59
    .local v17, "titleObj":Lorg/json/JSONObject;
    const-string/jumbo v18, "background"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 60
    .local v4, "backgroundObj":Lorg/json/JSONObject;
    const-string/jumbo v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 61
    .local v13, "dataArray":Lorg/json/JSONArray;
    if-eqz v17, :cond_2

    if-eqz v4, :cond_2

    if-eqz v13, :cond_2

    .line 62
    const-string/jumbo v18, "text"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "title":Ljava/lang/String;
    const-string/jumbo v18, "config"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 64
    .local v12, "configObj":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 65
    .local v7, "bgUrl":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 66
    .local v8, "expireTime":J
    if-eqz v12, :cond_1

    .line 67
    const-string/jumbo v18, "imageExpire"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v18, v18, v8

    if-gez v18, :cond_1

    .line 69
    const-string/jumbo v18, "image"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lair;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    .line 73
    .local v10, "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;>;"
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 74
    new-instance v5, Laiy;

    invoke-direct/range {v5 .. v10}, Laiy;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "cardItem":Laiy;
    .local v5, "cardItem":Laiy;
    goto :goto_0

    .line 78
    .end local v4    # "backgroundObj":Lorg/json/JSONObject;
    .end local v5    # "cardItem":Laiy;
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "bgUrl":Ljava/lang/String;
    .end local v8    # "expireTime":J
    .end local v10    # "audios":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;>;"
    .end local v12    # "configObj":Lorg/json/JSONObject;
    .end local v13    # "dataArray":Lorg/json/JSONArray;
    .end local v15    # "hotAudiosObj":Lorg/json/JSONObject;
    .end local v16    # "resultObj":Lorg/json/JSONObject;
    .end local v17    # "titleObj":Lorg/json/JSONObject;
    .restart local v11    # "cardItem":Laiy;
    :catch_0
    move-exception v14

    .line 79
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "AudioResourceResultParser"

    const-string/jumbo v19, "error "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v14}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v14    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v5, v11

    .end local v11    # "cardItem":Laiy;
    .restart local v5    # "cardItem":Laiy;
    goto/16 :goto_0
.end method

.method public a(Laiy;)Z
    .locals 1
    .param p1, "cardItem"    # Laiy;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Laiy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p1}, Laiy;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lair;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    .prologue
    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;>;"
    const/4 v1, 0x0

    .line 119
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    .line 121
    .local v0, "item":Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;
    invoke-virtual {p0, v0}, Lair;->a(Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    .end local v0    # "item":Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;
    :cond_1
    :goto_0
    return v1

    .line 125
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
