.class public Lbbn;
.super Ljava/lang/Object;
.source "VoiceCategoryModel.java"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "VoiceCategoryModel"

    iput-object v0, p0, Lbbn;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lbbn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "speakers":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    iput-object p1, p0, Lbbn;->c:Ljava/util/List;

    .line 36
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    const-string/jumbo v6, "category"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lbbn;->b:Ljava/lang/String;

    .line 63
    const-string/jumbo v6, "speakers"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 64
    .local v3, "speakersArray":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v5, "voiceCategoryBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 67
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    .local v2, "speakObject":Lorg/json/JSONObject;
    new-instance v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    .line 69
    .local v4, "voiceCategoryBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v4, v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lorg/json/JSONObject;)V

    .line 70
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "i":I
    .end local v2    # "speakObject":Lorg/json/JSONObject;
    .end local v4    # "voiceCategoryBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_1
    iput-object v5, p0, Lbbn;->c:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v3    # "speakersArray":Lorg/json/JSONArray;
    .end local v5    # "voiceCategoryBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v6, "VoiceCategoryModel"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lbbn;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 39
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "category"

    iget-object v6, p0, Lbbn;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 43
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lbbn;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 44
    iget-object v5, p0, Lbbn;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 45
    .local v4, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->u()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v4    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_0
    const-string/jumbo v5, "speakers"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    if-eqz v3, :cond_1

    .line 54
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    return-object v3

    .line 48
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "VoiceCategoryModel"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2
.end method
