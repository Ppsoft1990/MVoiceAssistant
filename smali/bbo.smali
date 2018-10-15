.class public Lbbo;
.super Ljava/lang/Object;
.source "VoiceRoleModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbbn;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
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
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lbbo;
    .locals 13
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 65
    if-nez p0, :cond_1

    .line 66
    const/4 v10, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object v10

    .line 68
    :cond_1
    new-instance v10, Lbbo;

    invoke-direct {v10}, Lbbo;-><init>()V

    .line 69
    .local v10, "voiceRoleModel":Lbbo;
    const-string/jumbo v11, "version"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lbbo;->a(Ljava/lang/String;)V

    .line 71
    :try_start_0
    const-string/jumbo v11, "hot"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 72
    .local v3, "hotArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 73
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v7, "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 75
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 76
    .local v4, "hotJson":Lorg/json/JSONObject;
    new-instance v6, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    .line 77
    .local v6, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v6, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lorg/json/JSONObject;)V

    .line 78
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 80
    .end local v4    # "hotJson":Lorg/json/JSONObject;
    .end local v6    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    invoke-virtual {v10, v7}, Lbbo;->a(Ljava/util/List;)V

    .line 82
    .end local v5    # "i":I
    .end local v7    # "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :cond_3
    const-string/jumbo v11, "categorys"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 83
    .local v1, "categoryArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v9, "voiceCategoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 86
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 87
    .restart local v4    # "hotJson":Lorg/json/JSONObject;
    new-instance v8, Lbbn;

    invoke-direct {v8}, Lbbn;-><init>()V

    .line 88
    .local v8, "voiceCategoryModel":Lbbn;
    invoke-virtual {v8, v4}, Lbbn;->a(Lorg/json/JSONObject;)V

    .line 89
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 91
    .end local v4    # "hotJson":Lorg/json/JSONObject;
    .end local v8    # "voiceCategoryModel":Lbbn;
    :cond_4
    invoke-virtual {v10, v9}, Lbbo;->b(Ljava/util/List;)V

    .line 93
    .end local v5    # "i":I
    .end local v9    # "voiceCategoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    :cond_5
    const-string/jumbo v11, "beginner"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 94
    .local v0, "beginnerArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 95
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .restart local v7    # "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_6

    .line 97
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 98
    .restart local v4    # "hotJson":Lorg/json/JSONObject;
    new-instance v6, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    .line 99
    .restart local v6    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v6, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lorg/json/JSONObject;)V

    .line 100
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 102
    .end local v4    # "hotJson":Lorg/json/JSONObject;
    .end local v6    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_6
    invoke-virtual {v10, v7}, Lbbo;->c(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 104
    .end local v0    # "beginnerArray":Lorg/json/JSONArray;
    .end local v1    # "categoryArray":Lorg/json/JSONArray;
    .end local v3    # "hotArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v7    # "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v11, "VoiceRoleModel"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static a(Lbbo;)Ljava/lang/String;
    .locals 13
    .param p0, "voiceRoleModel"    # Lbbo;

    .prologue
    .line 112
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v5, "totalObject":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 115
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 116
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 117
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 118
    :cond_0
    const/4 v11, 0x0

    .line 147
    :goto_0
    return-object v11

    .line 120
    :cond_1
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v10

    .line 121
    .local v10, "voiceHotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 122
    .local v3, "hotJson":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 123
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 124
    .local v6, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->u()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    .end local v6    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    const-string/jumbo v11, "hot"

    invoke-virtual {v5, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 129
    .local v1, "cateGoryJson":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v9

    .line 130
    .local v9, "voiceCategoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 131
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbbn;

    .line 132
    .local v8, "voiceCategoryModel":Lbbn;
    invoke-virtual {v8}, Lbbn;->c()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 134
    .end local v8    # "voiceCategoryModel":Lbbn;
    :cond_3
    const-string/jumbo v11, "categorys"

    invoke-virtual {v5, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 137
    .local v0, "beginnerJson":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lbbo;->c()Ljava/util/List;

    move-result-object v7

    .line 138
    .local v7, "voiceBeginnerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 139
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 140
    .restart local v6    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->u()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 138
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 142
    .end local v6    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_4
    const-string/jumbo v11, "beginner"

    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v11, "version"

    invoke-virtual {p0}, Lbbo;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "beginnerJson":Lorg/json/JSONArray;
    .end local v1    # "cateGoryJson":Lorg/json/JSONArray;
    .end local v3    # "hotJson":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v7    # "voiceBeginnerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    .end local v9    # "voiceCategoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    .end local v10    # "voiceHotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "VoiceRoleModel"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static g()Lbbo;
    .locals 6

    .prologue
    .line 315
    const/4 v3, 0x0

    .line 316
    .local v3, "voiceRoleModel":Lbbo;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_VOICE_ROLE_CACHE_DATA"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "cache":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 319
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 320
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v2}, Lbbo;->a(Lorg/json/JSONObject;)Lbbo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 325
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v3

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "VoiceRoleModel"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
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
    .line 33
    iget-object v0, p0, Lbbo;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lbbo;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/viafly/voicerole/model/Status;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/iflytek/viafly/voicerole/model/Status;

    .prologue
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    :cond_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v2

    .line 201
    .local v2, "hotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 202
    .local v3, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    invoke-virtual {v3, p2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 206
    .end local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_3
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "categoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    .line 208
    .local v0, "categoryModel":Lbbn;
    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 209
    .restart local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 210
    invoke-virtual {v3, p2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    :cond_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v2

    .line 293
    .local v2, "hotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 294
    .local v3, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 295
    invoke-virtual {v3, p2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b(Z)V

    .line 301
    .end local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_3
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    .line 302
    .local v1, "categoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    .line 303
    .local v0, "categoryModel":Lbbn;
    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 304
    .restart local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 305
    invoke-virtual {v3, p2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v3, v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isPlaying"    # Z

    .prologue
    .line 263
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, "hotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 265
    .local v3, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez p2, :cond_1

    .line 266
    invoke-virtual {v3, p2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    invoke-virtual {v3, p2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    goto :goto_0

    .line 273
    .end local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "categoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    .line 275
    .local v0, "categoryModel":Lbbn;
    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 276
    .restart local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez p2, :cond_5

    .line 277
    invoke-virtual {v3, p2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    goto :goto_1

    .line 279
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 280
    invoke-virtual {v3, p2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    goto :goto_1

    .line 285
    .end local v0    # "categoryModel":Lbbn;
    .end local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_6
    return-void
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
    .line 37
    .local p1, "hot":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    iput-object p1, p0, Lbbo;->b:Ljava/util/List;

    .line 38
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 236
    :goto_0
    return-object v3

    .line 222
    :cond_0
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v2

    .line 223
    .local v2, "hotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 224
    .local v3, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 228
    .end local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    .line 229
    .local v1, "categoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    .line 230
    .local v0, "categoryModel":Lbbn;
    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 231
    .restart local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .end local v0    # "categoryModel":Lbbn;
    .end local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_5
    move-object v3, v4

    .line 236
    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbbn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lbbo;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbbn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "categorys":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    iput-object p1, p0, Lbbo;->c:Ljava/util/List;

    .line 46
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .locals 8
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 258
    :goto_0
    return-object v3

    .line 244
    :cond_0
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, "hotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 246
    .local v3, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 250
    .end local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    .line 251
    .local v1, "categoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    .line 252
    .local v0, "categoryModel":Lbbn;
    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 253
    .restart local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .end local v0    # "categoryModel":Lbbn;
    .end local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_5
    move-object v3, v4

    .line 258
    goto :goto_0
.end method

.method public c()Ljava/util/List;
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
    .line 49
    iget-object v0, p0, Lbbo;->d:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
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
    .line 53
    .local p1, "beginner":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    iput-object p1, p0, Lbbo;->d:Ljava/util/List;

    .line 54
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbbo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 6
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
    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 154
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbbn;

    .line 155
    .local v3, "voiceCategoryModel":Lbbn;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lbbn;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 156
    invoke-virtual {v3}, Lbbn;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 157
    .local v1, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v1, :cond_1

    .line 158
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    .end local v1    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v3    # "voiceCategoryModel":Lbbn;
    :cond_2
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 165
    invoke-virtual {p0}, Lbbo;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 166
    .restart local v1    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v1, :cond_3

    .line 167
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    .end local v1    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_4
    return-object v2
.end method

.method public f()Ljava/util/List;
    .locals 8
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
    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v4, "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 178
    invoke-virtual {p0}, Lbbo;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbbn;

    .line 179
    .local v5, "voiceCategoryModel":Lbbn;
    new-instance v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    .line 180
    .local v2, "titleModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v5}, Lbbn;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b(Ljava/lang/String;)V

    .line 181
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lbbn;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 183
    invoke-virtual {v5}, Lbbn;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 184
    .local v3, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v3, :cond_1

    .line 185
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    .end local v2    # "titleModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v3    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v5    # "voiceCategoryModel":Lbbn;
    :cond_2
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    .line 190
    .local v0, "emptyModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v0    # "emptyModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_3
    return-object v4
.end method
