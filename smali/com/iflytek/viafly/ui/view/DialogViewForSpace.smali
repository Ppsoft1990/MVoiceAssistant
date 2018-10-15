.class public Lcom/iflytek/viafly/ui/view/DialogViewForSpace;
.super Landroid/widget/LinearLayout;
.source "DialogViewForSpace.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogView"


# instance fields
.field protected mBody:Landroid/widget/LinearLayout;

.field protected mDlgLinearLayout:Landroid/widget/LinearLayout;

.field protected mExitButton:Landroid/widget/Button;

.field protected mFootBar:Landroid/widget/LinearLayout;

.field protected mFootBarLevel2:Landroid/widget/LinearLayout;

.field protected mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

.field protected mMainTitle:Landroid/widget/TextView;

.field protected mMiddleButton:Landroid/widget/Button;

.field protected mRightButton:Lcom/iflytek/base/skin/customView/XButton;

.field protected mSingleCancelButton:Landroid/widget/Button;

.field protected mTitleBar:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->initView(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public dlgLinearLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mDlgLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getBody()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mBody:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getExitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mExitButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getFootBar()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mFootBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFootBarLevel2()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mFootBarLevel2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method public getMainTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mMainTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMiddleButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mMiddleButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method public getSingleCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mSingleCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getTitleBar()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mTitleBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 54
    const-string/jumbo v1, "DialogView"

    const-string/jumbo v2, "-------------->> initView()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->setGravity(I)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030087

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 61
    .local v0, "rootView":Landroid/widget/LinearLayout;
    const v1, 0x7f0b03a8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mTitleBar:Landroid/widget/LinearLayout;

    .line 62
    const v1, 0x7f0b03a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mMainTitle:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0b05f7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mExitButton:Landroid/widget/Button;

    .line 64
    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mBody:Landroid/widget/LinearLayout;

    .line 65
    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mFootBar:Landroid/widget/LinearLayout;

    .line 66
    const v1, 0x7f0b03ac

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mSingleCancelButton:Landroid/widget/Button;

    .line 67
    const v1, 0x7f0b03ad

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mFootBarLevel2:Landroid/widget/LinearLayout;

    .line 68
    const v1, 0x7f0b03af

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 69
    const v1, 0x7f0b03b0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mMiddleButton:Landroid/widget/Button;

    .line 70
    const v1, 0x7f0b03ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 71
    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mDlgLinearLayout:Landroid/widget/LinearLayout;

    .line 72
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    const-string/jumbo v0, "DialogView"

    const-string/jumbo v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 124
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->removeAllViews()V

    .line 126
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mTitleBar:Landroid/widget/LinearLayout;

    .line 127
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mMainTitle:Landroid/widget/TextView;

    .line 128
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mExitButton:Landroid/widget/Button;

    .line 129
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mBody:Landroid/widget/LinearLayout;

    .line 130
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mFootBar:Landroid/widget/LinearLayout;

    .line 131
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mSingleCancelButton:Landroid/widget/Button;

    .line 132
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mFootBarLevel2:Landroid/widget/LinearLayout;

    .line 133
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mRightButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 134
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mMiddleButton:Landroid/widget/Button;

    .line 135
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mLeftButton:Lcom/iflytek/base/skin/customView/XButton;

    .line 136
    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/DialogViewForSpace;->mDlgLinearLayout:Landroid/widget/LinearLayout;

    .line 137
    return-void
.end method
