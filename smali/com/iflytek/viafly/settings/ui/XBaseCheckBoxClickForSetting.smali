.class public Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XBaseCheckBoxClickForSetting.java"


# static fields
.field private static final ID_CHECK_BOX:I = 0x4f080014


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
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v5

    .line 51
    .local v5, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 52
    .local v0, "left":I
    move v4, v0

    .line 53
    .local v4, "right":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v6, v4, v7}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    .line 54
    const-string/jumbo v6, "#ffffff"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setBackgroundColor(I)V

    .line 55
    const-string/jumbo v6, "#212325"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitleColor(I)V

    .line 56
    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setTitleSize(F)V

    .line 57
    const-wide v6, 0x404b800000000000L    # 55.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setMinHeight(I)V

    .line 59
    new-instance v6, Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-direct {v6, p1}, Lcom/iflytek/base/skin/customView/XCheckBox2;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    .line 60
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const v7, 0x4f080014

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setId(I)V

    .line 61
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setFocusable(Z)V

    .line 63
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setClickable(Z)V

    .line 65
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-string/jumbo v7, "stateList.setting_circle_checkbox_states"

    sget-object v8, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setCustomButtonDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 67
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69
    const/16 v6, 0xf

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 70
    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 71
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    .line 72
    invoke-static {p1, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v9

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-static {p1, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v10

    .line 71
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setPadding(IIII)V

    .line 74
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v5, v6, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    .local v2, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x0

    const v7, 0x4f080014

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v6}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    .local v3, "lp3":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x0

    const v7, 0x4f080014

    invoke-virtual {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    return-object v5
.end method

.method public setCheckBoxClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 32
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mChecked:Z

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 35
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mEnabled:Z

    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mCheckBox:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-boolean v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setEnabled(Z)V

    .line 41
    return-void
.end method

.method public switchState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->switchState(Z)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBaseCheckBoxClickForSetting;->setEnabled(Z)V

    .line 92
    return-void
.end method
