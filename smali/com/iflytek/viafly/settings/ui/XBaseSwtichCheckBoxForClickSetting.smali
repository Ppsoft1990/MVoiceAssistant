.class public Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XBaseSwtichCheckBoxForClickSetting.java"


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
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mChecked:Z

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

    .line 49
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v3

    .line 50
    .local v3, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const-string/jumbo v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundColor(I)V

    .line 51
    const-string/jumbo v4, "#212325"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitleColor(I)V

    .line 52
    const-wide v4, 0x404b800000000000L    # 55.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setMinHeight(I)V

    .line 54
    new-instance v4, Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-direct {v4, p1}, Lcom/iflytek/base/skin/customView/XCheckBox2;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 55
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v8}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setId(I)V

    .line 56
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    .line 58
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v4, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    .line 59
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v5, "stateList.setting_checkbox_states_new"

    sget-object v6, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 63
    const/16 v4, 0xf

    invoke-virtual {v0, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 64
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {p1, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 66
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v3, v4, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    .local v1, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 72
    .local v2, "lp3":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74
    return-object v3
.end method

.method public setCheckBoxClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 31
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mChecked:Z

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 34
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mEnabled:Z

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setEnabled(Z)V

    .line 40
    return-void
.end method

.method public switchState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->switchState(Z)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setEnabled(Z)V

    .line 84
    return-void
.end method
