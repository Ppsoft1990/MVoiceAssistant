.class public Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XPreferenceScreenCheckVersionForSetting.java"


# instance fields
.field private mNewRemind:Lcom/iflytek/base/skin/customView/XImageView;

.field private mWidget:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v11, 0xf

    const/16 v10, 0xb

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 24
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v2

    .line 26
    .local v2, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v3, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    .line 27
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v4, "image.ic_subpage_list_arrow"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 28
    new-instance v3, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mNewRemind:Lcom/iflytek/base/skin/customView/XImageView;

    .line 29
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mNewRemind:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v4, "image.ic_new_version"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 31
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 33
    invoke-virtual {v0, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 34
    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 36
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    .local v1, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 38
    invoke-virtual {v1, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 39
    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    const-wide/high16 v4, 0x4042000000000000L    # 36.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->px2dip(Landroid/content/Context;D)I

    move-result v4

    int-to-double v4, v4

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    add-int/2addr v3, v4

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 42
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mNewRemind:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-object v2
.end method

.method public setNewReminderVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mNewRemind:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mNewRemind:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public setWidgetDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 60
    return-void
.end method

.method public setWidgetVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenCheckVersionForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 56
    :cond_0
    return-void
.end method
