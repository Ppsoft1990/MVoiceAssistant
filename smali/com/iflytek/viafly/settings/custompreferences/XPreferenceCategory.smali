.class public Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCategory;
.super Lcom/iflytek/viafly/settings/custompreferences/XPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setClickable(Z)V

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    new-instance v2, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCategory;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v2, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCategory;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v3, "style_xpreference_category"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    iget-object v2, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCategory;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v2, v5, v5, v1, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCategory;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCategory;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v5}, Lcom/iflytek/base/skin/customView/XTextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceCategory;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method
