.class public Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;
.source "XPreferenceScreenWithSuperscript.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHotIcon:Landroid/graphics/drawable/Drawable;

.field protected mIconImg:Lcom/iflytek/viafly/ui/view/CircleImageView;

.field private mSuperscript:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public getIconImg()Lcom/iflytek/viafly/ui/view/CircleImageView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mIconImg:Lcom/iflytek/viafly/ui/view/CircleImageView;

    return-object v0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v2

    .line 35
    .local v2, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v4, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v4, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mSuperscript:Lcom/iflytek/base/skin/customView/XImageView;

    .line 36
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mSuperscript:Lcom/iflytek/base/skin/customView/XImageView;

    const v5, 0x7f02029e

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 38
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .local v3, "titleLp":Landroid/widget/RelativeLayout$LayoutParams;
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 41
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 42
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 43
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v4, Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-direct {v4, p1}, Lcom/iflytek/viafly/ui/view/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mIconImg:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 46
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mIconImg:Lcom/iflytek/viafly/ui/view/CircleImageView;

    const v5, 0x7f0200f2

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageResource(I)V

    .line 47
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v0, "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49
    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 51
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mIconImg:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {v2, v4, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02014d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mHotIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mHotIcon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/high16 v8, 0x4041000000000000L    # 34.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 60
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mSuperscript:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, v4, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-object v2
.end method

.method public setIconClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mIconImg:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public setIconVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mIconImg:Lcom/iflytek/viafly/ui/view/CircleImageView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mIconImg:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setVisibility(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public setSuperScriptVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mSuperscript:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mSuperscript:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public showHotIcon(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mHotIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawablePadding(I)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithSuperscript;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
