.class public final Lcom/iflytek/framework/business/components/RecognizeComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "RecognizeComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_RecognizeComponents"


# instance fields
.field private mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method

.method private isRecoginzing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 87
    :cond_0
    return v0
.end method


# virtual methods
.method public cancelRecognize()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 94
    :cond_0
    return-void
.end method

.method public isRecognize()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 124
    return-void
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    const-string/jumbo v4, "Business_RecognizeComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onExec action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " params = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v4, "startRecognize"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 39
    :cond_1
    const-string/jumbo v4, "stopRecognize"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/RecognizeComponents;->stopRecognize()V

    goto :goto_0

    .line 41
    :cond_2
    const-string/jumbo v4, "setRecognizeParams"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    const-string/jumbo v4, "cancelRecognize"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 45
    const-string/jumbo v4, "startTextSearch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 46
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "focus":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "content":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    const-string/jumbo v2, "all"

    .line 51
    :cond_3
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v4

    invoke-virtual {v4, v1}, Lahp;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "focus":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "isRecognize"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/RecognizeComponents;->isRecoginzing()Z

    move-result v3

    .line 54
    .local v3, "isRecoginzing":Z
    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    invoke-direct {v0, v4, v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    .line 55
    .local v0, "componentsResult":Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    goto :goto_1
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 63
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 64
    return-void
.end method

.method public onPartialResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "particalAsrResults":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "lastResults":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 120
    return-void
.end method

.method public startRecognize(Landroid/content/Intent;)V
    .locals 1
    .param p1, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0, p1}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    .line 81
    :cond_0
    return-void
.end method

.method public startTextSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "entry"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const-string/jumbo v0, "Business_RecognizeComponents"

    const-string/jumbo v1, "startTextSearch content is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/yd/speech/ISpeechHandler;->startTextSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecognize()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/iflytek/framework/business/components/RecognizeComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V

    .line 100
    :cond_0
    return-void
.end method
