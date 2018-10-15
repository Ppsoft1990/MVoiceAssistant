.class Lazw$1;
.super Ljava/lang/Object;
.source "SoftBarUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazw;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lazw;


# direct methods
.method constructor <init>(Lazw;)V
    .locals 0
    .param p1, "this$0"    # Lazw;

    .prologue
    .line 72
    iput-object p1, p0, Lazw$1;->a:Lazw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "hasNavBarLast":Z
    const/4 v2, 0x0

    .line 78
    .local v2, "softInputOpen":Z
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->a(Lazw;)I

    move-result v3

    if-lez v3, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_0
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->b(Lazw;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->b(Lazw;)I

    move-result v3

    iget-object v4, p0, Lazw$1;->a:Lazw;

    invoke-static {v4}, Lazw;->a(Lazw;)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 82
    const/4 v2, 0x1

    .line 84
    :cond_1
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {}, Lazw;->e()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lazw;->c(Landroid/app/Activity;)I

    move-result v4

    invoke-static {v3, v4}, Lazw;->a(Lazw;I)I

    .line 85
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {}, Lazw;->e()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lazw;->e(Landroid/app/Activity;)I

    move-result v4

    invoke-static {v3, v4}, Lazw;->b(Lazw;I)I

    .line 86
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->c(Lazw;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->b(Lazw;)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->b(Lazw;)I

    move-result v3

    iget-object v4, p0, Lazw$1;->a:Lazw;

    invoke-static {v4}, Lazw;->a(Lazw;)I

    move-result v4

    if-le v3, v4, :cond_4

    .line 88
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_SOFT_INPUT_HEIGHT"

    iget-object v5, p0, Lazw$1;->a:Lazw;

    invoke-static {v5}, Lazw;->b(Lazw;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;I)V

    .line 89
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->b(Lazw;)I

    move-result v3

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v3, v4, :cond_2

    .line 90
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->c(Lazw;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lazw$1$1;

    invoke-direct {v4, p0}, Lazw$1$1;-><init>(Lazw$1;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->a(Lazw;)I

    move-result v3

    if-nez v3, :cond_3

    .line 106
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->b(Lazw;)I

    move-result v3

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v3, v4, :cond_3

    .line 107
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->c(Lazw;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lazw$1$2;

    invoke-direct {v4, p0}, Lazw$1$2;-><init>(Lazw$1;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_3
    return-void

    .line 97
    :cond_4
    if-eqz v2, :cond_2

    .line 98
    const-string/jumbo v3, "SoftBarUtil"

    const-string/jumbo v4, "\u5173\u95ed\u8f93\u5165\u6cd5"

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->e(Lazw;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lazw$1;->a:Lazw;

    invoke-static {v3}, Lazw;->e(Lazw;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
