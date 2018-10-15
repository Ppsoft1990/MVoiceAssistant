.class public final Lcom/iflytek/framework/business/components/SynthesizeComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "SynthesizeComponents.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;
    }
.end annotation


# static fields
.field private static final MSG_START_PLAY:I = 0x64

.field private static final MSG_STOP_PLAY:I = 0x65

.field private static final TAG:Ljava/lang/String; = "Business_TtsComponents"


# instance fields
.field private mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

.field private mInnerParams:Ljava/util/HashMap;
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

.field private mSpeechHandler:Layd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method


# virtual methods
.method public isSpeaking()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    if-nez v0, :cond_0

    .line 246
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "serviceutil is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    invoke-virtual {v0, p0}, Lpp;->d(Lju;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 17
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    const-string/jumbo v14, "Business_TtsComponents"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onExec action = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " params = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string/jumbo v14, "ttsSpeak"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 83
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "ttsContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 146
    .end local v7    # "ttsContent":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 87
    .restart local v7    # "ttsContent":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->speak(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 89
    .end local v7    # "ttsContent":Ljava/lang/String;
    :cond_2
    const-string/jumbo v14, "ttsStop"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->stop()V

    goto :goto_0

    .line 91
    :cond_3
    const-string/jumbo v14, "ttsPause"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->pause()V

    goto :goto_0

    .line 93
    :cond_4
    const-string/jumbo v14, "ttsResume"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->resume()V

    goto :goto_0

    .line 95
    :cond_5
    const-string/jumbo v14, "isTtsListening"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->isSpeaking()Z

    move-result v3

    .line 97
    .local v3, "isSpeaking":Z
    new-instance v1, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v14, "OK"

    invoke-direct {v1, v14, v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    .line 98
    .local v1, "componentsResult":Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    goto :goto_1

    .line 99
    .end local v1    # "componentsResult":Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .end local v3    # "isSpeaking":Z
    :cond_6
    const-string/jumbo v14, "setTtsParams"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    if-eqz v14, :cond_7

    .line 101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 103
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 104
    .local v5, "object":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 105
    const-string/jumbo v14, "role"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, "ttsRole":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    const-string/jumbo v15, "role"

    invoke-virtual {v14, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_8
    const-string/jumbo v14, "tts_engine_type"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "ttsEngine":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    const-string/jumbo v15, "tts_engine_type"

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_9
    const-string/jumbo v14, "cloud_tts_engine_type"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "ttsCloudEngine":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    const-string/jumbo v15, "cloud_tts_engine_type"

    invoke-virtual {v14, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_a
    const-string/jumbo v14, "pitch"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "ttsPitch":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    const-string/jumbo v15, "pitch"

    invoke-virtual {v14, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_b
    const-string/jumbo v14, "speed"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 122
    .local v11, "ttsSpeed":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    const-string/jumbo v15, "speed"

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_c
    const-string/jumbo v14, "volume"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 126
    .local v13, "ttsVolume":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    const-string/jumbo v15, "volume"

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_d
    const-string/jumbo v14, "stream"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 130
    .local v12, "ttsStream":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    const-string/jumbo v15, "stream"

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 134
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "ttsCloudEngine":Ljava/lang/String;
    .end local v8    # "ttsEngine":Ljava/lang/String;
    .end local v9    # "ttsPitch":Ljava/lang/String;
    .end local v10    # "ttsRole":Ljava/lang/String;
    .end local v11    # "ttsSpeed":Ljava/lang/String;
    .end local v12    # "ttsStream":Ljava/lang/String;
    .end local v13    # "ttsVolume":Ljava/lang/String;
    :cond_e
    const-string/jumbo v14, "ttsSpeakMultiLan"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 135
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 137
    .restart local v5    # "object":Lorg/json/JSONObject;
    const-string/jumbo v14, "content"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "content":Ljava/lang/String;
    const-string/jumbo v14, "language"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "language":Ljava/lang/String;
    const-string/jumbo v14, "Business_TtsComponents"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "get content  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->startSpeakMultiLanguage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_f
    const-string/jumbo v14, "stopTts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->stop()V

    .line 143
    const v14, 0xd9492

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->onPlayCompletedCallBack(I)V

    goto/16 :goto_0
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/iflytek/framework/business/components/AbsComponents;->onHandleMessage(Landroid/os/Message;)V

    .line 360
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 362
    :pswitch_0
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "MSG_START_PLAY"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    invoke-virtual {v0}, Lqh;->c()V

    goto :goto_0

    .line 373
    :pswitch_1
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "MSG_STOP_PLAY"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    invoke-virtual {v0}, Lqh;->d()V

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    new-instance v0, Lpp;

    invoke-direct {v0, p1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    .line 154
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mInnerParams:Ljava/util/HashMap;

    .line 155
    iput-object p2, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .line 159
    return-void
.end method

.method public onInterruptedCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "onInterruptedCallback"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    invoke-interface {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;->onTtsPlayInterrupt()V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    const-string/jumbo v1, "onTtsInterrupt"

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 322
    :cond_1
    const/16 v0, 0x65

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 323
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    invoke-interface {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;->onTtsPlayBegin()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    const-string/jumbo v1, "onTtsPlayBegin"

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 290
    :cond_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 295
    const-string/jumbo v1, "Business_TtsComponents"

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

    .line 296
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    invoke-interface {v1, p1}, Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;->onTtsPlayComplete(I)V

    .line 300
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    const-string/jumbo v2, "onTtsPlayComplete"

    .line 302
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 305
    :cond_1
    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->sendHandlerMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Business_TtsComponents"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPlayPauseCallBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "onPlayPauseCallBack"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    invoke-interface {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;->onTtsPlayPause()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    const-string/jumbo v1, "onTtsPause"

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 336
    :cond_1
    const/16 v0, 0x65

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 337
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "onPlayResumeCallBack"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    invoke-interface {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;->onTtsPlayResume()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    const-string/jumbo v1, "onTtsResume"

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 350
    :cond_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 351
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 264
    const-string/jumbo v1, "Business_TtsComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProgressCallBack pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    invoke-interface {v1, p1}, Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;->onTtsPlayProgress(I)V

    .line 269
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    const-string/jumbo v2, "onTtsPlayProcess"

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_1
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Business_TtsComponents"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mSpeechHandler:Layd;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mSpeechHandler:Layd;

    invoke-virtual {v0, p0}, Layd;->b(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mSpeechHandler:Layd;

    invoke-virtual {v0, p0}, Layd;->a(Lju;)V

    .line 413
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mSpeechHandler:Layd;

    .line 415
    :cond_1
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 355
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    if-nez v0, :cond_0

    .line 237
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "serviceutil is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    invoke-virtual {v0, p0}, Lpp;->a(Lju;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    if-nez v0, :cond_0

    .line 228
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "serviceutil is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    invoke-virtual {v0, p0}, Lpp;->b(Lju;)V

    goto :goto_0
.end method

.method public setComponentListener(Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mComponentListener:Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;

    .line 163
    return-void
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
    .line 171
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    if-nez v10, :cond_1

    .line 172
    :cond_0
    const-string/jumbo v10, "Business_TtsComponents"

    const-string/jumbo v11, "speak content is empty"

    invoke-static {v10, v11}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x0

    .line 178
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 179
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "bundle":Landroid/os/Bundle;
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_1
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v10

    invoke-virtual {v10, v1}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 181
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :try_start_2
    const-string/jumbo v10, "tts_engine_type"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 182
    .local v3, "enginType":Ljava/lang/String;
    const-string/jumbo v10, "cloud_tts_engine_type"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 183
    .local v9, "webEngin":Ljava/lang/String;
    const-string/jumbo v10, "role"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 184
    .local v5, "role":Ljava/lang/String;
    const-string/jumbo v10, "speed"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 185
    .local v6, "speed":Ljava/lang/String;
    const-string/jumbo v10, "pitch"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 186
    .local v4, "pitch":Ljava/lang/String;
    const-string/jumbo v10, "volume"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 187
    .local v8, "volume":Ljava/lang/String;
    const-string/jumbo v10, "stream"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 188
    .local v7, "streamType":Ljava/lang/String;
    const-string/jumbo v10, "tts_engine_type"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v10, "role"

    invoke-virtual {v0, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v10, "cloud_tts_engine_type"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    if-eqz v6, :cond_2

    .line 192
    const-string/jumbo v10, "speed"

    invoke-static {v6}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    :cond_2
    if-eqz v4, :cond_3

    .line 195
    const-string/jumbo v10, "pitch"

    invoke-static {v4}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    :cond_3
    if-eqz v8, :cond_4

    .line 198
    const-string/jumbo v10, "volume"

    invoke-static {v8}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    :cond_4
    if-eqz v7, :cond_5

    .line 201
    const-string/jumbo v10, "stream"

    invoke-static {v7}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    :cond_5
    const-string/jumbo v10, "Business_TtsComponents"

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

    .line 211
    .end local v3    # "enginType":Ljava/lang/String;
    .end local v4    # "pitch":Ljava/lang/String;
    .end local v5    # "role":Ljava/lang/String;
    .end local v6    # "speed":Ljava/lang/String;
    .end local v7    # "streamType":Ljava/lang/String;
    .end local v8    # "volume":Ljava/lang/String;
    .end local v9    # "webEngin":Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    invoke-virtual {v10, p1, v0, p0}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v10, "Business_TtsComponents"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 208
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

    .line 212
    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_2
.end method

.method public startSpeakMultiLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0127

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    const v0, 0xd9491

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->onPlayCompletedCallBack(I)V

    .line 405
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    const v0, 0xd9490

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->onPlayCompletedCallBack(I)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mSpeechHandler:Layd;

    if-nez v0, :cond_2

    .line 401
    new-instance v0, Layd;

    invoke-direct {v0}, Layd;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mSpeechHandler:Layd;

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mSpeechHandler:Layd;

    invoke-virtual {v0, p1, p2, p0}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Lju;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    if-nez v0, :cond_0

    .line 219
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "serviceutil is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    invoke-virtual {v0, p0}, Lpp;->c(Lju;)V

    goto :goto_0
.end method

.method public stopAll()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    if-nez v0, :cond_0

    .line 255
    const-string/jumbo v0, "Business_TtsComponents"

    const-string/jumbo v1, "serviceutil is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/SynthesizeComponents;->mServiceUtil:Lpp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    goto :goto_0
.end method
