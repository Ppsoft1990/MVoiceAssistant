.class public Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;
.super Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;


# instance fields
.field private mChecked:Z

.field protected mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/iflytek/base/skin/customView/XRadioButton;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XRadioButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XRadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XRadioButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XRadioButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    const-string/jumbo v2, "stateList.radio_button"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XRadioButton;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mChecked:Z

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRadioButton;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mEnabled:Z

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mRadioButton:Lcom/iflytek/base/skin/customView/XRadioButton;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceRadioButton;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRadioButton;->setEnabled(Z)V

    return-void
.end method
