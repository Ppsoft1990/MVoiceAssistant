.class public Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;
.super Landroid/widget/LinearLayout;
.source "ContainTwoTypeButtonButtomView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private singleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

.field private twoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->mContext:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->initView()V

    .line 21
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomSingleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    .line 25
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->singleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->singleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->addView(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;->CustomTwoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;

    .line 29
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator;->create(Lcom/iflytek/viafly/ui/dialog/DialogBottomViewCreator$BottomViewType;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->twoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->twoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->addView(Landroid/view/View;)V

    .line 31
    return-void
.end method


# virtual methods
.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->twoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public setNegativeButtonEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->twoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNegativeButtonEnable(Z)V

    .line 65
    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->singleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public setNeutralButtonEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->singleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setNeutralButtonEnable(Z)V

    .line 57
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->twoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public setPositiveButtonEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->twoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setPositiveButtonEnable(Z)V

    .line 61
    return-void
.end method

.method public switchBottomView(Z)V
    .locals 3
    .param p1, "isSingle"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->singleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->twoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setVisibility(I)V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->singleButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContainTwoTypeButtonButtomView;->twoButtonBottomView:Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomDialogBottomView;->setVisibility(I)V

    goto :goto_0
.end method
