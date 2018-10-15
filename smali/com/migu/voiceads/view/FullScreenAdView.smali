.class public Lcom/migu/voiceads/view/FullScreenAdView;
.super Lcom/migu/voiceads/view/AdView;


# instance fields
.field private v:Ljava/lang/String;

.field private w:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/migu/voiceads/bussiness/d;F)V
    .locals 6

    sget-object v4, Lcom/migu/voiceads/bussiness/a$a;->c:Lcom/migu/voiceads/bussiness/a$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/migu/voiceads/view/AdView;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/migu/voiceads/bussiness/a$a;Lcom/migu/voiceads/bussiness/d;)V

    const-string/jumbo v0, "FullScreenAdView"

    iput-object v0, p0, Lcom/migu/voiceads/view/FullScreenAdView;->v:Ljava/lang/String;

    iput p5, p0, Lcom/migu/voiceads/view/FullScreenAdView;->w:F

    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 3

    new-instance v0, Lcom/migu/voiceads/utils/b/a;

    invoke-direct {v0}, Lcom/migu/voiceads/utils/b/a;-><init>()V

    iget-object v1, p0, Lcom/migu/voiceads/view/FullScreenAdView;->g:Lcom/migu/voiceads/a/e;

    iget-object v1, v1, Lcom/migu/voiceads/a/e;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/b/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/migu/voiceads/utils/b/a$a;->a:Lcom/migu/voiceads/utils/b/a$a;

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/b/a;->a(Lcom/migu/voiceads/utils/b/a$a;)V

    new-instance v1, Lcom/migu/voiceads/utils/b/b;

    iget-object v2, p0, Lcom/migu/voiceads/view/FullScreenAdView;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/migu/voiceads/utils/b/b;-><init>(Landroid/content/Context;Lcom/migu/voiceads/utils/b/a;)V

    new-instance v0, Lcom/migu/voiceads/view/k;

    invoke-direct {v0, p0, p1}, Lcom/migu/voiceads/view/k;-><init>(Lcom/migu/voiceads/view/FullScreenAdView;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/utils/b/b;->a(Lcom/migu/voiceads/utils/b/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/migu/voiceads/view/FullScreenAdView;->q:Z

    return-void
.end method

.method public b(Lcom/migu/voiceads/MIGUAdSize;)Z
    .locals 1

    sget-object v0, Lcom/migu/voiceads/MIGUAdSize;->FULLSCREEN:Lcom/migu/voiceads/MIGUAdSize;

    invoke-virtual {p1, v0}, Lcom/migu/voiceads/MIGUAdSize;->isSizeValid(Lcom/migu/voiceads/MIGUAdSize;)Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 8

    iget-object v0, p0, Lcom/migu/voiceads/view/FullScreenAdView;->f:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "show_time_fullscreen"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/migu/voiceads/view/FullScreenAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/migu/voiceads/view/FullScreenAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/migu/voiceads/view/FullScreenAdView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string/jumbo v1, "close_widget"

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v4}, Lcom/migu/voiceads/view/FullScreenAdView;->a(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/migu/voiceads/view/j;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/view/j;-><init>(Lcom/migu/voiceads/view/FullScreenAdView;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "close_widget"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public k()V
    .locals 6

    const/16 v5, 0xbb8

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/migu/voiceads/view/FullScreenAdView;->f:Lcom/migu/voiceads/a/a;

    const-string/jumbo v1, "show_time_fullscreen"

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Ad_Android_SDK"

    const-string/jumbo v3, "Invalid setting of fullscreen show time!"

    invoke-static {v2, v3}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_0
    if-lt v0, v5, :cond_1

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/migu/voiceads/view/FullScreenAdView;->o:Lcom/migu/voiceads/bussiness/c;

    invoke-virtual {v1, v4, v0}, Lcom/migu/voiceads/bussiness/c;->a(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/view/FullScreenAdView;->o:Lcom/migu/voiceads/bussiness/c;

    invoke-virtual {v0, v4, v5}, Lcom/migu/voiceads/bussiness/c;->a(II)V

    goto :goto_1
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/view/FullScreenAdView;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/migu/voiceads/view/FullScreenAdView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/a/d;->v(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/migu/voiceads/view/FullScreenAdView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/migu/voiceads/a/d;->w(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/migu/voiceads/view/FullScreenAdView;->w:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/migu/voiceads/view/FullScreenAdView;->a(II)V

    invoke-virtual {p0}, Lcom/migu/voiceads/view/FullScreenAdView;->m()V

    return-void
.end method

.method protected m()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/view/FullScreenAdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/FullScreenAdView;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/migu/voiceads/view/FullScreenAdView;->b:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Ad_Android_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FullScreenAdView attachToActivity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/view/FullScreenAdView;->l:Lcom/migu/voiceads/bussiness/d;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/d;->a()Z

    return-void
.end method
