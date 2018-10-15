.class public abstract Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;
.super Lcom/iflytek/viafly/settings/custompreferences/XPreference;


# static fields
.field private static final TITLE_ID:I = 0x5f000000


# instance fields
.field protected mListDivider:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0xf

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "preference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/iflytek/viafly/settings/custompreferences/XPreference;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 10

    const/high16 v9, 0x5f000000

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, -0x1

    new-instance v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "statelist.setting_list_item_states"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    new-instance v3, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setId(I)V

    iget-object v3, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v4, "style_xpreference_title"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v4, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v3, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v4, "style_xpreference_summary"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    iget-object v3, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v8, v8, v8, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x3

    invoke-virtual {v3, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mSummary:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v2, "image.setting_list_item_divider"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public setItemBackground(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemDividerVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->mListDivider:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    return-void
.end method

.method public setLayoutMinHeight(Landroid/content/Context;F)V
    .locals 4

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method
