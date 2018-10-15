.class public Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;
.super Lcom/iflytek/viafly/ui/dialog/DialogView;
.source "MessageWithCheckboxDialogView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageDialogView"


# instance fields
.field private isSingleButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSingleButton"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/DialogView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->isSingleButton:Z

    .line 18
    iput-boolean p2, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->isSingleButton:Z

    .line 19
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->setView()V

    .line 20
    return-void
.end method


# virtual methods
.method protected createBodyView()Landroid/view/View;
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "MessageDialogView"

    const-string/jumbo v1, "createBodyView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;->MessageWithCheckboxDialogBodyView:Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBodyViewCreator$BodyViewType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createBottomView()Landroid/view/View;
    .locals 2

    .prologue
    .line 38
    const-string/jumbo v0, "MessageDialogView"

    const-string/jumbo v1, "createBottomView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->isSingleButton:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomSingleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomTwoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected createTitleView()Landroid/view/View;
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "MessageDialogView"

    const-string/jumbo v1, "createTitleView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;->CustomTitleView:Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogTitleViewCreator$TiteViewType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedState()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->getSelectedState()Z

    move-result v0

    goto :goto_0
.end method

.method public setCheckBoxSetting(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "settingItem"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->setCheckBoxSetting(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCheckBoxTips(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->setCheckBoxTips(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getBottomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    const-string/jumbo v0, "MessageDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTitle(), title is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogView;->getTitleView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogTitleView;->setTilte(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
