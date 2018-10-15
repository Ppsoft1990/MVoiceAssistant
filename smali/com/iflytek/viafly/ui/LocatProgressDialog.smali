.class public Lcom/iflytek/viafly/ui/LocatProgressDialog;
.super Landroid/app/ProgressDialog;
.source "LocatProgressDialog.java"

# interfaces
.implements Loa$a;


# static fields
.field private static final MSG_LOCATE_FINISH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LBS_LocatProgressDialog"


# instance fields
.field private final MSG_LOCAT_FINISH:I

.field private final MSG_SEARCH_ERROR:I

.field private final MSG_SEARCH_FINISH:I

.field private mAsrResult:Lcom/iflytek/yd/speech/ViaAsrResult;

.field private mCtx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsNeedContinue:Z

.field private mIsNormalStop:Z

.field private mLBS:Loa;

.field private mSearchContent:Ljava/lang/String;

.field private mSpeechListener:Ljt;

.field private mSpeechServiceUtil:Lpp;

.field private searchMode:B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    iput v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->MSG_LOCAT_FINISH:I

    .line 41
    iput v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->MSG_SEARCH_FINISH:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->MSG_SEARCH_ERROR:I

    .line 49
    iput-boolean v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mIsNeedContinue:Z

    .line 50
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mIsNormalStop:Z

    .line 65
    new-instance v0, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/LocatProgressDialog$1;-><init>(Lcom/iflytek/viafly/ui/LocatProgressDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mCtx:Landroid/content/Context;

    .line 55
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mLBS:Loa;

    .line 56
    iput-object p2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mAsrResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 57
    iget-object v0, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSearchContent:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v0

    iput-byte v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->searchMode:B

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/LocatProgressDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->startTextSearch()V

    return-void
.end method

.method static synthetic access$202(Lcom/iflytek/viafly/ui/LocatProgressDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/LocatProgressDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mIsNormalStop:Z

    return p1
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/LocatProgressDialog;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mAsrResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    return-object v0
.end method

.method static synthetic access$402(Lcom/iflytek/viafly/ui/LocatProgressDialog;Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/LocatProgressDialog;
    .param p1, "x1"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mAsrResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    return-object p1
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/ui/LocatProgressDialog;)B
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/LocatProgressDialog;

    .prologue
    .line 34
    iget-byte v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->searchMode:B

    return v0
.end method

.method private startTextSearch()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechServiceUtil:Lpp;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lpp;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechServiceUtil:Lpp;

    .line 170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string/jumbo v1, "search_text"

    iget-object v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSearchContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "search_entry"

    const-string/jumbo v2, "modify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    new-instance v1, Lcom/iflytek/viafly/ui/LocatProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/LocatProgressDialog$2;-><init>(Lcom/iflytek/viafly/ui/LocatProgressDialog;)V

    iput-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechListener:Ljt;

    .line 231
    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechServiceUtil:Lpp;

    iget-object v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechListener:Ljt;

    invoke-virtual {v1, v0, v2}, Lpp;->b(Landroid/content/Intent;Ljt;)V

    .line 232
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 154
    const-string/jumbo v0, "LBS_LocatProgressDialog"

    const-string/jumbo v1, "dismiss()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechServiceUtil:Lpp;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechServiceUtil:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechListener:Ljt;

    invoke-virtual {v0, v1}, Lpp;->c(Ljt;)V

    .line 157
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechServiceUtil:Lpp;

    invoke-virtual {v0}, Lpp;->c()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mSpeechServiceUtil:Lpp;

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    return-void
.end method

.method public getResult()Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mAsrResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    return-object v0
.end method

.method public isNeedContinue()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mIsNeedContinue:Z

    return v0
.end method

.method public onLocatFinish()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    .line 148
    const-string/jumbo v0, "LBS_LocatProgressDialog"

    const-string/jumbo v1, "onLocatFinish"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/ProgressDialog;->onStop()V

    .line 120
    const-string/jumbo v0, "LBS_LocatProgressDialog"

    const-string/jumbo v1, "------------>onStop()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v0, "LBS_LocatProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsNormalStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mIsNormalStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mIsNormalStop:Z

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mIsNeedContinue:Z

    .line 125
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onWindowFocusChanged(Z)V

    .line 237
    const-string/jumbo v0, "LBS_LocatProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mIsNeedContinue:Z

    .line 241
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->dismiss()V

    .line 242
    const-string/jumbo v0, "LBS_LocatProgressDialog"

    const-string/jumbo v1, "onDetachedFromWindow but is showing"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    return-void
.end method

.method public setNeedContinue(Z)V
    .locals 0
    .param p1, "isNeedContinue"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mIsNeedContinue:Z

    .line 252
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    .line 135
    const-string/jumbo v0, "LBS_LocatProgressDialog"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mLBS:Loa;

    invoke-virtual {v0, p0}, Loa;->a(Loa$a;)V

    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mCtx:Landroid/content/Context;

    const v1, 0x7f0c00e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/LocatProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/ui/LocatProgressDialog;->mLBS:Loa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loa;->a(Z)V

    .line 139
    return-void
.end method
