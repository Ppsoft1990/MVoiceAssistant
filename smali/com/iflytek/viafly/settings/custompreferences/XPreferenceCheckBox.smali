.class public Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;
.super Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;


# static fields
.field private static final ID_CHECK_BOX:I = 0x4f080012


# instance fields
.field protected mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 8

    const/4 v7, -0x1

    const/4 v6, -0x2

    const v5, 0x4f080012

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v1

    new-instance v0, Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XCheckBox2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setId(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v2, "stateList.setting_checkbox_states"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object v1
.end method

.method public setChecked(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mChecked:Z

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mEnabled:Z

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCheckBox;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setEnabled(Z)V

    return-void
.end method
