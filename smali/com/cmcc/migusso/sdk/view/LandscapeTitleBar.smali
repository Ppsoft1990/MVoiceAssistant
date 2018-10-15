.class public Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;
.super Landroid/widget/RelativeLayout;
.source "LandscapeTitleBar.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->c:Ljava/lang/String;

    const-string/jumbo v0, "TitleBar"

    invoke-static {p1, v0}, Lcom/cmcc/util/ResourceUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string/jumbo v1, "TitleBar_sso_title_text"

    invoke-static {p1, v1}, Lcom/cmcc/util/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_landscape_titlebar"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_titlebar_left_back"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_titlebar_right"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_titlebar_title"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_titlebar_right_tv"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_title_underline"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_titlebar_left_back_iv"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->b:Landroid/widget/TextView;

    const v2, -0xddddde

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/LandscapeTitleBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
