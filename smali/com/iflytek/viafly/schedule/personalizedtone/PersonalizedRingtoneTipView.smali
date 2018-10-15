.class public Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneTipView;
.super Lcom/iflytek/base/skin/customView/XLinearLayout;
.source "PersonalizedRingtoneTipView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 19
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v1, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v1, p1}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 22
    .local v1, "textView":Lcom/iflytek/base/skin/customView/XTextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    .local v0, "param":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingtoneTipView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v2

    const-string/jumbo v3, "20"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinHeight(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v2

    const-string/jumbo v3, "20"

    const-string/jumbo v4, "0"

    const-string/jumbo v5, "20"

    const-string/jumbo v6, "0"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setGravity(I)V

    .line 29
    const-string/jumbo v2, "style_item_content_input"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 30
    return-void
.end method
