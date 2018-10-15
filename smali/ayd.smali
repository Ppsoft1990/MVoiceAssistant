.class public Layd;
.super Ljava/lang/Object;
.source "TranslateSpeechHandler.java"


# instance fields
.field private a:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

.field private b:Lcom/iflytek/yd/speech/ISpeechHandler;

.field private c:Laxz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandlerFactory;->newInstance(Landroid/content/Context;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    iput-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/iflytek/framework/business/speech/SpeechHandlerFactory;->newInstance(Landroid/content/Context;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    iput-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 62
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "zh-cn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 321
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    .line 295
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v1, "en-us"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "cloud"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "role"

    const-string/jumbo v2, "catherine"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v1, "cloud_tts_engine_type"

    const-string/jumbo v2, "intp65_en"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_2
    const-string/jumbo v1, "ko-kr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "cloud"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "role"

    const-string/jumbo v2, "zhimin"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string/jumbo v1, "self_text_language"

    const-string/jumbo v2, "ko-kr"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_3
    const-string/jumbo v1, "ja-jp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "cloud"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string/jumbo v1, "role"

    const-string/jumbo v2, "qianhui"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v1, "self_text_language"

    const-string/jumbo v2, "ja-jp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_4
    const-string/jumbo v1, "fr-fr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "cloud"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v1, "role"

    const-string/jumbo v2, "mariane"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v1, "self_text_language"

    const-string/jumbo v2, "fr-fr"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    :cond_5
    const-string/jumbo v1, "es-es"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "cloud"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v1, "role"

    const-string/jumbo v2, "gabriela"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string/jumbo v1, "self_text_language"

    const-string/jumbo v2, "es-es"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private d()Landroid/content/Intent;
    .locals 4

    .prologue
    const/16 v3, 0x2710

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "local_scene"

    const-string/jumbo v2, "translation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "translation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "vad_front_time"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string/jumbo v1, "cloud_vad_front_time"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string/jumbo v1, "is_play_record_tone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-string/jumbo v1, "local_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Layd;->c:Laxz;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Layd;->c:Laxz;

    invoke-interface {v0}, Laxz;->a()V

    .line 235
    :cond_0
    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Layd;->b()V

    .line 75
    :cond_0
    iget-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-direct {p0}, Layd;->d()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .prologue
    .line 65
    iget-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0, p1}, Lcom/iflytek/yd/speech/ISpeechHandler;->setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 66
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "entry"    # Ljava/lang/String;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/iflytek/yd/speech/ISpeechHandler;->startTextSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lju;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "targetLang"    # Ljava/lang/String;
    .param p3, "listener"    # Lju;

    .prologue
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    const-string/jumbo v2, "TranslateSpeechHandler"

    const-string/jumbo v3, "startSpeak content is empty"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0}, Layd;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    const-string/jumbo v2, "TranslateSpeechHandler"

    const-string/jumbo v3, "startSpeak content is empty"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz p3, :cond_0

    .line 275
    const v2, 0x186a0

    invoke-interface {p3, v2}, Lju;->onPlayCompletedCallBack(I)V

    goto :goto_0

    .line 281
    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Layd;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 282
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v2

    invoke-virtual {v2}, Lahp;->l()Lpp;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TranslateSpeechHandler"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v10, 0x1

    .line 137
    const-string/jumbo v11, "TranslateSpeechHandler"

    const-string/jumbo v12, "handleLastResult "

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_2

    .line 140
    :cond_0
    invoke-direct {p0}, Layd;->e()V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget-object v11, p0, Layd;->a:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    if-nez v11, :cond_3

    .line 145
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getPreHandler()Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    move-result-object v11

    iput-object v11, p0, Layd;->a:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    .line 148
    :cond_3
    iget-object v11, p0, Layd;->a:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v12

    invoke-interface {v11, v12, p1}, Lcom/iflytek/framework/business/interfaces/IResultPreHandler;->getPreHandleResult(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    .line 150
    .local v1, "asrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-nez v1, :cond_4

    .line 151
    invoke-direct {p0}, Layd;->e()V

    goto :goto_0

    .line 156
    :cond_4
    if-eqz v1, :cond_5

    const-string/jumbo v11, "translation"

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getFocus()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 157
    invoke-direct {p0}, Layd;->e()V

    goto :goto_0

    .line 161
    :cond_5
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v11

    const-string/jumbo v12, "translation"

    invoke-interface {v11, v12}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getResultFilter(Ljava/lang/String;)Lcom/iflytek/yd/speech/RecognizeFilter;

    move-result-object v6

    check-cast v6, Laxq;

    .line 162
    .local v6, "recognizeFilter":Laxq;
    invoke-virtual {v6, v1}, Laxq;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/translate/TranslationFilterResult;

    .line 163
    .local v2, "filterResult":Lcom/iflytek/viafly/translate/TranslationFilterResult;
    const-string/jumbo v11, "TranslateSpeechHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleLastResult filterResult "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v2}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getOperation()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "operation":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTip()Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "tip":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v11

    if-ne v11, v10, :cond_6

    move v0, v10

    .line 168
    .local v0, "IsTextSearchResult":Z
    :goto_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v12, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-virtual {v11, v12}, Lil;->c(Ljava/lang/String;)Z

    move-result v3

    .line 171
    .local v3, "isSpeechDialogMode":Z
    const-string/jumbo v11, "launch"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 174
    const-string/jumbo v11, "exit"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 177
    const-string/jumbo v11, "switch"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 178
    const-string/jumbo v10, "[x1][k2]"

    invoke-static {v8, v10}, Lpz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 203
    goto/16 :goto_0

    .line 167
    .end local v0    # "IsTextSearchResult":Z
    .end local v3    # "isSpeechDialogMode":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 206
    .restart local v0    # "IsTextSearchResult":Z
    .restart local v3    # "isSpeechDialogMode":Z
    :cond_7
    invoke-virtual {v2}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTranslated()Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, "translateStr":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getOriginal()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "originalStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 210
    new-instance v7, Lcom/iflytek/viafly/translate/entity/TranslateResult;

    invoke-direct {v7}, Lcom/iflytek/viafly/translate/entity/TranslateResult;-><init>()V

    .line 211
    .local v7, "result":Lcom/iflytek/viafly/translate/entity/TranslateResult;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->setOriginal(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->setTranslated(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTargetLg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->setTargetLg(Ljava/lang/String;)V

    .line 217
    if-nez v0, :cond_8

    if-eqz v3, :cond_8

    .line 218
    invoke-virtual {v7, v10}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->setNeedBrocast(Z)V

    .line 221
    :cond_8
    iget-object v10, p0, Layd;->c:Laxz;

    if-eqz v10, :cond_1

    .line 222
    iget-object v10, p0, Layd;->c:Laxz;

    invoke-interface {v10, v7}, Laxz;->a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)V

    goto/16 :goto_0

    .line 225
    .end local v7    # "result":Lcom/iflytek/viafly/translate/entity/TranslateResult;
    :cond_9
    const-string/jumbo v10, "TranslateSpeechHandler"

    const-string/jumbo v11, "handleLastResult, parse result is null"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Layd;->e()V

    goto/16 :goto_0
.end method

.method public a(Lju;)V
    .locals 1
    .param p1, "listener"    # Lju;

    .prologue
    .line 238
    invoke-direct {p0}, Layd;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    if-eqz p1, :cond_0

    .line 240
    const v0, 0x186a0

    invoke-interface {p1, v0}, Lju;->onPlayCompletedCallBack(I)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpp;->c(Lju;)V

    goto :goto_0
.end method

.method public a([Lcom/iflytek/yd/speech/ViaAsrResult;Laxz;)V
    .locals 4
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "resultHandleListener"    # Laxz;

    .prologue
    .line 122
    const-string/jumbo v2, "TranslateSpeechHandler"

    const-string/jumbo v3, "handleLastResult"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-object p2, p0, Layd;->c:Laxz;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 128
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 129
    .local v0, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    invoke-virtual {p0, v1}, Layd;->a(Ljava/util/ArrayList;)V

    .line 134
    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lju;)Z
    .locals 1
    .param p1, "listener"    # Lju;

    .prologue
    .line 249
    invoke-direct {p0}, Layd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpp;->d(Lju;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Layd;->b:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
