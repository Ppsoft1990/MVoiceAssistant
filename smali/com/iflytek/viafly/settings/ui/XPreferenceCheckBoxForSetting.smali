.class public Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XPreferenceCheckBoxForSetting.java"


# static fields
.field private static final ID_CHECK_BOX:I = 0x4f080012


# instance fields
.field protected mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    const v8, 0x4f080012

    const/4 v7, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v3

    .line 44
    .local v3, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v4, Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-direct {v4, p1}, Lcom/iflytek/base/skin/customView/XCheckBox2;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 45
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v8}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setId(I)V

    .line 46
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    .line 48
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    .line 49
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v5, "stateList.setting_checkbox_states_new"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 51
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53
    const/16 v4, 0xf

    invoke-virtual {v0, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 54
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 56
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v4, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .local v1, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 62
    .local v2, "lp3":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 64
    return-object v3
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 29
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mChecked:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 32
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mEnabled:Z

    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setEnabled(Z)V

    .line 38
    return-void
.end method

.method public switchState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->switchState(Z)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;->setEnabled(Z)V

    .line 74
    return-void
.end method
