.class public Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XPreferenceScreenForSetting.java"


# instance fields
.field private mStateTextView:Lcom/iflytek/base/skin/customView/XTextView;

.field private mWidget:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getWidget()Lcom/iflytek/base/skin/customView/XImageView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    return-object v0
.end method

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

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    .line 28
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v4, "stateList.setting_subpage_list_arrow_states"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 29
    new-instance v3, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mStateTextView:Lcom/iflytek/base/skin/customView/XTextView;

    .line 30
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mStateTextView:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v4, "style_setting_item_setup_text"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 35
    invoke-virtual {v0, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 36
    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 38
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 39
    .local v1, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 40
    invoke-virtual {v1, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 41
    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 43
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v3, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mStateTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    return-object v2
.end method

.method public setStateText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mStateTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setStateTextVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mStateTextView:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mStateTextView:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public setWidgetDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V
    .locals 1
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "orientation"    # Lcom/iflytek/base/skin/Orientation;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 61
    return-void
.end method

.method public setWidgetVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public switchState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->switchState(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->mWidget:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setEnabled(Z)V

    .line 85
    return-void
.end method
