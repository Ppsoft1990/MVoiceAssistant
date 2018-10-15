.class public Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;
.super Lcom/iflytek/viafly/ui/dialog/DialogView;
.source "DownloadProgressDialogView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/DialogView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setView()V

    .line 16
    return-void
.end method


# virtual methods
.method protected createBodyView()Landroid/view/View;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->DownloadProgressDialogBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createBottomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomTwoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createTitleView()Landroid/view/View;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setErrorViewTip(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "tip"    # Ljava/lang/CharSequence;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->setErrorViewTip(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public setPercent(I)V
    .locals 1
    .param p1, "precent"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->setPercent(I)V

    .line 54
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public setPositiveButtonClickable(Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButtonClickable(Z)V

    .line 66
    return-void
.end method

.method public setPositiveButtonClickableTextColor()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButtonClickableTextColor()V

    .line 74
    return-void
.end method

.method public setPositiveButtonUnClickableTextColor()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButtonUnClickableTextColor()V

    .line 70
    return-void
.end method

.method public setSizeInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "sizeInfo"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->setSizeInfo(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getTitleView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public switchView(Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogBodyView;->switchView(Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;)V

    .line 42
    return-void
.end method
