.class public final Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;
.super Lcom/iflytek/yd/ui/BaseFragment;
.source "HotWordUpLoadingFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final CONTENT_EMPTY:I = 0x1

.field private static final CONTENT_FLOW:I = 0x4

.field private static final NO_NET_ERROR:I = 0x5

.field private static final SPLIT_CHAR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "HotWordUpLoadingActivity"

.field private static final TEXT_CHANGE:I = 0x0

.field private static final TOTAL_NUMBER:I = 0x14

.field private static final UPLOAD_FAIL:I = 0x3

.field private static final UPLOAD_SUCCESS:I = 0x2


# instance fields
.field private isCancelUpload:Z

.field private mContentEdit:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHotWords:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Ljt;

.field private mNumberShow:Lcom/iflytek/base/skin/customView/XTextView;

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mSpeech:Lpp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/iflytek/yd/ui/BaseFragment;-><init>()V

    .line 179
    new-instance v0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$3;-><init>(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHandler:Landroid/os/Handler;

    .line 314
    new-instance v0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$5;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$5;-><init>(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mListener:Ljt;

    return-void
.end method

.method private UpDateLeftNumber(I)V
    .locals 3
    .param p1, "leftNumber"    # I

    .prologue
    .line 226
    const-string/jumbo v0, "HotWordUpLoadingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpDateLeftNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mNumberShow:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    if-ltz p1, :cond_0

    .line 229
    const-string/jumbo v0, "HotWordUpLoadingActivity"

    const-string/jumbo v1, "if"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mNumberShow:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_hotword_left_number"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string/jumbo v0, "HotWordUpLoadingActivity"

    const-string/jumbo v1, "else"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mNumberShow:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_hotword_left_number_overflow"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->onStartUpload()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->UpDateLeftNumber(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->onUploadSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->onUploadError(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->isCancelUpload:Z

    return p1
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHotWords:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;Ljava/util/HashSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->saveHotwords(Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$800(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private loadHotwords()Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 391
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v4, Lnk;->i:Ljava/lang/String;

    invoke-static {v4}, Lcom/iflytek/yd/util/FileManager;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "file_str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 394
    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "items":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 396
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 397
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "items":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "HotWordUpLoadingActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadHotwords size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-object v3
.end method

.method private onStartUpload()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 241
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    const-string/jumbo v3, "HotWordUpLoadingActivity"

    const-string/jumbo v4, "upload content is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_2

    .line 247
    const-string/jumbo v3, "HotWordUpLoadingActivity"

    const-string/jumbo v4, "content flow"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 251
    :cond_2
    new-instance v0, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "cm":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v0}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 253
    const-string/jumbo v3, "HotWordUpLoadingActivity"

    const-string/jumbo v4, "no net"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 257
    :cond_3
    const-string/jumbo v3, "HotWordUpLoadingActivity"

    const-string/jumbo v4, "start upload"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->loadHotwords()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHotWords:Ljava/util/HashSet;

    .line 259
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHotWords:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHotWords:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 261
    .local v2, "str_words":[Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHotWords:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 262
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mSpeech:Lpp;

    sget-object v4, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->userword:Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;

    invoke-virtual {v4}, Lcom/iflytek/yd/speech/msc/interfaces/MscUploadType;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mListener:Ljt;

    invoke-virtual {v3, v2, v4, v6, v5}, Lpp;->a([Ljava/lang/String;Ljava/lang/String;ILjt;)V

    .line 265
    iput-boolean v6, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->isCancelUpload:Z

    .line 267
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 268
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 269
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 270
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    const v4, 0x7f0c00c5

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 272
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$4;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$4;-><init>(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0
.end method

.method private onUploadError(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 308
    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->isCancelUpload:Z

    if-eqz v0, :cond_1

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_1
    const v0, 0x7f0c00c1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onUploadSuccess()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->isCancelUpload:Z

    if-eqz v0, :cond_1

    .line 297
    :goto_0
    return-void

    .line 293
    :cond_1
    const v0, 0x7f0c00c6

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->showToast(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 295
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 296
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->finish()V

    goto :goto_0
.end method

.method private saveHotwords(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 419
    :goto_0
    return-void

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    .local v1, "tmp_str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 418
    .end local v1    # "tmp_str":Ljava/lang/String;
    :cond_1
    sget-object v2, Lnk;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/iflytek/yd/util/FileManager;->writeString(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "HotWordUpLoadingActivity"

    const-string/jumbo v2, "showToast"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 371
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 375
    return-void
.end method

.method protected onClickBackButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 424
    invoke-super {p0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onClickBackButton(Landroid/view/View;)V

    .line 425
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/yd/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    .line 74
    .local v0, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->addContentView(Landroid/view/View;)V

    .line 75
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onDestroy()V

    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    .line 172
    :cond_0
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mNumberShow:Lcom/iflytek/base/skin/customView/XTextView;

    .line 173
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mSpeech:Lpp;

    .line 174
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 175
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHotWords:Ljava/util/HashSet;

    .line 176
    iput-object v1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHandler:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/iflytek/yd/ui/BaseFragment;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 161
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 379
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 380
    .local v0, "mInPutNumber":I
    rsub-int/lit8 v1, v0, 0x14

    .line 381
    .local v1, "mLeftNumber":I
    const-string/jumbo v2, "HotWordUpLoadingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLeftNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x60

    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 80
    invoke-super {p0, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    const-string/jumbo v5, "\u81ea\u9020\u8bcd\u4e0a\u4f20"

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->setTitleText(Ljava/lang/CharSequence;)V

    .line 83
    const-string/jumbo v5, "style_settings_title_new"

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->setTitleStyle(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v5, "statelist.fluepage_title_back_btn_states"

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->setBackBtnResource(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v5

    const v6, 0x7f0200d6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 89
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 90
    .local v3, "titleView":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 91
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v5

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v10}, Lazk;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .end local v3    # "titleView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 103
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v4, v0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 104
    .local v4, "upLoadButton":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v5, "\u4e0a\u4f20"

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 107
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 110
    const-string/jumbo v5, "style_hotword_btn"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 113
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v1, "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    invoke-static {v0, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 116
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v5

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v10}, Lazk;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v5, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$1;

    invoke-direct {v5, p0, v4}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$1;-><init>(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;Lcom/iflytek/base/skin/customView/XTextView;)V

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    new-instance v5, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$2;

    invoke-direct {v5, p0}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$2;-><init>(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v5, 0x7f0b048b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    .line 147
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mContentEdit:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    const v5, 0x7f0b048c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v5, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mNumberShow:Lcom/iflytek/base/skin/customView/XTextView;

    .line 150
    new-instance v5, Lpp;

    invoke-direct {v5, v0}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->mSpeech:Lpp;

    .line 151
    return-void
.end method
