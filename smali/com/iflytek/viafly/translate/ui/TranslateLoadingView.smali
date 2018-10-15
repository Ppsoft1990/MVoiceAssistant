.class public Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;
.super Landroid/widget/LinearLayout;
.source "TranslateLoadingView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x11

    const/4 v3, -0x1

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    const/4 v4, 0x0

    .line 39
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, "loadingView":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->a:Landroid/widget/ImageView;

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-static {p1, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v0, "loadingParam":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    invoke-static {p1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.ic_mainpage_loading"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->b:Landroid/widget/TextView;

    .line 52
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->b:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->b:Landroid/widget/TextView;

    const-string/jumbo v3, "\u6b63\u5728\u8bc6\u522b..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->addView(Landroid/view/View;)V

    .line 61
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateLoadingView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method
