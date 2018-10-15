.class public Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;
.super Landroid/widget/LinearLayout;
.source "DownloadProgressDialogBodyView.java"


# instance fields
.field private mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

.field private mErrorView:Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

.field private mRequestAnimView:Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->initView(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0xc8

    .line 33
    invoke-static {p1, v2}, Lazk;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->setOrientation(I)V

    .line 35
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->setGravity(I)V

    .line 38
    invoke-static {p1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->LoadingBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mRequestAnimView:Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mRequestAnimView:Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;

    const-string/jumbo v1, "\u6b63\u5728\u8bf7\u6c42\u63d2\u4ef6\u4fe1\u606f..."

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->setTipText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mRequestAnimView:Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->addView(Landroid/view/View;)V

    .line 44
    invoke-static {p1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->DownloadProgressBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    .line 45
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->addView(Landroid/view/View;)V

    .line 49
    invoke-static {p1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->MessageBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mErrorView:Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mErrorView:Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method


# virtual methods
.method public setErrorViewTip(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mErrorView:Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mErrorView:Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setPercent(I)V
    .locals 1
    .param p1, "precent"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->setPercent(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setSizeInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "sizeInfo"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->setSizeInfo(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public switchView(Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 55
    sget-object v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView$1;->$SwitchMap$com$iflytek$viafly$ui$dialog$DownloadProgressDialog$ViewStatus:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mRequestAnimView:Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mErrorView:Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setVisibility(I)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mRequestAnimView:Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mErrorView:Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setVisibility(I)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mRequestAnimView:Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/LoadingBodyView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mDownloadProgressView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->mErrorView:Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/MessageDialogBodyView;->setVisibility(I)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
