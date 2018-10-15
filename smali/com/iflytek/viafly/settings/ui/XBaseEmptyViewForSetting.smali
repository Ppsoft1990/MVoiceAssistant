.class public Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XBaseEmptyViewForSetting.java"


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
.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    .line 44
    new-instance v3, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .local v3, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setClickable(Z)V

    .line 47
    const/high16 v6, 0x60000

    invoke-virtual {v3, v6}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setDescendantFocusability(I)V

    .line 49
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .local v1, "left":I
    move v2, v1

    .line 50
    .local v2, "right":I
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    .local v5, "top":I
    move v0, v5

    .line 51
    .local v0, "bottom":I
    invoke-virtual {v3, v1, v5, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    .line 53
    new-instance v6, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v6, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    .line 54
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    .line 55
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v7, "#405061"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 56
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v4, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xf

    invoke-virtual {v4, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 59
    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v6, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-object v3
.end method

.method public setHeight(Landroid/content/Context;F)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # F

    .prologue
    .line 32
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->getView()Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 38
    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 40
    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XBaseEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method
