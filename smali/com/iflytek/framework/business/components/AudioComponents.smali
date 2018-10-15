.class public Lcom/iflytek/framework/business/components/AudioComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "AudioComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_AudioComponents"


# instance fields
.field private final DEFAULT_ERROR_AUDIO_ID:I

.field private browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private mListener:Lul$a;

.field private mRecordManager:Lul;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->DEFAULT_ERROR_AUDIO_ID:I

    .line 84
    new-instance v0, Lcom/iflytek/framework/business/components/AudioComponents$1;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/components/AudioComponents$1;-><init>(Lcom/iflytek/framework/business/components/AudioComponents;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mListener:Lul$a;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/AudioComponents;II)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/AudioComponents;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/components/AudioComponents;->onRecordingResult(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/framework/business/components/AudioComponents;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/AudioComponents;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/AudioComponents;->onRecordingErrorResult(I)V

    return-void
.end method

.method private onRecordingErrorResult(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/framework/business/components/AudioComponents;->onRecordingResult(II)V

    .line 131
    return-void
.end method

.method private onRecordingResult(II)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "audioId"    # I

    .prologue
    .line 140
    const-string/jumbo v4, "onRecording"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/AudioComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "callbackID":Ljava/lang/String;
    const-string/jumbo v4, "Business_AudioComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRecordingResult callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string/jumbo v4, "Business_AudioComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string/jumbo v4, "Business_AudioComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "audioId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    if-eqz p2, :cond_1

    .line 154
    const-string/jumbo v4, "audioId"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_1
    :goto_1
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/framework/business/components/AudioComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "javascript:LXJSBridge.fireFromNative(\'"

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

    goto/16 :goto_0

    .line 156
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_AudioComponents"

    const-string/jumbo v5, "onListeningWithoutUIResult assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private requestRecordPermissAndStart()V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AudioComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iflytek/framework/business/components/AudioComponents$2;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/business/components/AudioComponents$2;-><init>(Lcom/iflytek/framework/business/components/AudioComponents;)V

    invoke-static {v0, v1}, Lpf;->a(Landroid/content/Context;Lpf$a;)V

    .line 182
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    invoke-virtual {v0}, Lul;->b()V

    .line 127
    :cond_0
    return-void
.end method

.method private startRecord()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lul;

    invoke-direct {v1}, Lul;-><init>()V

    iput-object v1, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    .line 100
    iget-object v1, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    iget-object v2, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mListener:Lul$a;

    invoke-virtual {v1, v2}, Lul;->a(Lul$a;)V

    .line 105
    :cond_0
    :try_start_0
    invoke-static {}, Lank;->a()Lank;

    move-result-object v1

    invoke-virtual {v1}, Lank;->d()V

    .line 106
    iget-object v1, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    invoke-virtual {v1}, Lul;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Business_AudioComponents"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const v1, 0x4baf2

    invoke-direct {p0, v1}, Lcom/iflytek/framework/business/components/AudioComponents;->onRecordingErrorResult(I)V

    goto :goto_0
.end method

.method private stopRecord()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    invoke-virtual {v0}, Lul;->b()V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const v0, 0x4baf4

    invoke-direct {p0, v0}, Lcom/iflytek/framework/business/components/AudioComponents;->onRecordingErrorResult(I)V

    goto :goto_0
.end method


# virtual methods
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
    const/4 v2, 0x0

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    new-instance v2, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v3, "Invalid action"

    const-string/jumbo v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-object v2

    .line 44
    :cond_1
    const-string/jumbo v3, "Business_AudioComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onExec action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " params = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v3, "onRecording"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 49
    .local v1, "object":Lorg/json/JSONObject;
    const-string/jumbo v3, "callbackId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "callbackId":Ljava/lang/String;
    const-string/jumbo v3, "Business_AudioComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AUDIO_RECORDING_CALLBACK callbackId  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    const-string/jumbo v3, "onRecording"

    invoke-virtual {p0, v3, v0}, Lcom/iflytek/framework/business/components/AudioComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v1    # "object":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v3, "startRecord"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 57
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v3

    invoke-virtual {v3}, Lbbp;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    const v3, 0x4baf5

    invoke-direct {p0, v3}, Lcom/iflytek/framework/business/components/AudioComponents;->onRecordingErrorResult(I)V

    goto/16 :goto_0

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AudioComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lpf;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 64
    const v3, 0x4baf1

    invoke-direct {p0, v3}, Lcom/iflytek/framework/business/components/AudioComponents;->onRecordingErrorResult(I)V

    .line 66
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AudioComponents;->requestRecordPermissAndStart()V

    goto/16 :goto_0

    .line 69
    :cond_4
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AudioComponents;->startRecord()V

    goto/16 :goto_0

    .line 71
    :cond_5
    const-string/jumbo v3, "stopRecord"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AudioComponents;->stopRecord()V

    goto/16 :goto_0
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 80
    iput-object p2, p0, Lcom/iflytek/framework/business/components/AudioComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .line 81
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    .line 186
    const-string/jumbo v0, "Business_AudioComponents"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    invoke-virtual {v0}, Lul;->b()V

    .line 191
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    invoke-virtual {v0}, Lul;->e()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/AudioComponents;->mRecordManager:Lul;

    .line 194
    :cond_0
    return-void
.end method
