.class public Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;
.super Ljava/lang/Object;
.source "BannerHolderView.java"

# interfaces
.implements Lajd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajd",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private iconTextView:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 28
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030009

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 29
    .local v1, "layout":Landroid/widget/RelativeLayout;
    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->imageView:Landroid/widget/ImageView;

    .line 30
    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->iconTextView:Landroid/widget/TextView;

    .line 31
    return-object v1
.end method

.method public getBannerADImageOptions()Lbcu;
    .locals 3

    .prologue
    .line 54
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    const v2, 0x7f020007

    .line 56
    invoke-virtual {v1, v2}, Lbcu$a;->a(I)Lbcu$a;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 63
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 65
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 66
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public bridge synthetic updateUI(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->updateUI(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateUI(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "adInfo"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->iconTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    :goto_1
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->iconTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5e7f\u544a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->iconTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/banner/BannerHolderView;->getBannerADImageOptions()Lbcu;

    move-result-object v2

    invoke-virtual {v0, p3, v1, v2}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto :goto_1
.end method
