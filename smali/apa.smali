.class public Lapa;
.super Laov;
.source "MmsContentSpeechDialog.java"


# instance fields
.field private c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

.field private d:Lqu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laov$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pListener"    # Laov$a;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Laov;-><init>(Landroid/content/Context;Laov$a;)V

    .line 32
    new-instance v0, Lapa$1;

    invoke-direct {v0, p0}, Lapa$1;-><init>(Lapa;)V

    invoke-virtual {p0, v0}, Lapa;->a(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, Lapa$2;

    invoke-direct {v0, p0}, Lapa$2;-><init>(Lapa;)V

    invoke-virtual {p0, v0}, Lapa;->b(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lapa;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lapa;->b:Landroid/content/Context;

    const v1, 0x7f0c02fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapa;->a(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lapa;->b:Landroid/content/Context;

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapa;->a(Ljava/lang/String;)V

    .line 245
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/yd/speech/ISpeechHandler;)V
    .locals 0
    .param p1, "pSpeechHandler"    # Lcom/iflytek/yd/speech/ISpeechHandler;

    .prologue
    .line 61
    invoke-super {p0, p1}, Laov;->a(Lcom/iflytek/yd/speech/ISpeechHandler;)V

    .line 70
    return-void
.end method

.method public a(Lqu;)V
    .locals 0
    .param p1, "listener"    # Lqu;

    .prologue
    .line 52
    iput-object p1, p0, Lapa;->d:Lqu;

    .line 53
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lapa;->a:Lcom/iflytek/yd/speech/ISpeechHandler;

    iget-object v1, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 80
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "MmsContentSpeechDialog"

    const-string/jumbo v1, "cancel"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0}, Laov;->cancel()V

    .line 93
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "MmsContentSpeechDialog"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0}, Laov;->dismiss()V

    .line 86
    return-void
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 4
    .param p1, "results"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 159
    invoke-super {p0, p1}, Laov;->handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 161
    iget-object v2, p0, Lapa;->d:Lqu;

    if-eqz v2, :cond_1

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 164
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 165
    .local v0, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    iget-object v2, p0, Lapa;->d:Lqu;

    invoke-interface {v2, v1}, Lqu;->handleLastResult(Ljava/util/ArrayList;)V

    .line 178
    .end local v1    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    :cond_1
    invoke-virtual {p0}, Lapa;->dismiss()V

    .line 179
    return-void
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 4
    .param p1, "results"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 140
    invoke-super {p0, p1}, Laov;->handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 142
    iget-object v2, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v2, :cond_0

    .line 146
    :cond_0
    iget-object v2, p0, Lapa;->d:Lqu;

    if-eqz v2, :cond_2

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 149
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 150
    .local v0, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_1
    iget-object v2, p0, Lapa;->d:Lqu;

    invoke-interface {v2, v1}, Lqu;->handleParticalResult(Ljava/util/ArrayList;)V

    .line 155
    .end local v1    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    :cond_2
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Laov;->updateUIAfterResult()V

    .line 229
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lapa;->dismiss()V

    .line 232
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Laov;->updateUIInCancelState()V

    .line 185
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInCancelState()V

    .line 188
    :cond_0
    iget-object v0, p0, Lapa;->d:Lqu;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lapa;->d:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInCancelState()V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lapa;->dismiss()V

    .line 192
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 1
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Laov;->updateUIInErrorState(III)V

    .line 201
    const v0, 0xc3508

    if-ne v0, p3, :cond_1

    .line 202
    invoke-direct {p0}, Lapa;->g()V

    .line 209
    :goto_0
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lapa;->dismiss()V

    .line 214
    return-void

    .line 203
    :cond_1
    const v0, 0xc3504

    if-eq p3, v0, :cond_2

    const/16 v0, 0x2710

    if-le p3, v0, :cond_3

    const/16 v0, 0x4e20

    if-ge p3, v0, :cond_3

    .line 204
    :cond_2
    invoke-direct {p0}, Lapa;->h()V

    goto :goto_0

    .line 206
    :cond_3
    const-string/jumbo v0, "\u6ca1\u6709\u8bc6\u522b\u7ed3\u679c\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-direct {p0, v0}, Lapa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 1
    .param p1, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 97
    invoke-super {p0, p1}, Laov;->updateUIInInitState(Landroid/content/Intent;)V

    .line 99
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 102
    :cond_0
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Laov;->updateUIInRecodingState()V

    .line 117
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 121
    :cond_0
    iget-object v0, p0, Lapa;->d:Lqu;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lapa;->d:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInRecodingState()V

    .line 124
    :cond_1
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 106
    invoke-super {p0, p1}, Laov;->updateUIInRecodingState(I)V

    .line 108
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 111
    :cond_0
    return-void
.end method

.method public updateUIInSNState()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Laov;->updateUIInSNState()V

    .line 220
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 223
    :cond_0
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Laov;->updateUIInWaitingResultState()V

    .line 130
    iget-object v0, p0, Lapa;->c:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_0

    .line 133
    :cond_0
    iget-object v0, p0, Lapa;->d:Lqu;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lapa;->d:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInWaitingResultState()V

    .line 136
    :cond_1
    return-void
.end method
