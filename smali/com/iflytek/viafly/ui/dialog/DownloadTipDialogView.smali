.class public Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;
.super Lcom/iflytek/viafly/ui/dialog/DialogView;
.source "DownloadTipDialogView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/DialogView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->setView()V

    .line 15
    return-void
.end method


# virtual methods
.method protected createBodyView()Landroid/view/View;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->TwoTextViewBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createBottomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->mContext:Landroid/content/Context;

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
    .line 19
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setAboveTextViewMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->setAboveTextViewMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setBelowTextViewMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/TwoTextViewBodyView;->setBelowTextViewMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->getTitleView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
