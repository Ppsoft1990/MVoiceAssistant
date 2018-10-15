.class public final Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "TtsAdaptComponents.java"

# interfaces
.implements Lju;


# static fields
.field private static final TAG:Ljava/lang/String; = "TtsAdaptComponents"


# instance fields
.field private mOutParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceUtil:Lpp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method


# virtual methods
.method public isSpeaking()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    if-nez v0, :cond_0

    .line 181
    const-string/jumbo v0, "TtsAdaptComponents"

    const-string/jumbo v1, "serviceutil is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    invoke-virtual {v0, p0}, Lpp;->d(Lju;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    const-string/jumbo v4, "TtsAdaptComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onExec action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " param = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string/jumbo v4, "startSpeaking"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 46
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "ttsContent":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 48
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 88
    .end local v1    # "ttsContent":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 50
    .restart local v1    # "ttsContent":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 53
    .end local v1    # "ttsContent":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "stopSpeaking"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->stop()V

    goto :goto_0

    .line 55
    :cond_3
    const-string/jumbo v4, "pauseSpeaking"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->pause()V

    goto :goto_0

    .line 57
    :cond_4
    const-string/jumbo v4, "resumeSpeaking"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 58
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->resume()V

    goto :goto_0

    .line 59
    :cond_5
    const-string/jumbo v4, "setTtsParam"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 60
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v8, :cond_0

    .line 61
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    .line 64
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 67
    :cond_6
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    const-string/jumbo v5, "cloud_tts_engine_type"

    const-string/jumbo v6, "cloud"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    const-string/jumbo v5, "tts_engine_type"

    const-string/jumbo v6, "vivi21"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "voice_name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 73
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    const-string/jumbo v5, "role"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "speed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 75
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    const-string/jumbo v5, "speed"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 76
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "volume"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 77
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    const-string/jumbo v5, "volume"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 78
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "pitch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 79
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    const-string/jumbo v5, "pitch"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 80
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "stream_type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    const-string/jumbo v5, "stream"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 85
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, "isSpeaking"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->isSpeaking()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    new-instance v0, Lpp;

    invoke-direct {v0, p1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    .line 96
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mOutParams:Ljava/util/HashMap;

    .line 97
    return-void
.end method

.method public onInterruptedCallback()V
    .locals 5

    .prologue
    .line 217
    const-string/jumbo v2, "TtsAdaptComponents"

    const-string/jumbo v3, "onInterruptedCallback"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/16 v1, 0x4e31

    .line 220
    .local v1, "error":I
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v2

    const-string/jumbo v3, "onCompletedJs"

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {p0, v3, v4}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TtsAdaptComponents"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPlayBeginCallBack()V
    .locals 3

    .prologue
    .line 195
    const-string/jumbo v0, "TtsAdaptComponents"

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    const-string/jumbo v1, "onSpeakBeginJs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 204
    const-string/jumbo v1, "TtsAdaptComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPlayCompletedCallBack error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v1

    const-string/jumbo v2, "onCompletedJs"

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TtsAdaptComponents"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 3

    .prologue
    .line 231
    const-string/jumbo v0, "TtsAdaptComponents"

    const-string/jumbo v1, "onPlayPauseCallBack"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    const-string/jumbo v1, "onSpeakPausedJs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 3

    .prologue
    .line 240
    const-string/jumbo v0, "TtsAdaptComponents"

    const-string/jumbo v1, "onPlayResumeCallBack"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    const-string/jumbo v1, "onSpeakResumedJs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 190
    const-string/jumbo v0, "TtsAdaptComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressCallBack pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 249
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v0, "TtsAdaptComponents"

    const-string/jumbo v1, "serviceutil is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    invoke-virtual {v0, p0}, Lpp;->a(Lju;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    if-nez v0, :cond_0

    .line 163
    const-string/jumbo v0, "TtsAdaptComponents"

    const-string/jumbo v1, "serviceutil is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    invoke-virtual {v0, p0}, Lpp;->b(Lju;)V

    goto :goto_0
.end method

.method public speak(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 13
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    if-nez v10, :cond_1

    .line 107
    :cond_0
    const-string/jumbo v10, "TtsAdaptComponents"

    const-string/jumbo v11, "speak content is empty"

    invoke-static {v10, v11}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    .line 113
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "bundle":Landroid/os/Bundle;
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_1
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v10

    invoke-virtual {v10, v1}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 116
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :try_start_2
    const-string/jumbo v10, "tts_engine_type"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    .local v3, "enginType":Ljava/lang/String;
    const-string/jumbo v10, "cloud_tts_engine_type"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 118
    .local v9, "webEngin":Ljava/lang/String;
    const-string/jumbo v10, "role"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 119
    .local v5, "role":Ljava/lang/String;
    const-string/jumbo v10, "speed"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    .local v6, "speed":Ljava/lang/String;
    const-string/jumbo v10, "pitch"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 121
    .local v4, "pitch":Ljava/lang/String;
    const-string/jumbo v10, "volume"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 122
    .local v8, "volume":Ljava/lang/String;
    const-string/jumbo v10, "stream"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 123
    .local v7, "streamType":Ljava/lang/String;
    const-string/jumbo v10, "tts_engine_type"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v10, "role"

    invoke-virtual {v0, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v10, "cloud_tts_engine_type"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz v6, :cond_2

    .line 127
    const-string/jumbo v10, "speed"

    invoke-static {v6}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    :cond_2
    if-eqz v4, :cond_3

    .line 130
    const-string/jumbo v10, "pitch"

    invoke-static {v4}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    :cond_3
    if-eqz v8, :cond_4

    .line 133
    const-string/jumbo v10, "volume"

    invoke-static {v8}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    :cond_4
    if-eqz v7, :cond_5

    .line 136
    const-string/jumbo v10, "stream"

    invoke-static {v7}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    :cond_5
    const-string/jumbo v10, "TtsAdaptComponents"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ttsSpeak speed ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " volume ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " streamType ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " pitch ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " role ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " enginType ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v3    # "enginType":Ljava/lang/String;
    .end local v4    # "pitch":Ljava/lang/String;
    .end local v5    # "role":Ljava/lang/String;
    .end local v6    # "speed":Ljava/lang/String;
    .end local v7    # "streamType":Ljava/lang/String;
    .end local v8    # "volume":Ljava/lang/String;
    .end local v9    # "webEngin":Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    invoke-virtual {v10, p1, v0, p0}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v10, "TtsAdaptComponents"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 143
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v10

    invoke-virtual {v10, v0}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_1

    .line 147
    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_2
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    if-nez v0, :cond_0

    .line 154
    const-string/jumbo v0, "TtsAdaptComponents"

    const-string/jumbo v1, "serviceutil is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/outer/TtsAdaptComponents;->mServiceUtil:Lpp;

    invoke-virtual {v0, p0}, Lpp;->c(Lju;)V

    goto :goto_0
.end method
