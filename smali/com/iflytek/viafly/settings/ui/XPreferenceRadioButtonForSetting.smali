.class public Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XPreferenceRadioButtonForSetting.java"


# instance fields
.field private mChecked:Z

.field protected mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 39
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v1

    .line 41
    .local v1, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v2, Lcom/iflytek/base/skin/customView/XRadioButton;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XRadioButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    .line 42
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XRadioButton;->setChecked(Z)V

    .line 43
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XRadioButton;->setClickable(Z)V

    .line 44
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XRadioButton;->setFocusable(Z)V

    .line 45
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    const-string/jumbo v3, "stateList.radio_button"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XRadioButton;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 47
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 52
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-object v1
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 26
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mChecked:Z

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRadioButton;->setChecked(Z)V

    .line 29
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mEnabled:Z

    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceRadioButtonForSetting;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRadioButton;->setEnabled(Z)V

    .line 35
    return-void
.end method
