.class public Lbbm;
.super Ljava/lang/Object;
.source "VoiceRoleDataManager.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lbbb;

.field private c:Lbbe;

.field private d:Lbbf;

.field private e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private g:Lyn;

.field private h:Lyn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbbb;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lbbb;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "VoiceRoleDataManager"

    iput-object v0, p0, Lbbm;->a:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lbbm;->f:Ljava/lang/String;

    .line 136
    new-instance v0, Lbbm$1;

    invoke-direct {v0, p0}, Lbbm$1;-><init>(Lbbm;)V

    iput-object v0, p0, Lbbm;->g:Lyn;

    .line 173
    new-instance v0, Lbbm$2;

    invoke-direct {v0, p0}, Lbbm$2;-><init>(Lbbm;)V

    iput-object v0, p0, Lbbm;->h:Lyn;

    .line 48
    iput-object p2, p0, Lbbm;->b:Lbbb;

    .line 49
    iput-object p1, p0, Lbbm;->e:Landroid/content/Context;

    .line 50
    new-instance v0, Lbbe;

    iget-object v1, p0, Lbbm;->e:Landroid/content/Context;

    iget-object v2, p0, Lbbm;->g:Lyn;

    invoke-direct {v0, v1, v2}, Lbbe;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lbbm;->c:Lbbe;

    .line 51
    new-instance v0, Lbbf;

    iget-object v1, p0, Lbbm;->e:Landroid/content/Context;

    iget-object v2, p0, Lbbm;->h:Lyn;

    invoke-direct {v0, v1, v2}, Lbbf;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lbbm;->d:Lbbf;

    .line 52
    return-void
.end method

.method static synthetic a(Lbbm;)Lbbb;
    .locals 1
    .param p0, "x0"    # Lbbm;

    .prologue
    .line 35
    iget-object v0, p0, Lbbm;->b:Lbbb;

    return-object v0
.end method

.method private a(Lbbn;)Lbbn;
    .locals 6
    .param p1, "voiceCategoryModel"    # Lbbn;

    .prologue
    const/4 v3, 0x0

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "tempVoiceBaseModel":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbbn;->b()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object p1, v3

    .line 291
    .end local p1    # "voiceCategoryModel":Lbbn;
    :goto_0
    return-object p1

    .line 277
    .restart local p1    # "voiceCategoryModel":Lbbn;
    :cond_1
    invoke-virtual {p1}, Lbbn;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p1, v3

    .line 278
    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Lbbn;->b()Ljava/util/List;

    move-result-object v2

    .line 281
    .local v2, "voiceCategoryBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 282
    .local v1, "voiceCategoryBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-direct {p0, v1}, Lbbm;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 283
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    .end local v1    # "voiceCategoryBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 287
    invoke-virtual {p1, v0}, Lbbn;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    move-object p1, v3

    .line 289
    goto :goto_0
.end method

.method static synthetic a(Lbbm;Lbbo;)Lbbo;
    .locals 1
    .param p0, "x0"    # Lbbm;
    .param p1, "x1"    # Lbbo;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lbbm;->h(Lbbo;)Lbbo;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z
    .locals 5
    .param p1, "voiceCategoryBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 296
    if-nez p1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v1

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    const-string/jumbo v3, "1"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 309
    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;

    .line 317
    .local v0, "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_0

    .end local v0    # "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    :cond_4
    move v1, v2

    .line 322
    goto/16 :goto_0
.end method

.method private g(Lbbo;)Z
    .locals 2
    .param p1, "voiceRoleModel"    # Lbbo;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbbo;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Lbbo;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lbbo;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 213
    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h(Lbbo;)Lbbo;
    .locals 10
    .param p1, "voiceRoleModel"    # Lbbo;

    .prologue
    const/4 v9, 0x4

    .line 220
    new-instance v1, Lbbo;

    invoke-direct {v1}, Lbbo;-><init>()V

    .line 221
    .local v1, "resultModel":Lbbo;
    if-eqz p1, :cond_b

    .line 222
    invoke-virtual {p1}, Lbbo;->a()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lbbo;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v6, "voiceHotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lbbo;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 225
    invoke-virtual {p1}, Lbbo;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 226
    .local v2, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-direct {p0, v2}, Lbbm;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 227
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x6

    if-lt v7, v8, :cond_7

    .line 234
    .end local v2    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_1
    invoke-virtual {v1, v6}, Lbbo;->a(Ljava/util/List;)V

    .line 236
    .end local v0    # "i":I
    .end local v6    # "voiceHotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :cond_2
    invoke-virtual {p1}, Lbbo;->b()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Lbbo;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v9, :cond_5

    .line 237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v5, "voiceCategoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p1}, Lbbo;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 239
    invoke-virtual {p1}, Lbbo;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbbn;

    .line 241
    .local v4, "voiceCategoryModel":Lbbn;
    invoke-direct {p0, v4}, Lbbm;->a(Lbbn;)Lbbn;

    move-result-object v4

    .line 242
    if-eqz v4, :cond_3

    .line 243
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v9, :cond_8

    .line 250
    .end local v4    # "voiceCategoryModel":Lbbn;
    :cond_4
    invoke-virtual {v1, v5}, Lbbo;->b(Ljava/util/List;)V

    .line 252
    .end local v0    # "i":I
    .end local v5    # "voiceCategoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    :cond_5
    invoke-virtual {p1}, Lbbo;->c()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p1}, Lbbo;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v3, "voiceBeginnerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p1}, Lbbo;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_9

    .line 255
    invoke-virtual {p1}, Lbbo;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 257
    .restart local v2    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-direct {p0, v2}, Lbbm;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "0"

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 258
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 224
    .end local v3    # "voiceBeginnerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    .restart local v6    # "voiceHotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 238
    .end local v2    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v6    # "voiceHotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    .restart local v4    # "voiceCategoryModel":Lbbn;
    .restart local v5    # "voiceCategoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    .end local v4    # "voiceCategoryModel":Lbbn;
    .end local v5    # "voiceCategoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    .restart local v3    # "voiceBeginnerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :cond_9
    invoke-virtual {v1, v3}, Lbbo;->c(Ljava/util/List;)V

    .line 263
    .end local v0    # "i":I
    .end local v3    # "voiceBeginnerBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    :cond_a
    invoke-virtual {p1}, Lbbo;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lbbo;->a(Ljava/lang/String;)V

    .line 265
    :cond_b
    invoke-direct {p0, v1}, Lbbm;->g(Lbbo;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 268
    .end local v1    # "resultModel":Lbbo;
    :goto_3
    return-object v1

    .restart local v1    # "resultModel":Lbbo;
    :cond_c
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method public a()Lbbo;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "voiceRoleModel":Lbbo;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_VOICE_ROLE_CACHE_DATA"

    invoke-virtual {v5, v6}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "cache":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 60
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v2}, Lbbo;->a(Lorg/json/JSONObject;)Lbbo;

    move-result-object v3

    .line 63
    const-string/jumbo v5, "V5"

    invoke-virtual {v3}, Lbbo;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 74
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v4

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "VoiceRoleDataManager"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-direct {p0, v3}, Lbbm;->g(Lbbo;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 72
    goto :goto_0
.end method

.method public a(Lbbo;)V
    .locals 11
    .param p1, "voiceRoleModel"    # Lbbo;

    .prologue
    .line 78
    invoke-virtual {p0}, Lbbm;->a()Lbbo;

    move-result-object v1

    .line 79
    .local v1, "cacheModel":Lbbo;
    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {p0, v1}, Lbbm;->b(Lbbo;)Ljava/util/Map;

    move-result-object v5

    .line 81
    .local v5, "map":Ljava/util/Map;
    invoke-virtual {p1}, Lbbo;->a()Ljava/util/List;

    move-result-object v4

    .line 82
    .local v4, "hotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 83
    .local v7, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 84
    .local v6, "oldVoiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v6, :cond_0

    .line 85
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;)V

    .line 87
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    .line 88
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_0

    .line 91
    .end local v6    # "oldVoiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v7    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_1
    invoke-virtual {p1}, Lbbo;->b()Ljava/util/List;

    move-result-object v3

    .line 92
    .local v3, "categoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbbn;

    .line 93
    .local v2, "categoryModel":Lbbn;
    invoke-virtual {v2}, Lbbn;->b()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 94
    .restart local v7    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v7}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 95
    .restart local v6    # "oldVoiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v6, :cond_3

    .line 96
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;)V

    .line 98
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s()Z

    move-result v10

    invoke-virtual {v7, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    .line 99
    invoke-virtual {v6}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    goto :goto_1

    .line 104
    .end local v2    # "categoryModel":Lbbn;
    .end local v3    # "categoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    .end local v4    # "hotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    .end local v5    # "map":Ljava/util/Map;
    .end local v6    # "oldVoiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v7    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_4
    invoke-static {p1}, Lbbo;->a(Lbbo;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "cache":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_VOICE_ROLE_CACHE_DATA"

    invoke-virtual {v8, v9, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "speakerId"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lbbm;->d:Lbbf;

    invoke-virtual {v0, p1}, Lbbf;->a(Ljava/lang/String;)J

    .line 134
    return-void
.end method

.method public b(Lbbo;)Ljava/util/Map;
    .locals 8
    .param p1, "cacheModel"    # Lbbo;

    .prologue
    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v3, "map":Ljava/util/Map;
    invoke-virtual {p1}, Lbbo;->a()Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "hotBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 112
    .local v4, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    .end local v4    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_0
    invoke-virtual {p1}, Lbbo;->b()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "categoryModels":Ljava/util/List;, "Ljava/util/List<Lbbn;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbn;

    .line 116
    .local v0, "categoryModel":Lbbn;
    invoke-virtual {v0}, Lbbn;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 117
    .restart local v4    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 120
    .end local v0    # "categoryModel":Lbbn;
    .end local v4    # "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :cond_2
    return-object v3
.end method

.method public b()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lbbm;->c:Lbbe;

    invoke-virtual {v0}, Lbbe;->a()J

    .line 130
    return-void
.end method

.method public c(Lbbo;)V
    .locals 3
    .param p1, "voiceRoleModel"    # Lbbo;

    .prologue
    .line 124
    invoke-static {p1}, Lbbo;->a(Lbbo;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "cache":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_VOICE_ROLE_CACHE_DATA"

    invoke-virtual {v1, v2, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public d(Lbbo;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "voiceRoleModel"    # Lbbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    if-nez p1, :cond_1

    .line 329
    const/4 v3, 0x0

    .line 342
    :cond_0
    return-object v3

    .line 331
    :cond_1
    invoke-virtual {p1}, Lbbo;->e()Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "allBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, "voiceBaseModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v1, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 335
    .local v2, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v2, :cond_2

    const-string/jumbo v5, "1"

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r()Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/voicerole/model/Status;

    if-ne v5, v6, :cond_2

    .line 336
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 337
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public e(Lbbo;)Ljava/util/List;
    .locals 7
    .param p1, "voiceRoleModel"    # Lbbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    if-nez p1, :cond_1

    .line 349
    const/4 v3, 0x0

    .line 362
    :cond_0
    return-object v3

    .line 351
    :cond_1
    invoke-virtual {p1}, Lbbo;->e()Ljava/util/List;

    move-result-object v0

    .line 352
    .local v0, "allBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v3, "voiceBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v1, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 355
    .local v2, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v2, :cond_2

    const-string/jumbo v5, "0"

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 357
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public f(Lbbo;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "voiceRoleModel"    # Lbbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    if-nez p1, :cond_1

    .line 368
    const/4 v3, 0x0

    .line 381
    :cond_0
    return-object v3

    .line 370
    :cond_1
    invoke-virtual {p1}, Lbbo;->e()Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, "allBaseModels":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v3, "voiceBaseModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v1, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 374
    .local v2, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 375
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 376
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
