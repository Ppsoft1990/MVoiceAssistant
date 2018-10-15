.class public Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XPreferenceEmptyViewForSetting.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v3, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v3, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v3, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setClickable(Z)V

    .line 57
    const/high16 v5, 0x60000

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setDescendantFocusability(I)V

    .line 58
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setMinimumHeight(I)V

    .line 60
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    .local v1, "left":I
    move v2, v1

    .line 61
    .local v2, "right":I
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    .local v4, "top":I
    move v0, v4

    .line 62
    .local v0, "bottom":I
    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    .line 64
    new-instance v5, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v5, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    .line 65
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v6, 0x2

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    .line 66
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v6, "#515151"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 68
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v3, v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    .line 70
    return-object v3
.end method

.method public setHeight(Landroid/content/Context;F)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # F

    .prologue
    .line 43
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->getView()Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 49
    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 51
    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->setTitle(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isVisiable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    if-eqz p2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "#515151"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceEmptyViewForSetting;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method
