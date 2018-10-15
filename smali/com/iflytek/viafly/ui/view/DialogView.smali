.class public Lcom/iflytek/viafly/ui/view/DialogView;
.super Landroid/widget/LinearLayout;
.source "DialogView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogView"


# instance fields
.field protected mBody:Landroid/widget/LinearLayout;

.field protected mDlgLinearLayout:Landroid/widget/LinearLayout;

.field protected mFootBar:Landroid/widget/LinearLayout;

.field protected mFootBarLevel2:Landroid/widget/LinearLayout;

.field protected mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

.field protected mMainTitle:Landroid/widget/TextView;

.field protected mRightButton:Lcom/iflytek/base/skin/customView/XButton;

.field protected mSecondryTitle:Landroid/widget/TextView;

.field protected mSingleCancelButton:Lcom/iflytek/base/skin/customView/XButton;

.field protected mSplitLine:Landroid/widget/LinearLayout;

.field protected mTitleBar:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/view/DialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/DialogView;->initView(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method public dlgLinearLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mDlgLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getBody()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mBody:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFootBar()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mFootBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFootBarLevel2()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mFootBarLevel2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLeftButton()Lcom/iflytek/base/skin/customView/XButton;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method public getMainTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mMainTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRightButton()Lcom/iflytek/base/skin/customView/XButton;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method public getSecondryTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSecondryTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSingleCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSingleCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method public getSplitLine()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSplitLine:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTitleBar()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mTitleBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 58
    const-string/jumbo v1, "DialogView"

    const-string/jumbo v2, "-------------->> initView()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {p1}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbbp;->a(Z)V

    .line 60
    const-string/jumbo v1, "DialogView"

    const-string/jumbo v2, "Ivw|onPause()------false"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/DialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/DialogView;->setGravity(I)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030086

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 66
    .local v0, "rootView":Landroid/widget/LinearLayout;
    const v1, 0x7f0b03a8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mTitleBar:Landroid/widget/LinearLayout;

    .line 67
    const v1, 0x7f0b03a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mMainTitle:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0b03aa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSecondryTitle:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0b03ab

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSplitLine:Landroid/widget/LinearLayout;

    .line 71
    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mBody:Landroid/widget/LinearLayout;

    .line 72
    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mFootBar:Landroid/widget/LinearLayout;

    .line 73
    const v1, 0x7f0b03ac

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSingleCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 74
    const v1, 0x7f0b03ad

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mFootBarLevel2:Landroid/widget/LinearLayout;

    .line 75
    const v1, 0x7f0b03ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 77
    const v1, 0x7f0b03af

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 78
    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mDlgLinearLayout:Landroid/widget/LinearLayout;

    .line 79
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    const-string/jumbo v0, "DialogView"

    const-string/jumbo v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 159
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogView;->removeAllViews()V

    .line 161
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mTitleBar:Landroid/widget/LinearLayout;

    .line 162
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mMainTitle:Landroid/widget/TextView;

    .line 163
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSecondryTitle:Landroid/widget/TextView;

    .line 165
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mBody:Landroid/widget/LinearLayout;

    .line 166
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mFootBar:Landroid/widget/LinearLayout;

    .line 167
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSingleCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 168
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mFootBarLevel2:Landroid/widget/LinearLayout;

    .line 169
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 171
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 172
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mDlgLinearLayout:Landroid/widget/LinearLayout;

    .line 173
    return-void
.end method

.method public setRightConfirmStatus()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "stateList.dialog_btn_confirm_status"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 119
    return-void
.end method

.method public setRightWarnStatus()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "stateList.dialog_btn_warn_status"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 123
    return-void
.end method

.method public setSingleCancleStatus()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSingleCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "stateList.dialog_btn_cancel_status"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 127
    return-void
.end method

.method public setSingleConfirmStatus()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSingleCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "stateList.dialog_btn_confirm_status"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 131
    return-void
.end method

.method public setSingleWarnStatus()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogView;->mSingleCancelButton:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v1, "stateList.dialog_btn_warn_status"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 135
    return-void
.end method
