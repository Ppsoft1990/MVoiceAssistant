.class public Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;
.super Landroid/widget/RelativeLayout;
.source "HomeAudioItemView.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const-string/jumbo v0, "HomeAudioItemView"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->a:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->b:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->a()V

    .line 33
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 36
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030050

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 39
    .local v2, "view":Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    const v3, 0x7f0b02c5

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->c:Landroid/widget/ImageView;

    .line 41
    const v3, 0x7f0b02c6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->d:Landroid/widget/ImageView;

    .line 42
    const v3, 0x7f0b02c7

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->e:Landroid/widget/TextView;

    .line 43
    const v3, 0x7f0b02c8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->f:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const v2, 0x7f0a002e

    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->g:Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->g:Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->g:Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->g:Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->getListOptions()Lbcu;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto :goto_0
.end method


# virtual methods
.method public getListOptions()Lbcu;
    .locals 3

    .prologue
    .line 70
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 72
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 76
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 78
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 80
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public setData(Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;)V
    .locals 1
    .param p1, "itemData"    # Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->g:Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    .line 48
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->g:Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;

    if-nez v0, :cond_0

    .line 49
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->setVisibility(I)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->setVisibility(I)V

    .line 52
    invoke-direct {p0}, Lcom/iflytek/viafly/homepage/audioresource/HomeAudioItemView;->b()V

    goto :goto_0
.end method
