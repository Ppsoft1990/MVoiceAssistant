.class public abstract Ladr;
.super Ljava/lang/Object;
.source "AbsResultHandler.java"


# instance fields
.field protected a:Lcom/iflytek/yd/speech/RecognizeFilter;

.field protected b:Lcom/iflytek/yd/speech/FilterResult;

.field protected c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ladr$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ladr$6;-><init>(Ladr;Landroid/os/Looper;)V

    iput-object v0, p0, Ladr;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/iflytek/yd/speech/FilterResult;)Ljava/lang/String;
    .locals 2
    .param p1, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 133
    const-string/jumbo v0, ""

    .line 134
    .local v0, "tip":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/FilterResult;->getTip()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/FilterResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "AbsResultHandler"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Ladr;->b()Lcom/iflytek/yd/speech/RecognizeFilter;

    move-result-object v0

    iput-object v0, p0, Ladr;->a:Lcom/iflytek/yd/speech/RecognizeFilter;

    .line 66
    return-void
.end method

.method protected a(Laee;)V
    .locals 4
    .param p1, "message"    # Laee;

    .prologue
    .line 216
    iget-object v0, p0, Ladr;->c:Landroid/os/Handler;

    new-instance v1, Ladr$3;

    invoke-direct {v1, p0, p1}, Ladr$3;-><init>(Ladr;Laee;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    return-void
.end method

.method protected a(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 50
    const-string/jumbo v0, "AbsResultHandler"

    const-string/jumbo v1, "handleResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Ladr;->a()V

    .line 56
    invoke-virtual {p0, p1}, Ladr;->b(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 59
    iget-object v0, p0, Ladr;->b:Lcom/iflytek/yd/speech/FilterResult;

    invoke-virtual {p0, p1, v0}, Ladr;->b(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 60
    return-void
.end method

.method protected a(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 0
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "mFilterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 77
    return-void
.end method

.method protected a(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "time"    # J

    .prologue
    .line 318
    iget-object v0, p0, Ladr;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 171
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "mRawText"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Laef;

    invoke-direct {v0, p1}, Laef;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "commonMessage":Laef;
    new-instance v1, Ladr$4;

    invoke-direct {v1, p0, p2}, Ladr$4;-><init>(Ladr;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Laef;->a(Ljava/lang/Runnable;)V

    .line 249
    iget-object v1, p0, Ladr;->c:Landroid/os/Handler;

    new-instance v2, Ladr$5;

    invoke-direct {v2, p0, v0}, Ladr$5;-><init>(Ladr;Laef;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "answerText"    # Ljava/lang/String;
    .param p2, "audioUrl"    # Ljava/lang/String;
    .param p3, "isNeedBroadcast"    # Z

    .prologue
    .line 193
    new-instance v0, Laec;

    invoke-direct {v0, p1}, Laec;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "chatLeftMessage":Laec;
    iput-object p2, v0, Laec;->d:Ljava/lang/String;

    .line 195
    iput-boolean p3, v0, Laec;->b:Z

    .line 196
    iget-object v1, p0, Ladr;->c:Landroid/os/Handler;

    new-instance v2, Ladr$2;

    invoke-direct {v2, p0, v0}, Ladr$2;-><init>(Ladr;Laec;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "tip"    # Ljava/lang/String;
    .param p2, "isTextSearchResult"    # Z

    .prologue
    .line 144
    const-string/jumbo v0, "AbsResultHandler"

    const-string/jumbo v1, "------------------>> showNoResult()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Ladr;->b(Ljava/lang/String;Z)V

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "mTextSearchMode"    # Z
    .param p2, "speechText"    # Ljava/lang/String;
    .param p3, "rawText"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "isVoiceResult"    # Z

    .prologue
    .line 298
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    invoke-direct {v0}, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;-><init>()V

    .line 299
    .local v0, "webInfo":Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
    iput-boolean p1, v0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mTextSearchMode:Z

    .line 300
    iput-object p2, v0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mSpeechText:Ljava/lang/String;

    .line 301
    iput-object p3, v0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mRawText:Ljava/lang/String;

    .line 302
    iput-object p4, v0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    .line 303
    iput-boolean p5, v0, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mIsVoiceResult:Z

    .line 304
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqh;->a(Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V

    .line 305
    return-void
.end method

.method protected abstract b()Lcom/iflytek/yd/speech/RecognizeFilter;
.end method

.method protected b(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 69
    const-string/jumbo v0, "AbsResultHandler"

    const-string/jumbo v1, "filterBusinessResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Ladr;->a:Lcom/iflytek/yd/speech/RecognizeFilter;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/RecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v0

    iput-object v0, p0, Ladr;->b:Lcom/iflytek/yd/speech/FilterResult;

    .line 72
    iget-object v0, p0, Ladr;->b:Lcom/iflytek/yd/speech/FilterResult;

    invoke-virtual {p0, p1, v0}, Ladr;->a(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 73
    return-void
.end method

.method protected b(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 10
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    const/4 v2, 0x1

    const v9, 0x7f0c0086

    const/4 v6, 0x0

    .line 80
    const-string/jumbo v7, "AbsResultHandler"

    const-string/jumbo v8, "handleResult"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 83
    iget-object v1, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 86
    .local v1, "focus":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getFocus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v7, "success"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getRawText()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "rawText":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Ladr;->c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 124
    .end local v1    # "focus":Ljava/lang/String;
    .end local v3    # "rawText":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v1    # "focus":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, p2}, Ladr;->d(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v7

    if-ne v7, v2, :cond_3

    .line 106
    .local v2, "isTextSearchResult":Z
    :goto_1
    invoke-virtual {p0, p2}, Ladr;->a(Lcom/iflytek/yd/speech/FilterResult;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "tip":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "errorCode":Ljava/lang/String;
    const-string/jumbo v6, "AbsResultHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "------------------>> errorCode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    .end local v0    # "errorCode":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v5, v2}, Ladr;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v2    # "isTextSearchResult":Z
    .end local v5    # "tip":Ljava/lang/String;
    :cond_3
    move v2, v6

    .line 104
    goto :goto_1

    .line 119
    .end local v4    # "status":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Ladr;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 122
    .end local v1    # "focus":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Ladr;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method protected b(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "answerText"    # Ljava/lang/String;
    .param p2, "isNeedBroadcast"    # Z

    .prologue
    .line 177
    new-instance v0, Laec;

    invoke-direct {v0, p1}, Laec;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "chatLeftMessage":Laec;
    iput-object p1, v0, Laec;->c:Ljava/lang/String;

    .line 179
    iput-boolean p2, v0, Laec;->b:Z

    .line 180
    iget-object v1, p0, Ladr;->c:Landroid/os/Handler;

    new-instance v2, Ladr$1;

    invoke-direct {v2, p0, v0}, Ladr$1;-><init>(Ladr;Laec;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    return-void
.end method

.method public c(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 3
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-string/jumbo v1, "AbsResultHandler"

    const-string/jumbo v2, "handleSpeechResult asrResult is null"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Ladr;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 283
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Ladr;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected c(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 2
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 153
    const-string/jumbo v0, "AbsResultHandler"

    const-string/jumbo v1, "------------------>> onSuccess()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method protected d(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 2
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 162
    const-string/jumbo v0, "AbsResultHandler"

    const-string/jumbo v1, "------------------>> onFail()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    return v0
.end method
