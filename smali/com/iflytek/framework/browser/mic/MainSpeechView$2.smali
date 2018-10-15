.class Lcom/iflytek/framework/browser/mic/MainSpeechView$2;
.super Ljava/lang/Object;
.source "MainSpeechView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/mic/MainSpeechView;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/framework/browser/mic/MainSpeechView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/mic/MainSpeechView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    iput p2, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 228
    iget-object v6, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v6}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-wide/high16 v8, 0x403b000000000000L    # 27.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    .line 229
    .local v5, "verticalSpacing":I
    iget-object v6, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v6}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->b(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Lqp;

    move-result-object v6

    invoke-virtual {v6, v5}, Lqp;->a(I)V

    .line 232
    iget-object v6, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v6}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iget-object v7, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v7}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    int-to-float v7, v7

    add-float v2, v6, v7

    .line 234
    .local v2, "itemHeight":F
    iget v6, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->a:I

    sub-int/2addr v6, v5

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 237
    .local v0, "blankHeight":I
    iget-object v6, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v6}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->b(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Lqp;

    move-result-object v6

    invoke-virtual {v6}, Lqp;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_0

    .line 239
    div-int/lit8 v4, v0, 0x2

    .local v4, "topPadding":I
    move v1, v4

    .line 246
    .local v1, "indicatorHeight":I
    :goto_0
    iget-object v6, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v6}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->c(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6, v10, v4, v10, v10}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 248
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/iflytek/framework/browser/mic/MainSpeechView$2;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-static {v6}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->d(Lcom/iflytek/framework/browser/mic/MainSpeechView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    return-void

    .line 242
    .end local v1    # "indicatorHeight":I
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "topPadding":I
    :cond_0
    mul-int/lit8 v6, v0, 0x2

    div-int/lit8 v4, v6, 0x5

    .line 243
    .restart local v4    # "topPadding":I
    mul-int/lit8 v6, v0, 0x3

    div-int/lit8 v1, v6, 0x5

    .restart local v1    # "indicatorHeight":I
    goto :goto_0
.end method
