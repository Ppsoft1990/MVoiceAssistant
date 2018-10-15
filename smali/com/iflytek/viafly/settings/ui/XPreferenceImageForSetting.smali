.class public Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XPreferenceImageForSetting.java"


# instance fields
.field private mImageView:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v6, -0x1

    .line 47
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v3

    .line 49
    .local v3, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 50
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 51
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mBottomLine:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 53
    new-instance v4, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v4, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mImageView:Lcom/iflytek/base/skin/customView/XImageView;

    .line 54
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mImageView:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v4, 0x4053000000000000L    # 76.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-direct {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    .line 60
    .local v2, "padding":I
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mImageView:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v4, v2, v7, v2, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setPadding(IIII)V

    .line 63
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mImageView:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v3, v4, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mBottomLine:Landroid/view/View;

    .line 66
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mBottomLine:Landroid/view/View;

    const-string/jumbo v5, "#e3eaef"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 67
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mBottomLine:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 68
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v0, "lParams4":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 70
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mBottomLine:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mBottomLine:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    .line 78
    return-object v3
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mEnabled:Z

    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mImageView:Lcom/iflytek/base/skin/customView/XImageView;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setEnabled(Z)V

    .line 39
    return-void
.end method

.method public setImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mImageView:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 43
    return-void
.end method

.method public switchBottomLineState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mBottomLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->mBottomLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->switchState(Z)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceImageForSetting;->setEnabled(Z)V

    .line 33
    return-void
.end method
