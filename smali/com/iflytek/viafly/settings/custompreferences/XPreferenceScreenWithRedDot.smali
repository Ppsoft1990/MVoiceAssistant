.class public Lcom/iflytek/viafly/settings/custompreferences/XPreferenceScreenWithRedDot;
.super Lcom/iflytek/viafly/settings/custompreferences/XPreferenceScreen;


# instance fields
.field private mRedDot:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceScreen;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceScreen;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceScreenWithRedDot;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v1, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceScreenWithRedDot;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v2, "image.little_red_dot"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceScreenWithRedDot;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public setRedDotVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceScreenWithRedDot;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/settings/custompreferences/XPreferenceScreenWithRedDot;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
