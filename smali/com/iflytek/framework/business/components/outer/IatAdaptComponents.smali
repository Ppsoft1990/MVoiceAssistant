.class public final Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "IatAdaptComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IatAdaptComponents"


# instance fields
.field private mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelRecognize()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 65
    :cond_0
    return-void
.end method

.method public isRecognize()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 32
    const-string/jumbo v2, "IatAdaptComponents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onExec action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " param = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string/jumbo v2, "startListening"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 36
    :cond_1
    const-string/jumbo v2, "cancelIat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->cancelRecognize()V

    goto :goto_0

    .line 38
    :cond_2
    const-string/jumbo v2, "setIatParam"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 40
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "asr_sch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 49
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "stopListening"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->stopRecognize()V

    goto :goto_0
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 83
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 84
    return-void
.end method

.method public startRecognize(Landroid/content/Intent;)V
    .locals 1
    .param p1, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0, p1}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    .line 59
    :cond_0
    return-void
.end method

.method public stopRecognize()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/IatAdaptComponents;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V

    .line 71
    :cond_0
    return-void
.end method
