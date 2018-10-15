.class public Lbbi;
.super Ljava/lang/Object;
.source "SpeakerHelper.java"


# static fields
.field private static a:Lbbi;


# instance fields
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

.field private c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field private d:Landroid/graphics/drawable/Drawable;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, "\u5927\u5bb6\u597d,\u6211\u662f"

    iput-object v0, p0, Lbbi;->e:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ",\u7075\u7280,\u61c2\u4f60\u7684\u8bed\u97f3\u52a9\u624b,\u9009\u6211,\u4e3a\u4f60\u64ad\u62a5\u5427"

    iput-object v0, p0, Lbbi;->f:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic a(Lbbi;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lbbi;

    .prologue
    .line 43
    iget-object v0, p0, Lbbi;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lbbi;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lbbi;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 43
    iput-object p1, p0, Lbbi;->d:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static a()Lbbi;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lbbi;->a:Lbbi;

    if-nez v0, :cond_1

    .line 73
    const-class v1, Lbbi;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lbbi;->a:Lbbi;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lbbi;

    invoke-direct {v0}, Lbbi;-><init>()V

    sput-object v0, Lbbi;->a:Lbbi;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    sget-object v0, Lbbi;->a:Lbbi;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private j()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    .line 114
    .local v0, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v1, "jiajia"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "\u5609\u5609"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v1, "\u7075\u7280\u9ed8\u8ba4\u7cfb\u7edf\u8bed\u97f3"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c(Ljava/lang/String;)V

    .line 128
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 326
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 328
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    .line 329
    .local v0, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-nez v0, :cond_2

    .line 338
    :cond_1
    :goto_0
    return-object p1

    .line 332
    :cond_2
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1}, Lbbi;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    const-string/jumbo v1, "tts_engine_type"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v1, "role"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v1, "cloud_tts_engine"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "speechList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-virtual {p0}, Lbbi;->b()V

    .line 238
    if-nez p1, :cond_0

    .line 239
    const-string/jumbo v2, ""

    .line 248
    :goto_0
    return-object v2

    .line 241
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 242
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    const-string/jumbo v1, ""

    .line 243
    .local v1, "type":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 244
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p0, v1}, Lbbi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 246
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 3
    .param p1, "speaker"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 175
    iput-object p1, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 176
    iget-object v0, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_GLOBAL_SPEAKER_USAGE"

    iget-object v2, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->u()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbg;->c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 180
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbg;->a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 181
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbg;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lbbi;->h()V

    .line 184
    return-void
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "jiajia"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    const v0, 0x7f02029b

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "jiajia"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v1

    .line 208
    :cond_1
    invoke-virtual {p0}, Lbbi;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lbbi;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 212
    .local v0, "speaker":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 318
    :goto_0
    return-object v0

    .line 314
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "cloud"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string/jumbo v1, "role"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v1, "cloud_tts_engine"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-virtual {p0}, Lbbi;->b()V

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    const-string/jumbo v0, ""

    .line 291
    :goto_0
    return-object v0

    .line 259
    :cond_0
    const-string/jumbo v2, ""

    .line 260
    .local v2, "realType":Ljava/lang/String;
    const-string/jumbo v4, "morning"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    const-string/jumbo v2, "0"

    .line 267
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 269
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 270
    iget-object v4, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;

    .line 271
    .local v3, "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 262
    .end local v3    # "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    :cond_3
    const-string/jumbo v4, "night"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    const-string/jumbo v2, "1"

    goto :goto_1

    .line 264
    :cond_4
    const-string/jumbo v4, "remind"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    const-string/jumbo v2, "2"

    goto :goto_1

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SpeakerHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v0, ""

    .line 282
    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 283
    const-string/jumbo v0, "\u65e9\u4e0a\u597d\uff01\u4e0d\u8981\u8ba9\u8d2a\u7761\u6210\u4e3a\u6210\u529f\u8def\u4e0a\u7684\u7eca\u811a\u77f3\uff0c\u8d76\u5feb\u8d77\u5e8a\u5427\uff01"

    goto :goto_0

    .line 284
    :cond_6
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 285
    const-string/jumbo v0, "\u8f9b\u82e6\u52b3\u7d2f\u4e86\u4e00\u5929\uff0c\u65e9\u70b9\u4f11\u606f\u54e6\uff0c\u6ce8\u610f\u52b3\u9038\u7ed3\u5408\uff0c\u522b\u518d\u73a9\u624b\u673a\u5566\uff01"

    goto/16 :goto_0

    .line 286
    :cond_7
    const-string/jumbo v4, "2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 287
    const-string/jumbo v0, "\u563f\uff0c\u6709\u4f60\u7684\u4e00\u4e2a\u65e5\u7a0b\u63d0\u9192\uff01"

    goto/16 :goto_0

    .line 289
    :cond_8
    const-string/jumbo v0, ",\u7075\u7280,\u61c2\u4f60\u7684\u8bed\u97f3\u52a9\u624b,\u9009\u6211,\u4e3a\u4f60\u64ad\u62a5\u5427"

    goto/16 :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 86
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v3

    invoke-virtual {v3}, Lbbi;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    const/4 v3, 0x0

    iput-object v3, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v3, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-nez v3, :cond_0

    .line 92
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_GLOBAL_SPEAKER_USAGE"

    .line 93
    invoke-virtual {v3, v4}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "speaker":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v3}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    iput-object v3, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 97
    iget-object v3, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "speaker":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SpeakerHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "speaker":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lbbi;->j()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v3

    iput-object v3, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0}, Lbbi;->b()V

    .line 137
    iget-object v1, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v1, :cond_0

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lbbi;->b()V

    .line 155
    const/4 v0, 0x1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbbi;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lbbi;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lbbi;->h()V

    .line 161
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbbi;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 2
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
    .line 190
    iget-object v1, p0, Lbbi;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lbbi;->b:Ljava/util/List;

    .line 197
    :goto_0
    return-object v1

    .line 193
    :cond_0
    invoke-static {}, Lbbo;->g()Lbbo;

    move-result-object v0

    .line 194
    .local v0, "voiceRoleModel":Lbbo;
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lbbo;->e()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lbbi;->b:Ljava/util/List;

    .line 197
    :cond_1
    iget-object v1, p0, Lbbi;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public h()V
    .locals 5

    .prologue
    .line 342
    invoke-virtual {p0}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    .line 343
    .local v0, "voiceBaseModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbbi;->i()Lbcu;

    move-result-object v3

    new-instance v4, Lbbi$1;

    invoke-direct {v4, p0}, Lbbi$1;-><init>(Lbbi;)V

    invoke-virtual {v1, v2, v3, v4}, Lazl;->a(Ljava/lang/String;Lbcu;Lbdd;)V

    goto :goto_0
.end method

.method public i()Lbcu;
    .locals 3

    .prologue
    .line 371
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 373
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 375
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 377
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 379
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 381
    .local v0, "options":Lbcu;
    return-object v0
.end method
