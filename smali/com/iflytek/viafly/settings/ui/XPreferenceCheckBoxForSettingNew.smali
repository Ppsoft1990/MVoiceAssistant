.class public Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;
.source "XPreferenceCheckBoxForSettingNew.java"


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
    .line 22
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 75
    .local v0, "isSummaryEmpty":Z
    if-eqz v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 80
    .end local v0    # "isSummaryEmpty":Z
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->getView()Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x2

    const v8, 0x4f080012

    const/4 v7, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v3

    .line 47
    .local v3, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v4, Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-direct {v4, p1}, Lcom/iflytek/base/skin/customView/XCheckBox2;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 48
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v8}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setId(I)V

    .line 49
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    .line 51
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    .line 52
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v5, "stateList.setting_checkbox_states_new"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 54
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 58
    const-wide/high16 v4, 0x4031000000000000L    # 17.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 60
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v4, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .local v1, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 65
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    .local v2, "lp3":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68
    return-object v3
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 31
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mChecked:Z

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 34
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mEnabled:Z

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setEnabled(Z)V

    .line 40
    return-void
.end method

.method public switchState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->switchState(Z)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSettingNew;->setEnabled(Z)V

    .line 90
    return-void
.end method
