.class public Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;
.super Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XBasePreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 4

    new-instance v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setClickable(Z)V

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setDescendantFocusability(I)V

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    new-instance v1, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v2, "#515151"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public setHeight(Landroid/content/Context;F)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v4, v4, v1, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "#515151"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceEmptyView;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto :goto_0
.end method
