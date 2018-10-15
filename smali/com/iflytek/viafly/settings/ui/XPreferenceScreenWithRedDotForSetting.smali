.class public Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;
.super Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;
.source "XPreferenceScreenWithRedDotForSetting.java"


# instance fields
.field private mRedDot:Lcom/iflytek/base/skin/customView/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 21
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v1

    .line 23
    .local v1, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v2, Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {v2, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    .line 24
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v3, "image.little_red_dot"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 26
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 27
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 28
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 29
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 31
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    return-object v1
.end method

.method public setRedDotVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/XPreferenceScreenWithRedDotForSetting;->mRedDot:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 43
    :cond_0
    return-void
.end method
