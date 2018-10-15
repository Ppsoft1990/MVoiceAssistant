.class public Lcom/cmcc/migusso/sdk/view/TopTipView;
.super Landroid/widget/RelativeLayout;
.source "TopTipView.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "TopTipView"

    invoke-static {p1, v0}, Lcom/cmcc/util/ResourceUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string/jumbo v1, "tip_msg"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/view/TopTipView;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v0, "sso_top_tip_view"

    invoke-static {p1, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/cmcc/migusso/sdk/view/TopTipView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string/jumbo v0, "sso_top_tip_msg"

    invoke-static {p1, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/view/TopTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/TopTipView;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TopTipView;->a:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TopTipView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/TopTipView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TopTipView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
