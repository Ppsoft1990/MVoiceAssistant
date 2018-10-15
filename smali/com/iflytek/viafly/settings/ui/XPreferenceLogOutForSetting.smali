.class public Lcom/iflytek/viafly/settings/ui/XPreferenceLogOutForSetting;
.super Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;
.source "XPreferenceLogOutForSetting.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 24
    invoke-super {p0, p1}, Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;->onBindView(Landroid/content/Context;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v2

    .line 26
    .local v2, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    new-instance v0, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "logTv":Lcom/iflytek/base/skin/customView/XTextView;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 29
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 30
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 31
    const-string/jumbo v3, "\u9000\u51fa\u767b\u5f55"

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const-string/jumbo v3, "#2076EA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 33
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(F)V

    .line 34
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 36
    invoke-virtual {v2, v0, v1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-object v2
.end method
