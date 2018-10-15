.class final Lcom/iflytek/viafly/translate/TranslateBusinessHandler;
.super Lcom/iflytek/framework/business/AbsBusinessHandler;
.source "TranslateBusinessHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranslateBusinessHandler"


# instance fields
.field private mOperationView:Lcom/iflytek/framework/browser/localControlView/OperationView;

.field private toastText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/translate/TranslateBusinessHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/TranslateBusinessHandler;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/translate/TranslateBusinessHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/TranslateBusinessHandler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->toastText:Ljava/lang/String;

    return-object v0
.end method

.method private adjustDelayedTimeByNetwork(J)J
    .locals 3
    .param p1, "delayedTime"    # J

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const-wide/16 v0, 0x1f4

    sub-long/2addr p1, v0

    .line 267
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 268
    const-wide/16 p1, 0x0

    .line 270
    :cond_0
    return-wide p1

    .line 264
    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_0
.end method

.method private changeTranslateTitle(Lcom/iflytek/viafly/translate/TranslateMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/iflytek/viafly/translate/TranslateMode;

    .prologue
    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v1

    .line 329
    .local v1, "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v2, :cond_0

    .line 330
    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .end local v1    # "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    iput-object v1, p0, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->mOperationView:Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 331
    iget-object v2, p0, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->mOperationView:Lcom/iflytek/framework/browser/localControlView/OperationView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TranslateBusinessHandler"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getTranslateTtsParams()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne v1, v2, :cond_1

    .line 240
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "tts_engine_type"

    const-string/jumbo v2, "cloud"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v1, "cloud_tts_engine_type"

    const-string/jumbo v2, "intp65_en"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v1, "role"

    const-string/jumbo v2, "catherine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchTranslateInfo(Lcom/iflytek/viafly/translate/TranslateMode;)V
    .locals 7
    .param p1, "mode"    # Lcom/iflytek/viafly/translate/TranslateMode;

    .prologue
    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v5

    .line 351
    invoke-virtual {v5}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v1

    .line 352
    .local v1, "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v5, :cond_0

    .line 354
    move-object v0, v1

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    move-object v3, v0

    .line 355
    .local v3, "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v3, :cond_0

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "switchTranlateMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    sget-object v5, Lcom/iflytek/viafly/translate/TranslateBusinessHandler$2;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/TranslateMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 380
    .end local v1    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    .end local v3    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 360
    .restart local v1    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    .restart local v3    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .restart local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_0
    const-string/jumbo v5, "(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string/jumbo v5, "CnToEn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string/jumbo v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v3}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v1    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    .end local v3    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TranslateBusinessHandler"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 366
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "containerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    .restart local v3    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .restart local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_1
    :try_start_1
    const-string/jumbo v5, "(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string/jumbo v5, "EnToCn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string/jumbo v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v3}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getSpeechIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "local_scene"

    const-string/jumbo v2, "translation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "translation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getSpeechIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public handleShortCutSpeechResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method protected onClearBusiness()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public onDataUpdated(Lcom/iflytek/framework/business/entities/UpdateDataType;)V
    .locals 2
    .param p1, "type"    # Lcom/iflytek/framework/business/entities/UpdateDataType;

    .prologue
    .line 438
    if-eqz p1, :cond_0

    sget-object v1, Lcom/iflytek/framework/business/entities/UpdateDataType;->translate_setting:Lcom/iflytek/framework/business/entities/UpdateDataType;

    if-ne p1, v1, :cond_0

    .line 439
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    .line 440
    .local v0, "translateMode":Lcom/iflytek/viafly/translate/TranslateMode;
    if-eqz v0, :cond_0

    .line 441
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->switchTranslateInfo(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 444
    .end local v0    # "translateMode":Lcom/iflytek/viafly/translate/TranslateMode;
    :cond_0
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;

    .prologue
    .line 294
    const-string/jumbo v5, "TranslateBusinessHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onExec action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " args = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_0
    const-string/jumbo v5, "startTranslation"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 298
    :cond_1
    const-string/jumbo v5, "ttsSpeak"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "tanslationMode":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "ttsContent":Ljava/lang/String;
    const/4 v2, 0x0

    .line 303
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "CnToEn"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 305
    .restart local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "tts_engine_type"

    const-string/jumbo v6, "cloud"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v5, "cloud_tts_engine_type"

    const-string/jumbo v6, "intp65_en"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v5, "role"

    const-string/jumbo v6, "catherine"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_2
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v2, v6, v7}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "tanslationMode":Ljava/lang/String;
    .end local v4    # "ttsContent":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TranslateBusinessHandler"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 312
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "ttsStop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 313
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->ttsStop()V

    goto :goto_0

    .line 314
    :cond_4
    const-string/jumbo v5, "copyContent"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 315
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "copyContent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/base/clipboard/ClipboardManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/base/clipboard/ClipboardManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/iflytek/base/clipboard/ClipboardManager;->copy(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "\u6240\u9009\u5185\u5bb9\u5df2\u6210\u529f\u590d\u5236"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onFail(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 1
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishFilter(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 1
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getRawText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->addQuestionView(Ljava/lang/String;)V

    .line 67
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onShow(Lcom/iflytek/framework/business/entities/HandleContext;)V
    .locals 2
    .param p1, "context"    # Lcom/iflytek/framework/business/entities/HandleContext;

    .prologue
    .line 275
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v0

    .line 276
    .local v0, "translateMode":Lcom/iflytek/viafly/translate/TranslateMode;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne v0, v1, :cond_2

    .line 277
    :cond_0
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 278
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->changeTranslateTitle(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    if-ne v0, v1, :cond_1

    .line 280
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 281
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->changeTranslateTitle(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->switchTranslateInfo(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0
.end method

.method public onSpeechError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 448
    return-void
.end method

.method protected onSuccess(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 16
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 87
    :try_start_0
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/iflytek/viafly/translate/TranslationFilterResult;

    if-eqz v12, :cond_a

    .line 88
    move-object/from16 v0, p2

    check-cast v0, Lcom/iflytek/viafly/translate/TranslationFilterResult;

    move-object v9, v0

    .line 89
    .local v9, "translateFilterResult":Lcom/iflytek/viafly/translate/TranslationFilterResult;
    invoke-virtual {v9}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getOperation()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "operation":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTip()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "tip":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v2, 0x1

    .line 92
    .local v2, "IsTextSearchResult":Z
    :goto_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v12

    const-string/jumbo v13, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-virtual {v12, v13}, Lil;->c(Ljava/lang/String;)Z

    move-result v6

    .line 95
    .local v6, "isSpeechDialogMode":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v3

    .line 96
    .local v3, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 97
    invoke-virtual {v3, v8}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->removePreBroadcast()V

    .line 103
    const-string/jumbo v12, "launch"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 104
    sget-object v12, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v12}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 105
    const-string/jumbo v12, "[x1][k2]"

    invoke-static {v8, v12}, Lpz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 107
    if-nez v2, :cond_1

    if-eqz v6, :cond_1

    .line 108
    const/4 v12, 0x0

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v14, v15}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 110
    :cond_1
    const-wide/16 v12, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 166
    .end local v2    # "IsTextSearchResult":Z
    .end local v3    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v6    # "isSpeechDialogMode":Z
    .end local v7    # "operation":Ljava/lang/String;
    .end local v8    # "tip":Ljava/lang/String;
    .end local v9    # "translateFilterResult":Lcom/iflytek/viafly/translate/TranslationFilterResult;
    :cond_2
    :goto_1
    return-void

    .line 91
    .restart local v7    # "operation":Ljava/lang/String;
    .restart local v8    # "tip":Ljava/lang/String;
    .restart local v9    # "translateFilterResult":Lcom/iflytek/viafly/translate/TranslationFilterResult;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 112
    .restart local v2    # "IsTextSearchResult":Z
    .restart local v3    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .restart local v6    # "isSpeechDialogMode":Z
    :cond_4
    const-string/jumbo v12, "exit"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 113
    const/4 v12, 0x0

    invoke-static {v12}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 114
    const-string/jumbo v12, "[x1][k2]"

    invoke-static {v8, v12}, Lpz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 116
    if-nez v2, :cond_5

    if-eqz v6, :cond_5

    .line 117
    const/4 v12, 0x0

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v14, v15}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 119
    :cond_5
    const-wide/16 v12, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    .end local v2    # "IsTextSearchResult":Z
    .end local v3    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v6    # "isSpeechDialogMode":Z
    .end local v7    # "operation":Ljava/lang/String;
    .end local v8    # "tip":Ljava/lang/String;
    .end local v9    # "translateFilterResult":Lcom/iflytek/viafly/translate/TranslationFilterResult;
    :catch_0
    move-exception v4

    .line 164
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "TranslateBusinessHandler"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 121
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "IsTextSearchResult":Z
    .restart local v3    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .restart local v6    # "isSpeechDialogMode":Z
    .restart local v7    # "operation":Ljava/lang/String;
    .restart local v8    # "tip":Ljava/lang/String;
    .restart local v9    # "translateFilterResult":Lcom/iflytek/viafly/translate/TranslationFilterResult;
    :cond_6
    :try_start_1
    const-string/jumbo v12, "switch"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 122
    const-string/jumbo v12, "[x1][k2]"

    invoke-static {v8, v12}, Lpz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    if-nez v2, :cond_7

    if-eqz v6, :cond_7

    .line 125
    const/4 v12, 0x0

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v14, v15}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 127
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0c03c5

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "zh_cn":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0c00a5

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "en_us":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 131
    invoke-virtual {v9}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTarget()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 132
    sget-object v12, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v12}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 133
    const-string/jumbo v12, "\u5f53\u524d\u72b6\u6001\u662f\u6c49\u8bed\u7ffb\u8bd1\u5230\u82f1\u8bed"

    invoke-virtual {v3, v12}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 134
    const-wide/16 v12, 0x258

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 135
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->switchTranslateInfo(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 136
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->changeTranslateTitle(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto/16 :goto_1

    .line 139
    :cond_8
    invoke-virtual {v9}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getSource()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 140
    invoke-virtual {v9}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTarget()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 141
    sget-object v12, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v12}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 142
    const-string/jumbo v12, "\u5f53\u524d\u72b6\u6001\u662f\u82f1\u8bed\u7ffb\u8bd1\u5230\u6c49\u8bed"

    invoke-virtual {v3, v12}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 143
    const-wide/16 v12, 0x258

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 144
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->switchTranslateInfo(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 145
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->changeTranslateTitle(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto/16 :goto_1

    .line 150
    .end local v5    # "en_us":Ljava/lang/String;
    .end local v11    # "zh_cn":Ljava/lang/String;
    :cond_9
    invoke-virtual {v9}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->getTranslated()Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, "translateStr":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 152
    invoke-virtual {v3, v10}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 153
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Z)V

    .line 154
    const-wide/16 v12, 0x258

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v12

    const-string/jumbo v13, "N_MIC_TRANS"

    invoke-virtual {v12, v13}, Lalq;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v12

    const-string/jumbo v13, "MIC_TRANS"

    invoke-virtual {v12, v13}, Lalq;->a(Ljava/lang/String;)V

    .line 157
    if-nez v2, :cond_a

    if-eqz v6, :cond_a

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getTranslateTtsParams()Ljava/util/HashMap;

    move-result-object v12

    const-wide/16 v14, 0x384

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v14, v15}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 162
    .end local v2    # "IsTextSearchResult":Z
    .end local v3    # "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v6    # "isSpeechDialogMode":Z
    .end local v7    # "operation":Ljava/lang/String;
    .end local v8    # "tip":Ljava/lang/String;
    .end local v9    # "translateFilterResult":Lcom/iflytek/viafly/translate/TranslationFilterResult;
    .end local v10    # "translateStr":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v12

    const-string/jumbo v13, "LX_100070"

    invoke-virtual {v12, v13}, Lwz;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected varargs onSystemEventCallback(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "systemEvent"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 471
    return-void
.end method

.method public onTtsPlayBegin()V
    .locals 2

    .prologue
    .line 175
    const-string/jumbo v0, "TranslateBusinessHandler"

    const-string/jumbo v1, "onTtsPlayBegin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->startSpeakAnimation()V

    .line 179
    return-void
.end method

.method public onTtsPlayComplete(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 183
    const-string/jumbo v0, "TranslateBusinessHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTtsPlayComplete errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p1, :cond_0

    .line 187
    const v0, 0xc3508

    if-ne v0, p1, :cond_1

    .line 188
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->toastText:Ljava/lang/String;

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/iflytek/viafly/translate/TranslateBusinessHandler$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler$1;-><init>(Lcom/iflytek/viafly/translate/TranslateBusinessHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->stopSpeakAnimation()V

    .line 207
    return-void

    .line 190
    :cond_1
    const-string/jumbo v0, "\u64ad\u62a5\u51fa\u9519"

    iput-object v0, p0, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->toastText:Ljava/lang/String;

    goto :goto_0
.end method

.method public onTtsPlayInterrupt()V
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "TranslateBusinessHandler"

    const-string/jumbo v1, "onTtsPlayInterrupt"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->stopSpeakAnimation()V

    .line 215
    return-void
.end method

.method public onTtsPlayPause()V
    .locals 2

    .prologue
    .line 223
    const-string/jumbo v0, "TranslateBusinessHandler"

    const-string/jumbo v1, "onTtsPlayPause"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->stopSpeakAnimation()V

    .line 227
    return-void
.end method

.method public onTtsPlayProgress(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 219
    return-void
.end method

.method public onTtsPlayResume()V
    .locals 2

    .prologue
    .line 231
    const-string/jumbo v0, "TranslateBusinessHandler"

    const-string/jumbo v1, "onTtsPlayResume"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->startSpeakAnimation()V

    .line 235
    return-void
.end method

.method protected varargs onUIEventCallback(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "businessEvent"    # Lcom/iflytek/framework/business/entities/UIEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 461
    sget-object v0, Lcom/iflytek/framework/business/entities/UIEvent;->activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v0, p1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->ttsStop()V

    .line 464
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePreBroadcast()V
    .locals 7

    .prologue
    .line 386
    const-string/jumbo v5, "TranslateBusinessHandler"

    const-string/jumbo v6, "removePreBroadcast()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v4

    .line 389
    .local v4, "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v5, :cond_0

    .line 390
    move-object v0, v4

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    move-object v3, v0

    .line 391
    .local v3, "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    const-string/jumbo v2, "answerView.removeAnswerShare()"

    .line 392
    .local v2, "jsCode":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v2    # "jsCode":Ljava/lang/String;
    .end local v3    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .end local v4    # "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TranslateBusinessHandler"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startSpeakAnimation()V
    .locals 7

    .prologue
    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v4

    .line 405
    .local v4, "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v5, :cond_0

    .line 406
    move-object v0, v4

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    move-object v3, v0

    .line 407
    .local v3, "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    const-string/jumbo v2, "answerView.startSpeakAnimation()"

    .line 408
    .local v2, "jsCode":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v2    # "jsCode":Ljava/lang/String;
    .end local v3    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .end local v4    # "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TranslateBusinessHandler"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopSpeakAnimation()V
    .locals 7

    .prologue
    .line 420
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v4

    .line 421
    .local v4, "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v5, :cond_0

    .line 422
    move-object v0, v4

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    move-object v3, v0

    .line 423
    .local v3, "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    const-string/jumbo v2, "answerView.stopSpeakAnimation()"

    .line 424
    .local v2, "jsCode":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v2    # "jsCode":Ljava/lang/String;
    .end local v3    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .end local v4    # "widgetContainerInterface":Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    :cond_0
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TranslateBusinessHandler"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
