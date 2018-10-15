.class public Lanl;
.super Ljava/lang/Object;
.source "ListeningManager.java"

# interfaces
.implements Lcom/iflytek/yd/speech/ISpeechHandler;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Lpp;

.field private h:Landroid/content/Context;

.field private i:Z

.field private j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

.field private k:I

.field private l:Z

.field private m:Landroid/content/Intent;

.field private n:Ljt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "ListeningManager"

    iput-object v0, p0, Lanl;->a:Ljava/lang/String;

    .line 28
    iput v1, p0, Lanl;->b:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lanl;->c:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lanl;->d:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lanl;->e:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lanl;->f:I

    .line 43
    iput-boolean v1, p0, Lanl;->i:Z

    .line 47
    iput v1, p0, Lanl;->k:I

    .line 66
    new-instance v0, Lanl$1;

    invoke-direct {v0, p0}, Lanl$1;-><init>(Lanl;)V

    iput-object v0, p0, Lanl;->n:Ljt;

    .line 61
    iput-object p1, p0, Lanl;->h:Landroid/content/Context;

    .line 62
    new-instance v0, Lpp;

    iget-object v1, p0, Lanl;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lanl;->g:Lpp;

    .line 63
    return-void
.end method

.method static synthetic a(Lanl;I)I
    .locals 0
    .param p0, "x0"    # Lanl;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lanl;->k:I

    return p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 249
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "startRecoRefer "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v0, p0, Lanl;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 251
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "iat status not init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lanl;->k:I

    .line 255
    iget-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInSNState()V

    .line 259
    :cond_1
    invoke-direct {p0}, Lanl;->b()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 185
    const-string/jumbo v2, "ListeningManager"

    const-string/jumbo v3, "handleError------------------- "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {p1}, Lcom/iflytek/framework/business/speech/ErrorCode;->parseSpeechError(I)Lcom/iflytek/framework/business/speech/ErrorCode;

    move-result-object v1

    .line 188
    .local v1, "errorCode":Lcom/iflytek/framework/business/speech/ErrorCode;
    invoke-virtual {v1}, Lcom/iflytek/framework/business/speech/ErrorCode;->getDetailId()I

    move-result v0

    .line 190
    .local v0, "detailId":I
    iget v2, p0, Lanl;->k:I

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lanl;->stop()V

    .line 192
    const/4 v2, 0x0

    iput v2, p0, Lanl;->k:I

    .line 194
    :cond_0
    iget-object v2, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/speech/ErrorCode;->getResId()I

    move-result v3

    invoke-interface {v2, v3, v0, p1}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInErrorState(III)V

    .line 197
    :cond_1
    return-void
.end method

.method static synthetic a(Lanl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lanl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lanl;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
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
    .line 200
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const-string/jumbo v3, "ListeningManager"

    const-string/jumbo v4, "handleResult"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 201
    check-cast v1, Ljava/util/ArrayList;

    .line 203
    .local v1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v2, 0x0

    .line 204
    .local v2, "results":[Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v3, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v3, :cond_1

    .line 205
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 206
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 208
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/speech/ViaAsrResult;

    aput-object v3, v2, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v3, v2}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 212
    iget-object v3, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v3}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIAfterResult()V

    .line 214
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lanl;->k:I

    .line 215
    return-void
.end method

.method static synthetic a(Lanl;)Z
    .locals 1
    .param p0, "x0"    # Lanl;

    .prologue
    .line 25
    iget-boolean v0, p0, Lanl;->i:Z

    return v0
.end method

.method static synthetic a(Lanl;Z)Z
    .locals 0
    .param p0, "x0"    # Lanl;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lanl;->l:Z

    return p1
.end method

.method static synthetic b(Lanl;)Lcom/iflytek/yd/speech/SpeechHandlerCallback;
    .locals 1
    .param p0, "x0"    # Lanl;

    .prologue
    .line 25
    iget-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 266
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "initRecognize "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v0, p0, Lanl;->k:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 268
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "speech mode is not right "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lanl;->h:Landroid/content/Context;

    invoke-static {v0}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    invoke-virtual {v0}, Lig;->acquireDelayWakeLock()V

    .line 274
    iget-object v0, p0, Lanl;->g:Lpp;

    iget-object v1, p0, Lanl;->m:Landroid/content/Intent;

    iget-object v2, p0, Lanl;->n:Ljt;

    invoke-virtual {v0, v1, v2}, Lpp;->a(Landroid/content/Intent;Ljt;)V

    goto :goto_0
.end method

.method static synthetic b(Lanl;I)V
    .locals 0
    .param p0, "x0"    # Lanl;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lanl;->a(I)V

    return-void
.end method

.method static synthetic b(Lanl;Z)Z
    .locals 0
    .param p0, "x0"    # Lanl;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lanl;->i:Z

    return p1
.end method

.method static synthetic c(Lanl;)Z
    .locals 1
    .param p0, "x0"    # Lanl;

    .prologue
    .line 25
    iget-boolean v0, p0, Lanl;->l:Z

    return v0
.end method

.method static synthetic d(Lanl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lanl;

    .prologue
    .line 25
    iget-object v0, p0, Lanl;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lanl;)I
    .locals 1
    .param p0, "x0"    # Lanl;

    .prologue
    .line 25
    iget v0, p0, Lanl;->k:I

    return v0
.end method

.method static synthetic f(Lanl;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lanl;

    .prologue
    .line 25
    iget-object v0, p0, Lanl;->m:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public cancelTextSearch()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public closeRecordFile()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public deleteRecordFile()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lanl;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportOffLine()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lanl;->g:Lpp;

    invoke-virtual {v0}, Lpp;->a()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .line 335
    iget-object v0, p0, Lanl;->g:Lpp;

    invoke-virtual {v0}, Lpp;->c()V

    .line 336
    return-void
.end method

.method public setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V
    .locals 0
    .param p1, "speechHandlerCallback"    # Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .prologue
    .line 220
    iput-object p1, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    .line 221
    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 225
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "start "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object p1, p0, Lanl;->m:Landroid/content/Intent;

    .line 228
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "enterInitState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v0, p0, Lanl;->k:I

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lanl;->stop()V

    .line 235
    :cond_0
    invoke-static {}, Lank;->a()Lank;

    move-result-object v0

    invoke-virtual {v0}, Lank;->c()V

    .line 237
    invoke-static {}, Lank;->a()Lank;

    move-result-object v0

    invoke-virtual {v0}, Lank;->b()V

    .line 239
    const/4 v0, 0x1

    iput v0, p0, Lanl;->k:I

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanl;->l:Z

    .line 241
    iget-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    iget-object v1, p0, Lanl;->m:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInInitState(Landroid/content/Intent;)V

    .line 245
    :cond_1
    invoke-direct {p0}, Lanl;->a()V

    .line 246
    return-void
.end method

.method public startTextSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # Ljava/lang/String;

    .prologue
    .line 315
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 297
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, " stop  abortRecognize "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lanl;->k:I

    .line 300
    invoke-static {}, Lank;->a()Lank;

    move-result-object v0

    invoke-virtual {v0}, Lank;->b()V

    .line 302
    iget-object v0, p0, Lanl;->g:Lpp;

    if-eqz v0, :cond_0

    .line 303
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "cancel Recognize"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lanl;->g:Lpp;

    iget-object v1, p0, Lanl;->n:Ljt;

    invoke-virtual {v0, v1}, Lpp;->c(Ljt;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInCancelState()V

    .line 310
    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 279
    const-string/jumbo v0, "ListeningManager"

    const-string/jumbo v1, "stopRecording "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget v0, p0, Lanl;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 281
    const/4 v0, 0x4

    iput v0, p0, Lanl;->k:I

    .line 282
    iget-object v0, p0, Lanl;->g:Lpp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanl;->g:Lpp;

    iget-object v1, p0, Lanl;->n:Ljt;

    .line 283
    invoke-virtual {v0, v1}, Lpp;->d(Ljt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lanl;->g:Lpp;

    iget-object v1, p0, Lanl;->n:Ljt;

    invoke-virtual {v0, v1}, Lpp;->a(Ljt;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lanl;->j:Lcom/iflytek/yd/speech/SpeechHandlerCallback;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/SpeechHandlerCallback;->updateUIInWaitingResultState()V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    const-string/jumbo v0, "ListeningManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIATStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanl;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
