.class public final Lcom/iflytek/framework/business/components/ListeningComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "ListeningComponents.java"

# interfaces
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_ListeningComponents"


# instance fields
.field private final DEFAULT_ERROR_AUDIO_ID:I

.field private browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private mAudioUploadManager:Lazd;

.field private mListeningManager:Lanl;

.field private mResultPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

.field private mSpeechIntent:Landroid/content/Intent;

.field private mUploadResultListener:Lazd$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->DEFAULT_ERROR_AUDIO_ID:I

    .line 491
    new-instance v0, Lcom/iflytek/framework/business/components/ListeningComponents$3;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/components/ListeningComponents$3;-><init>(Lcom/iflytek/framework/business/components/ListeningComponents;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mUploadResultListener:Lazd$a;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/ListeningComponents;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/ListeningComponents;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/components/ListeningComponents;->onUploadAudioResult(ILjava/lang/String;)V

    return-void
.end method

.method private handleListeningResult(Lcom/iflytek/yd/speech/ViaAsrResult;I)V
    .locals 7
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "audioId"    # I

    .prologue
    .line 366
    const-string/jumbo v4, "Business_ListeningComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleListeningSearch audioId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v2, 0x0

    .line 369
    .local v2, "rawText":Ljava/lang/String;
    const v0, 0x186a4

    .line 370
    .local v0, "errorCode":I
    if-eqz p1, :cond_1

    .line 372
    new-instance v3, Lcom/iflytek/yd/speech/BaseRecognizeFilter;

    invoke-direct {v3}, Lcom/iflytek/yd/speech/BaseRecognizeFilter;-><init>()V

    .line 373
    .local v3, "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    invoke-virtual {v3, p1}, Lcom/iflytek/yd/speech/BaseRecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v1

    .line 375
    .local v1, "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    invoke-virtual {v1}, Lcom/iflytek/yd/speech/FilterResult;->getRawText()Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 377
    const-string/jumbo v4, "Business_ListeningComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleListeningSearch, rawText = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x0

    .line 388
    .end local v1    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    .end local v3    # "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    :goto_0
    invoke-direct {p0, v0, v2, p2}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningWithoutUIResult(ILjava/lang/String;I)V

    .line 390
    return-void

    .line 380
    .restart local v1    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    .restart local v3    # "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    :cond_0
    const-string/jumbo v4, "Business_ListeningComponents"

    const-string/jumbo v5, "handleListeningSearch, rawText is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const v0, 0x186a3

    goto :goto_0

    .line 384
    .end local v1    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    .end local v3    # "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    :cond_1
    const-string/jumbo v4, "Business_ListeningComponents"

    const-string/jumbo v5, "handleListeningSearch, recognizerResult is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const v0, 0x186a2

    goto :goto_0
.end method

.method private initEnIntent(Z)V
    .locals 3
    .param p1, "isNeedSaveAudio"    # Z

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    .line 244
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "translation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "local_scene"

    const-string/jumbo v2, "translation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "vad_end_time"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "saveAudio"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "web_language"

    const-string/jumbo v2, "en_us"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v0}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 256
    return-void
.end method

.method private initIntent(Z)V
    .locals 3
    .param p1, "isNeedSaveAudio"    # Z

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    .line 273
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "vad_end_time"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "saveAudio"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    return-void
.end method

.method private onListeningComplete(ILjava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "rawText"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 182
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v3, "rawText"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    invoke-direct {v3, v4, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "Business_ListeningComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onListeningComplete(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 192
    return-void

    .line 184
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Business_ListeningComponents"

    const-string/jumbo v4, "network callback error "

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onListeningWithoutUIErrorResult(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 487
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningWithoutUIResult(ILjava/lang/String;I)V

    .line 488
    return-void
.end method

.method private onListeningWithoutUIResult(ILjava/lang/String;I)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "rawText"    # Ljava/lang/String;
    .param p3, "audioId"    # I

    .prologue
    .line 461
    const-string/jumbo v4, "onListeningWithoutUI"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/ListeningComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "callbackID":Ljava/lang/String;
    const-string/jumbo v4, "Business_ListeningComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onListeningWithoutUIResult callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string/jumbo v4, "Business_ListeningComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onListeningWithoutUIResult rawText "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    :goto_0
    return-void

    .line 468
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 470
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 471
    const-string/jumbo v4, "rawText"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    if-eqz p3, :cond_1

    .line 474
    const-string/jumbo v4, "audioId"

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_1
    :goto_1
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "result":Ljava/lang/String;
    const-string/jumbo v4, "Business_ListeningComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v4, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LXJSBridge.fireFromNative(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_ListeningComponents"

    const-string/jumbo v5, "onListeningWithoutUIResult assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onUploadAudioResult(ILjava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "remmoteId"    # Ljava/lang/String;

    .prologue
    .line 567
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 568
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 571
    .local v0, "callbackID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "startUploadAudio"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/ListeningComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    const-string/jumbo v4, "Business_ListeningComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUploadAudioResult callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 575
    const-string/jumbo v4, "serverId"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

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

    .line 583
    return-void

    .line 576
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_ListeningComponents"

    const-string/jumbo v5, "onUploadAudioResult assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestRecordPermissAndStart()V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iflytek/framework/business/components/ListeningComponents$1;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/business/components/ListeningComponents$1;-><init>(Lcom/iflytek/framework/business/components/ListeningComponents;)V

    invoke-static {v0, v1}, Lpf;->a(Landroid/content/Context;Lpf$a;)V

    .line 214
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    invoke-virtual {v0}, Lanl;->stop()V

    .line 268
    :cond_0
    return-void
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 150
    const-string/jumbo v1, "Business_ListeningComponents"

    const-string/jumbo v2, "startListening()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string/jumbo v1, "SEARCH_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    :cond_0
    return-void
.end method

.method private startListeningWithoutUI(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isNeedSaveAudio"    # Z
    .param p2, "engine"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->reset()V

    .line 220
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lanl;

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lanl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    invoke-virtual {v0, p0}, Lanl;->setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 227
    const/4 v0, 0x0

    invoke-static {v0}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 228
    const-string/jumbo v0, "EN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/ListeningComponents;->initEnIntent(Z)V

    .line 235
    :goto_0
    invoke-static {}, Larc;->a()Larc;

    move-result-object v0

    invoke-virtual {v0}, Larc;->h()V

    .line 237
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    iget-object v1, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lanl;->start(Landroid/content/Intent;)V

    .line 238
    return-void

    .line 231
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/ListeningComponents;->initIntent(Z)V

    goto :goto_0
.end method

.method private stopListeningWithoutUI()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    invoke-virtual {v0}, Lanl;->stopRecording()V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public createAudioID()I
    .locals 4

    .prologue
    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Business_ListeningComponents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "Business_ListeningComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createAudioID()  key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public handleLastResult(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 323
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const-string/jumbo v4, "Business_ListeningComponents"

    const-string/jumbo v5, "handleLastResult "

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 328
    :cond_0
    const v4, 0x186a2

    invoke-direct {p0, v4}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningWithoutUIErrorResult(I)V

    .line 363
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v4, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mResultPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    if-nez v4, :cond_2

    .line 333
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getPreHandler()Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mResultPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    .line 336
    :cond_2
    iget-object v4, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mResultPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Lcom/iflytek/framework/business/interfaces/IResultPreHandler;->getPreHandleResult(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    .line 338
    .local v0, "asrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-nez v0, :cond_3

    .line 339
    const v4, 0x186a3

    invoke-direct {p0, v4}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningWithoutUIErrorResult(I)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v4, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v5, "saveAudio"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 345
    .local v2, "isNeedSaveAudio":Z
    const/4 v1, 0x0

    .line 346
    .local v1, "audioId":I
    if-eqz v2, :cond_4

    .line 347
    const-string/jumbo v4, "Business_ListeningComponents"

    const-string/jumbo v5, "handleLastResult needSaveAudio"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->createAudioID()I

    move-result v1

    .line 350
    const-string/jumbo v4, "Business_ListeningComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleLastResult audioId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move v3, v1

    .line 352
    .local v3, "mAudioId":I
    sget-object v4, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/iflytek/framework/business/components/ListeningComponents$2;

    invoke-direct {v5, p0, v3}, Lcom/iflytek/framework/business/components/ListeningComponents$2;-><init>(Lcom/iflytek/framework/business/components/ListeningComponents;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 361
    .end local v3    # "mAudioId":I
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/iflytek/framework/business/components/ListeningComponents;->handleListeningResult(Lcom/iflytek/yd/speech/ViaAsrResult;I)V

    goto :goto_0
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 4
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 311
    const-string/jumbo v2, "Business_ListeningComponents"

    const-string/jumbo v3, "handleLastResult"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 314
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 315
    .local v0, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/iflytek/framework/business/components/ListeningComponents;->handleLastResult(Ljava/util/ArrayList;)V

    .line 320
    return-void
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 307
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 164
    const-string/jumbo v3, "Business_ListeningComponents"

    const-string/jumbo v4, "onActivityResult"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string/jumbo v3, "Business_ListeningComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",resultCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",data is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-ne p2, v6, :cond_0

    if-eqz p3, :cond_0

    .line 167
    const-string/jumbo v3, "errorCode"

    const v4, 0x186a3

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, "errorCode":I
    const-string/jumbo v3, "SEARCH_TYPE"

    invoke-virtual {p3, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 169
    .local v2, "searchType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 170
    const-string/jumbo v3, "rawText"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "rawText":Ljava/lang/String;
    const-string/jumbo v3, "Business_ListeningComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rawText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningComplete(ILjava/lang/String;)V

    .line 177
    .end local v0    # "errorCode":I
    .end local v1    # "rawText":Ljava/lang/String;
    .end local v2    # "searchType":I
    :goto_0
    return-void

    .line 176
    :cond_0
    const v3, 0x186a4

    const-string/jumbo v4, ""

    invoke-direct {p0, v3, v4}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v10

    .line 71
    :cond_1
    const-string/jumbo v6, "Business_ListeningComponents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onExec action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string/jumbo v6, "listeningStart"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->startListening()V

    goto :goto_0

    .line 76
    :cond_2
    const-string/jumbo v6, "startListeningWithoutUI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 78
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v6

    invoke-virtual {v6}, Lhl;->c()Z

    move-result v6

    if-nez v6, :cond_3

    .line 79
    const v6, 0x186a5

    invoke-direct {p0, v6}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningWithoutUIErrorResult(I)V

    goto :goto_0

    .line 84
    :cond_3
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v6

    invoke-virtual {v6}, Lbbp;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 85
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "\u5f55\u97f3\u5668\u88ab\u5360\u7528,\u8bf7\u5173\u95ed\u8bed\u97f3\u5524\u9192\u529f\u80fd\u540e\u91cd\u8bd5"

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 86
    const v6, 0x186aa

    invoke-direct {p0, v6}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningWithoutUIErrorResult(I)V

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 91
    .local v5, "object":Lorg/json/JSONObject;
    const-string/jumbo v6, "saveAudio"

    invoke-virtual {v5, v6, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 92
    .local v4, "isNeedSaveAudio":Z
    const-string/jumbo v6, "engine"

    const-string/jumbo v7, "CN"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "engine":Ljava/lang/String;
    const-string/jumbo v6, "Business_ListeningComponents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get isNeedSaveAudio  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string/jumbo v6, "Business_ListeningComponents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get engine type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lpf;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 98
    const v6, 0x186a6

    invoke-direct {p0, v6}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningWithoutUIErrorResult(I)V

    .line 100
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->requestRecordPermissAndStart()V

    goto/16 :goto_0

    .line 104
    :cond_5
    invoke-direct {p0, v4, v3}, Lcom/iflytek/framework/business/components/ListeningComponents;->startListeningWithoutUI(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 107
    .end local v3    # "engine":Ljava/lang/String;
    .end local v4    # "isNeedSaveAudio":Z
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_6
    const-string/jumbo v6, "stopListeningWithoutUI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 108
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->stopListeningWithoutUI()V

    goto/16 :goto_0

    .line 109
    :cond_7
    const-string/jumbo v6, "cancelListeningWithoutUI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 110
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->reset()V

    goto/16 :goto_0

    .line 111
    :cond_8
    const-string/jumbo v6, "onListeningWithoutUI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 113
    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 114
    .restart local v5    # "object":Lorg/json/JSONObject;
    const-string/jumbo v6, "callbackId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "callbackId":Ljava/lang/String;
    const-string/jumbo v6, "Business_ListeningComponents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "LISTENING_WITHOUT_UI_CALLBACK callbackId  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 118
    const-string/jumbo v6, "onListeningWithoutUI"

    invoke-virtual {p0, v6, v2}, Lcom/iflytek/framework/business/components/ListeningComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    .end local v2    # "callbackId":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_9
    const-string/jumbo v6, "startUploadAudio"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 124
    .restart local v5    # "object":Lorg/json/JSONObject;
    const-string/jumbo v6, "localId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, "audioId":I
    const-string/jumbo v6, "appId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v6, "Business_ListeningComponents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get audioId  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string/jumbo v6, "Business_ListeningComponents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get appId  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v6, "callbackId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2    # "callbackId":Ljava/lang/String;
    const-string/jumbo v6, "Business_ListeningComponents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get callbackId  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 132
    const-string/jumbo v6, "startUploadAudio"

    invoke-virtual {p0, v6, v2}, Lcom/iflytek/framework/business/components/ListeningComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_a
    invoke-virtual {p0, v1, v0}, Lcom/iflytek/framework/business/components/ListeningComponents;->uploadAudio(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 145
    iput-object p2, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .line 146
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    const-string/jumbo v0, "Business_ListeningComponents"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    invoke-virtual {v0}, Lanl;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    const-string/jumbo v0, "Business_ListeningComponents"

    const-string/jumbo v1, "------------>> finish enterCancelState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    invoke-virtual {v0}, Lanl;->stop()V

    .line 428
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    invoke-virtual {v0}, Lanl;->release()V

    .line 429
    iput-object v2, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mListeningManager:Lanl;

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mAudioUploadManager:Lazd;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mAudioUploadManager:Lazd;

    invoke-virtual {v0}, Lazd;->a()V

    .line 437
    iput-object v2, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mAudioUploadManager:Lazd;

    .line 439
    :cond_0
    iput-object v2, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mResultPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    .line 440
    iput-object v2, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mSpeechIntent:Landroid/content/Intent;

    .line 442
    invoke-static {v2}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 443
    return-void

    .line 431
    :cond_1
    const-string/jumbo v0, "Business_ListeningComponents"

    const-string/jumbo v1, "------------>> finish()2 MODE_IDLE"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateUIAfterResult()V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 2

    .prologue
    .line 394
    const-string/jumbo v0, "Business_ListeningComponents"

    const-string/jumbo v1, "updateUIInCancelState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 3
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    .line 399
    const-string/jumbo v0, "Business_ListeningComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInErrorState errId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const v0, 0xc3501

    if-ne p3, v0, :cond_0

    .line 402
    const p3, 0x186a9

    .line 404
    :cond_0
    invoke-direct {p0, p3}, Lcom/iflytek/framework/business/components/ListeningComponents;->onListeningWithoutUIErrorResult(I)V

    .line 405
    return-void
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    const-string/jumbo v0, "Business_ListeningComponents"

    const-string/jumbo v1, "updateUIInInitState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 2

    .prologue
    .line 296
    const-string/jumbo v0, "Business_ListeningComponents"

    const-string/jumbo v1, "updateUIInRecodingState "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 291
    const-string/jumbo v0, "Business_ListeningComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInRecodingState | volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public updateUIInSNState()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 2

    .prologue
    .line 301
    const-string/jumbo v0, "Business_ListeningComponents"

    const-string/jumbo v1, "updateUIInWaitingResultState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public uploadAudio(ILjava/lang/String;)V
    .locals 5
    .param p1, "audioId"    # I
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    const v4, 0x30d43

    .line 533
    const-string/jumbo v2, "Business_ListeningComponents"

    const-string/jumbo v3, "uploadAudio"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ListeningComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 536
    const v2, 0x30d46

    const-string/jumbo v3, ""

    invoke-direct {p0, v2, v3}, Lcom/iflytek/framework/business/components/ListeningComponents;->onUploadAudioResult(ILjava/lang/String;)V

    .line 558
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-static {}, Lank;->a()Lank;

    move-result-object v2

    invoke-virtual {v2, p1}, Lank;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "audioPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 542
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 544
    const-string/jumbo v2, "Business_ListeningComponents"

    const-string/jumbo v3, "uploadRecord, file exist"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v2, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mAudioUploadManager:Lazd;

    if-nez v2, :cond_1

    .line 546
    new-instance v2, Lazd;

    invoke-direct {v2}, Lazd;-><init>()V

    iput-object v2, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mAudioUploadManager:Lazd;

    .line 548
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mAudioUploadManager:Lazd;

    invoke-virtual {v2, p2}, Lazd;->a(Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mAudioUploadManager:Lazd;

    iget-object v3, p0, Lcom/iflytek/framework/business/components/ListeningComponents;->mUploadResultListener:Lazd$a;

    invoke-virtual {v2, v1, v3}, Lazd;->a(Ljava/io/File;Lazd$a;)V

    goto :goto_0

    .line 551
    :cond_2
    const-string/jumbo v2, "Business_ListeningComponents"

    const-string/jumbo v3, "uploadRecord, file not exist"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string/jumbo v2, ""

    invoke-direct {p0, v4, v2}, Lcom/iflytek/framework/business/components/ListeningComponents;->onUploadAudioResult(ILjava/lang/String;)V

    goto :goto_0

    .line 555
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    const-string/jumbo v2, ""

    invoke-direct {p0, v4, v2}, Lcom/iflytek/framework/business/components/ListeningComponents;->onUploadAudioResult(ILjava/lang/String;)V

    goto :goto_0
.end method
