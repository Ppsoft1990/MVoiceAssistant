.class public abstract Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.super Lcom/iflytek/viafly/settings/custompreferences/XPreference;
.source "XBasePreferenceForSetting.java"


# static fields
.field private static final TITLE_ID:I = 0x5f000000


# instance fields
.field protected mBottomLine:Landroid/view/View;

.field protected mListDivider:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XPreference;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/16 v8, 0xf

    .line 85
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v5, :cond_0

    .line 86
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 87
    .local v1, "isTitleEmpty":Z
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 89
    .local v0, "isSummaryEmpty":Z
    const-string/jumbo v5, "preference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz v0, :cond_1

    .line 91
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 92
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    .end local v0    # "isSummaryEmpty":Z
    .end local v1    # "isTitleEmpty":Z
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->getView()Landroid/view/View;

    move-result-object v5

    return-object v5

    .line 93
    .restart local v0    # "isSummaryEmpty":Z
    .restart local v1    # "isTitleEmpty":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 94
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    .restart local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 97
    .end local v2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    .local v3, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 99
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    .local v4, "lp2":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v7, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v7, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .local v7, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 36
    .local v0, "a":I
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .line 37
    .local v1, "b":I
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static {p1, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    .line 39
    .local v2, "c":I
    new-instance v8, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v8, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    .line 40
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/high16 v9, 0x5f000000

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setId(I)V

    .line 41
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v9, "style_xpreference_title_for_setting"

    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 43
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v3, "lParams1":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 45
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 46
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 47
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v7, v8, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v8, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v8, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    .line 50
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v9, "style_xpreference_summary_for_setting"

    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 53
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v4, "lParams2":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 55
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 56
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 57
    const/4 v8, 0x3

    const/high16 v9, 0x5f000000

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 58
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v7, v8, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v8, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v8, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    .line 61
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v9, "image.setting_list_item_divider"

    sget-object v10, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v8, v9, v10}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 62
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 64
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v5, "lParams3":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 68
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mBottomLine:Landroid/view/View;

    .line 69
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mBottomLine:Landroid/view/View;

    const-string/jumbo v9, "#e1e1e1"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mBottomLine:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 71
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v6, "lParams4":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    const/4 v9, -0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v8, v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mBottomLine:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mBottomLine:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    .line 78
    const-string/jumbo v8, "statelist.setting_item_background_states"

    sget-object v9, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v7, v8, v9}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 80
    return-object v7
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->getView()Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "rootView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 181
    :cond_0
    return-void
.end method

.method public setBottomLine(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 130
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v1, "lParams4":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 132
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    .line 133
    .local v0, "a":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 134
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mBottomLine:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void
.end method

.method public setBottomLineVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mBottomLine:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 168
    if-eqz p1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mBottomLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mBottomLine:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setItemBackground(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    return-void
.end method

.method public setItemDividerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public setLayoutMinHeight(Landroid/content/Context;F)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # F

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->getView()Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 118
    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->getView()Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public setTitleSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 157
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    .line 160
    :cond_0
    return-void
.end method

.method public switchState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_xpreference_title_for_setting"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_xpreference_summary_for_setting"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 150
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_xpreference_title_gray_for_setting"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 147
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "style_xpreference_summary_gray_for_setting"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method
