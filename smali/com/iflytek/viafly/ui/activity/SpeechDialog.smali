.class public final Lcom/iflytek/viafly/ui/activity/SpeechDialog;
.super Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;
.source "SpeechDialog.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lqu;


# static fields
.field private static final REQUEST_CODE_ASK_MULTIPLE_PERMISSIONS:I = 0x65

.field public static final SPEECH_DIALOG_SHOW:Ljava/lang/String; = "com.iflytek.cmcc.SPEECH_DIALOG_SHOW"

.field private static final TAG:Ljava/lang/String; = "SpeechDialog"


# instance fields
.field private final DELAY_TIME:I

.field private final FINISH_DELAY_TIME:I

.field private final SPEECH_DIALOG_FRESH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mFreshDialog:Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;

.field private mFromWhere:I

.field private mIsStartFromTest:Z

.field private mLocalScene:Ljava/lang/String;

.field private volatile mPermissionRequesting:Z

.field private mPermissionToast:Lpe;

.field private mResultPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

.field private mScreenEventListener:Landroid/content/BroadcastReceiver;

.field private mSearchType:I

.field private mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

.field private mSpeechIntent:Landroid/content/Intent;

.field private mTitle:Ljava/lang/String;

.field private mWebScene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mIsStartFromTest:Z

    .line 92
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->DELAY_TIME:I

    .line 93
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->FINISH_DELAY_TIME:I

    .line 96
    const-string/jumbo v0, "speech_dialog_fresh"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->SPEECH_DIALOG_FRESH:Ljava/lang/String;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSearchType:I

    .line 99
    new-instance v0, Lcom/iflytek/viafly/ui/activity/SpeechDialog$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog$1;-><init>(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mScreenEventListener:Landroid/content/BroadcastReceiver;

    .line 381
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionRequesting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->delayStartSpeech()V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->checkPermissionAndStartRecord()V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)Lpe;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionToast:Lpe;

    return-object v0
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/ui/activity/SpeechDialog;Lpe;)Lpe;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;
    .param p1, "x1"    # Lpe;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionToast:Lpe;

    return-object p1
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->delayFinished()V

    return-void
.end method

.method static synthetic access$502(Lcom/iflytek/viafly/ui/activity/SpeechDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/activity/SpeechDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionRequesting:Z

    return p1
.end method

.method private checkPermissionAndStartRecord()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 389
    const-string/jumbo v1, "SpeechDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPermissionAndStartRecord | threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {}, Laza;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-static {}, Larc;->a()Larc;

    move-result-object v1

    invoke-virtual {v1}, Larc;->h()V

    .line 393
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    .line 423
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-static {p0}, Lpf;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->handleGranded()V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->setVisibility(I)V

    .line 419
    new-array v0, v6, [Ljava/lang/String;

    .line 420
    .local v0, "permissions":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    .line 421
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->requestPermissions([Ljava/lang/String;I)V

    .line 422
    iput-boolean v6, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionRequesting:Z

    goto :goto_0
.end method

.method private delayFinished()V
    .locals 4

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "delayFinished | it\'s finished"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    new-instance v1, Lcom/iflytek/viafly/ui/activity/SpeechDialog$5;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog$5;-><init>(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private delayStartSpeech()V
    .locals 4

    .prologue
    .line 363
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "delayStartSpeech"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "Plugin is loading. delayStartSpeech............"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    new-instance v1, Lcom/iflytek/viafly/ui/activity/SpeechDialog$3;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog$3;-><init>(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handleDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "handleDenied"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "handleDenied | it\'s finished"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    new-instance v1, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/SpeechDialog$4;-><init>(Lcom/iflytek/viafly/ui/activity/SpeechDialog;Ljava/util/List;Ljava/util/List;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handleGranded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "handleGranded"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "handleGranded | it\'s finished"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 433
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->setVisibility(I)V

    .line 436
    :cond_1
    invoke-static {}, Larc;->a()Larc;

    move-result-object v0

    invoke-virtual {v0}, Larc;->h()V

    .line 438
    const-string/jumbo v0, "SpeechDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleGranded | threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    .line 440
    iput-boolean v4, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionRequesting:Z

    goto :goto_0
.end method

.method private handleListeningResult(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 9
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v8, -0x1

    .line 572
    const-string/jumbo v5, "SpeechDialog"

    const-string/jumbo v6, "handleListeningSearch "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v2, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 576
    .local v0, "errorCode":I
    if-eqz p1, :cond_1

    .line 577
    new-instance v4, Lcom/iflytek/yd/speech/BaseRecognizeFilter;

    invoke-direct {v4}, Lcom/iflytek/yd/speech/BaseRecognizeFilter;-><init>()V

    .line 578
    .local v4, "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    invoke-virtual {v4, p1}, Lcom/iflytek/yd/speech/BaseRecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v1

    .line 580
    .local v1, "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    invoke-virtual {v1}, Lcom/iflytek/yd/speech/FilterResult;->getRawText()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "rawText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 582
    const-string/jumbo v5, "rawText"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string/jumbo v5, "SpeechDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleListeningSearch, rawText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v1    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    .end local v3    # "rawText":Ljava/lang/String;
    .end local v4    # "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    :goto_0
    const-string/jumbo v5, "errorCode"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string/jumbo v5, "SEARCH_TYPE"

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    iput v8, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSearchType:I

    .line 595
    invoke-virtual {p0, v8, v2}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->setResult(ILandroid/content/Intent;)V

    .line 596
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    .line 597
    return-void

    .line 585
    .restart local v1    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    .restart local v3    # "rawText":Ljava/lang/String;
    .restart local v4    # "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    :cond_0
    const v0, 0x186a1

    goto :goto_0

    .line 588
    .end local v1    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    .end local v3    # "rawText":Ljava/lang/String;
    .end local v4    # "recognizeFilter":Lcom/iflytek/yd/speech/BaseRecognizeFilter;
    :cond_1
    const v0, 0x186a2

    goto :goto_0
.end method

.method private isFresh()Z
    .locals 3

    .prologue
    .line 788
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    .line 789
    .local v0, "iflySetting":Lil;
    const-string/jumbo v1, "speech_dialog_fresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private needShowGuide()Z
    .locals 4

    .prologue
    .line 113
    invoke-static {p0}, Lazk;->a(Landroid/content/Context;)I

    move-result v0

    .line 114
    .local v0, "startHomeWay":I
    const-string/jumbo v1, "SpeechDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startHomeWay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-nez v0, :cond_0

    .line 117
    const-string/jumbo v1, "SpeechDialog"

    const-string/jumbo v2, "FIRST_INSTALL"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x1

    .line 122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyResult([Ljava/lang/String;[I)V
    .locals 8
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 759
    invoke-static {p1}, Lazz;->a([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Lazz;->a([I)Z

    move-result v6

    if-nez v6, :cond_0

    array-length v6, p1

    array-length v7, p2

    if-eq v6, v7, :cond_2

    .line 760
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionRequesting:Z

    .line 780
    :cond_1
    return-void

    .line 764
    :cond_2
    const-string/jumbo v5, "android.permission.RECORD_AUDIO"

    .line 765
    .local v5, "recordPermission":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_1

    .line 766
    aget-object v4, p1, v3

    .line 767
    .local v4, "permission":Ljava/lang/String;
    aget v2, p2, v3

    .line 768
    .local v2, "grantResult":I
    invoke-static {v4, v5}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 769
    if-nez v2, :cond_4

    .line 770
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->handleGranded()V

    .line 765
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 772
    :cond_4
    new-instance v1, Lpl;

    invoke-direct {v1, v5, v2}, Lpl;-><init>(Ljava/lang/String;I)V

    .line 773
    .local v1, "entity":Lpl;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->handleDenied(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method

.method private onPrepareData()V
    .locals 4

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mTitle:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "local_scene"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mLocalScene:Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "web_scene"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mWebScene:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_where"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    .line 172
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "start_from_test"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mIsStartFromTest:Z

    .line 174
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "SEARCH_TYPE"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSearchType:I

    .line 175
    const-string/jumbo v1, "SpeechDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrepareData mSearchType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSearchType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "engineType":I
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mLocalScene:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "local_scene"

    iget-object v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mLocalScene:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    or-int/lit8 v0, v0, 0x1

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mWebScene:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "web_scene"

    iget-object v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mWebScene:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    or-int/lit8 v0, v0, 0x10

    .line 186
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mWebScene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "vad_end_time"

    const/16 v3, 0x4b0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mLocalScene:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mWebScene:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 194
    const v1, 0x7f0c0158

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mTitle:Ljava/lang/String;

    .line 195
    const/16 v0, 0x11

    .line 197
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "web_scene"

    const-string/jumbo v3, "all"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "local_scene"

    const-string/jumbo v3, "all"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const/16 v1, 0xe

    iput v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "android.intent.action.SEARCH_LONG_PRESS"

    .line 203
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "android.intent.action.ASSIST"

    .line 204
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    :cond_3
    const/16 v1, 0xf

    iput v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    const-string/jumbo v2, "engine_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const/4 v1, 0x0

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    .line 213
    invoke-static {p0}, Lcom/iflytek/framework/business/speech/SpeechHandlerFactory;->newInstance(Landroid/content/Context;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 217
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->parseEntryIntent(Landroid/content/Intent;)V

    .line 218
    invoke-static {p0}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v1

    invoke-virtual {v1}, Ltd;->d()V

    .line 219
    return-void
.end method

.method private parseEntryIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 304
    :cond_0
    iget v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    const-string/jumbo v0, "speech_entry"

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->shortcut:Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-virtual {v1}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 306
    :pswitch_1
    const-string/jumbo v0, "speech_entry"

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->widget_call:Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-virtual {v1}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 309
    :pswitch_2
    const-string/jumbo v0, "speech_entry"

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->long_press:Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-virtual {v1}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 315
    :pswitch_3
    const-string/jumbo v0, "speech_entry"

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->widget_mic:Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-virtual {v1}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 318
    :pswitch_4
    const-string/jumbo v0, "speech_entry"

    sget-object v1, Lcom/iflytek/common/speech/entities/SpeechEntry;->widget_sms:Lcom/iflytek/common/speech/entities/SpeechEntry;

    invoke-virtual {v1}, Lcom/iflytek/common/speech/entities/SpeechEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static recordActiveLog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 224
    :cond_0
    const-string/jumbo v4, "SpeechDialog"

    const-string/jumbo v5, "recordActiveLog intent or context is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string/jumbo v4, "local_scene"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "localScene":Ljava/lang/String;
    const-string/jumbo v4, "web_scene"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "webScene":Ljava/lang/String;
    const-string/jumbo v4, "from_where"

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 231
    .local v1, "fromWhere":I
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 232
    const/16 v1, 0xe

    .line 235
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string/jumbo v4, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "android.intent.action.ASSIST"

    .line 237
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 238
    :cond_3
    const/16 v1, 0xf

    .line 241
    :cond_4
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 249
    :sswitch_0
    invoke-static {p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->shortcut:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :sswitch_1
    invoke-static {p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget_call:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-static {p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->search:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :sswitch_3
    invoke-static {p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget_mic:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :sswitch_4
    invoke-static {p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->widget_sms:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :sswitch_5
    invoke-static {p0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->mic_notify_to_sp_dlg:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lxb;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0xf -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_4
        0x12 -> :sswitch_3
        0x1f -> :sswitch_5
    .end sparse-switch
.end method

.method private registerScreenListener()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mScreenEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v2, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 160
    return-void
.end method

.method private setFreshFlag()V
    .locals 3

    .prologue
    .line 796
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    .line 797
    .local v0, "iflySetting":Lil;
    const-string/jumbo v1, "speech_dialog_fresh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 798
    return-void
.end method

.method private startHome(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 4
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 660
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    .local v1, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    invoke-virtual {p1, v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setEntryType(I)V

    .line 662
    new-instance v0, Lcom/iflytek/framework/business/entities/StartHomeInfo;

    invoke-direct {v0}, Lcom/iflytek/framework/business/entities/StartHomeInfo;-><init>()V

    .line 663
    .local v0, "info":Lcom/iflytek/framework/business/entities/StartHomeInfo;
    iput-object p1, v0, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mAfferentInfo:Ljava/lang/Object;

    .line 664
    iget v2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    iput v2, v0, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mFromWhere:I

    .line 665
    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setStartHomeInfo(Lcom/iflytek/framework/business/entities/StartHomeInfo;)V

    .line 666
    const-string/jumbo v2, "from_where"

    iget v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->startActivity(Landroid/content/Intent;)V

    .line 669
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    .line 670
    return-void
.end method

.method private unRegisterScreenListener()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mScreenEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 164
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "------------>> finish()1 enterCancelState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 730
    :goto_0
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->finish()V

    .line 731
    return-void

    .line 727
    :cond_0
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "------------>> finish()2 MODE_IDLE"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleLastResult(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 529
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const-string/jumbo v3, "SpeechDialog"

    const-string/jumbo v4, "handleLastResult "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mResultPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    if-eqz v3, :cond_1

    .line 531
    iget-object v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mResultPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    iget-object v4, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, p1}, Lcom/iflytek/framework/business/interfaces/IResultPreHandler;->getPreHandleResult(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    .line 533
    .local v0, "asrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "schedule"

    iget-object v4, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 534
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v3

    invoke-virtual {v3}, Lauy;->b()V

    .line 538
    :cond_0
    iget v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSearchType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 539
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->handleListeningResult(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 569
    .end local v0    # "asrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_1
    :goto_0
    return-void

    .line 544
    .restart local v0    # "asrResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v3, "telephone"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 545
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v3

    iget-object v4, v0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 546
    invoke-interface {v3, v4}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v1

    .line 547
    .local v1, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v1, :cond_3

    .line 548
    iget-object v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3, v0}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->handleShortCutSpeechResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 549
    const-string/jumbo v3, "SpeechDialog"

    const-string/jumbo v4, "handleLastResult telephone shortcut handle"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    goto :goto_0

    .line 557
    .end local v1    # "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    :cond_3
    new-instance v2, Lcom/iflytek/framework/business/speech/ShortCutHandler;

    iget-object v3, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/framework/business/speech/ShortCutHandler;-><init>(Landroid/content/Context;)V

    .line 558
    .local v2, "shortCutHandler":Lcom/iflytek/framework/business/speech/ShortCutHandler;
    invoke-virtual {v2, v0}, Lcom/iflytek/framework/business/speech/ShortCutHandler;->handle(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 559
    const-string/jumbo v3, "SpeechDialog"

    const-string/jumbo v4, "shortcut handle success"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    goto :goto_0

    .line 565
    :cond_4
    if-eqz v0, :cond_1

    .line 566
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->startHome(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_0
.end method

.method public handleParticalResult(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 525
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 490
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "-------->> onClick()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->recordActiveLog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 131
    invoke-static {}, Lzq;->a()Lzq;

    move-result-object v2

    invoke-virtual {v2}, Lzq;->i()V

    .line 133
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->needShowGuide()Z

    move-result v1

    .line 134
    .local v1, "needShowGuide":Z
    if-eqz v1, :cond_0

    .line 135
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->setIsNeedHandle(Z)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->onCreate(Landroid/os/Bundle;)V

    .line 140
    iput-object p0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mContext:Landroid/content/Context;

    .line 142
    new-instance v2, Lpp;

    invoke-direct {v2, p0}, Lpp;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lpp;->c(Lju;)V

    .line 145
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->registerScreenListener()V

    .line 147
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getPreHandler()Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mResultPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    .line 148
    if-eqz v1, :cond_1

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->startActivity(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    .line 155
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 735
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "------------>> onDestroy()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->unRegisterScreenListener()V

    .line 737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mScreenEventListener:Landroid/content/BroadcastReceiver;

    .line 738
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionToast:Lpe;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionToast:Lpe;

    invoke-virtual {v0}, Lpe;->b()V

    .line 741
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSearchType:I

    .line 742
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->onDestroy()V

    .line 743
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 699
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "------------>> onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->onPause()V

    .line 701
    return-void
.end method

.method protected onPost()V
    .locals 3

    .prologue
    .line 333
    const-string/jumbo v1, "SpeechDialog"

    const-string/jumbo v2, "onPost"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFromWhere:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    .line 342
    :cond_0
    const-string/jumbo v1, "SpeechDialog"

    const-string/jumbo v2, "onCreate start from widget or shortcut , start locating."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Loa;->a()Loa;

    move-result-object v1

    invoke-virtual {v1}, Loa;->b()V

    .line 347
    :cond_1
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.SPEECH_DIALOG_SHOW"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->isLoadFinish()Z

    move-result v0

    .line 351
    .local v0, "isPluginLoadFinish":Z
    if-nez v0, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->delayStartSpeech()V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->checkPermissionAndStartRecord()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 747
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 748
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "onRequestPermissionsResult "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    packed-switch p1, :pswitch_data_0

    .line 756
    :goto_0
    return-void

    .line 751
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->notifyResult([Ljava/lang/String;[I)V

    goto :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 706
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "------------>> onStop()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialogForSpace;->onStop()V

    .line 708
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 713
    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mPermissionRequesting:Z

    if-eqz v0, :cond_1

    .line 714
    const-string/jumbo v0, "SpeechDialog"

    const-string/jumbo v1, "------------>> onStop() | mPermissionRequesting = true -->return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_0
    return-void

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    goto :goto_0
.end method

.method protected registerListener()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    check-cast v0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->setUpdateUIListener(Lqu;)V

    .line 328
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    return-void
.end method

.method protected setView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 269
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->onPrepareData()V

    .line 271
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->isFresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFreshDialog:Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;

    .line 273
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFreshDialog:Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;->getOkButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog$2;-><init>(Lcom/iflytek/viafly/ui/activity/SpeechDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->setFreshFlag()V

    .line 287
    new-instance v0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;-><init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ISpeechHandler;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    .line 288
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mFreshDialog:Lcom/iflytek/viafly/ui/view/SpeechFreshDialog;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechHandler:Lcom/iflytek/yd/speech/ISpeechHandler;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mSpeechIntent:Landroid/content/Intent;

    invoke-direct {v0, p0, v1, v2}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;-><init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ISpeechHandler;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    .line 291
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->getMainTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->onPost()V

    goto :goto_0
.end method

.method public speechViewUpdateAfterResult()V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public speechViewUpdateInCancelState()V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method public speechViewUpdateInErrorState(III)Z
    .locals 1
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mIsStartFromTest:Z

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->setResult(I)V

    .line 645
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->finish()V

    .line 647
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public speechViewUpdateInInitState()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public speechViewUpdateInRecodingState()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public speechViewUpdateInRecodingState(I)V
    .locals 0
    .param p1, "drawableId"    # I

    .prologue
    .line 517
    return-void
.end method

.method public speechViewUpdateInSNState()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method public speechViewUpdateInWaitingResultState()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 674
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 676
    check-cast v1, Lcom/iflytek/framework/business/entities/HandlerResult;

    .line 677
    .local v1, "handlerResult":Lcom/iflytek/framework/business/entities/HandlerResult;
    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandlerResult;->getMessageTitle()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandlerResult;->getMessageSummary()Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/SpeechDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogViewForSpace;

    check-cast v0, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;

    .line 681
    .local v0, "dialogSpeechView":Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getMainTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getPrompt()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getPrompt()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getRecoder()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v4

    .line 687
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 688
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v4

    const v5, 0x7f0c0038

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 690
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 692
    .end local v0    # "dialogSpeechView":Lcom/iflytek/viafly/ui/view/DialogSpeechViewForSpace;
    .end local v1    # "handlerResult":Lcom/iflytek/framework/business/entities/HandlerResult;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method
