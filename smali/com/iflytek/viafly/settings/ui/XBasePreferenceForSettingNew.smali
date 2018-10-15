.class public abstract Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XBasePreferenceForSettingNew.java"


# static fields
.field private static final TITLE_ID:I = 0x5f000000


# instance fields
.field protected leftLine:Landroid/view/View;

.field private singleBottomMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 91
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->leftLine:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 93
    .local v0, "isSummaryEmpty":Z
    if-eqz v0, :cond_0

    .line 94
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->leftLine:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 96
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 99
    .end local v0    # "isSummaryEmpty":Z
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->getView()Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v7, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v7, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .local v7, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 33
    .local v0, "a":I
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .line 34
    .local v1, "d":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iput v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->singleBottomMargin:I

    .line 36
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->leftLine:Landroid/view/View;

    .line 37
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    const-wide/high16 v10, 0x4032000000000000L    # 18.0

    invoke-static {p1, v10, v11}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    .local v6, "lineParms":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 39
    const-wide/high16 v8, 0x4031000000000000L    # 17.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 40
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 41
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->leftLine:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->leftLine:Landroid/view/View;

    const-string/jumbo v9, "#4798D7"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->leftLine:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    .line 45
    new-instance v8, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v8, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    .line 46
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/high16 v9, 0x5f000000

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setId(I)V

    .line 47
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v9, "style_xpreference_title_for_setting_new"

    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 49
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v2, "lParams1":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v8, v0, v1

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 51
    const-wide/high16 v8, 0x402c000000000000L    # 14.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 52
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v7, v8, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v8, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v8, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    .line 55
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v9, "style_xpreference_summary_for_setting_new"

    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 58
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v3, "lParams2":Landroid/widget/RelativeLayout$LayoutParams;
    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 61
    const/4 v8, 0x3

    const/high16 v9, 0x5f000000

    invoke-virtual {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 62
    const/4 v8, 0x5

    const/high16 v9, 0x5f000000

    invoke-virtual {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 63
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    invoke-static {p1, v12, v13}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 64
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v7, v8, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v8, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v8, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    .line 67
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v9, "image.setting_list_item_divider"

    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 68
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 70
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v4, "lParams3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mBottomLine:Landroid/view/View;

    .line 75
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mBottomLine:Landroid/view/View;

    const-string/jumbo v9, "#e3eaef"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mBottomLine:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 77
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v5, "lParams4":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v8, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mBottomLine:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const-string/jumbo v8, "statelist.setting_item_background_states"

    sget-object v9, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 86
    return-object v7
.end method

.method public setSummaryMargin(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMargin"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 104
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 105
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    return-void
.end method

.method public switchState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_xpreference_title_for_setting_new"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 118
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_xpreference_summary_for_setting_new"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_xpreference_title_gray_for_setting_new"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSettingNew;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_xpreference_summary_gray_for_setting_new"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method
