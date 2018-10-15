.class public Lcom/cmcc/migusso/sdk/view/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->d:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->d:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_titlebar"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_titlebar_title"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_titlebar_right_tv"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_title_underline"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_titlebar_left_back_iv"

    invoke-static {v0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/view/TitleBar;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
