.class public Lcom/iflytek/framework/browser/mic/MainCommandWordView;
.super Landroid/widget/LinearLayout;
.source "MainCommandWordView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;
    }
.end annotation


# instance fields
.field protected a:Lqv;

.field private b:Lqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqw",
            "<",
            "Lqx;",
            "Lqx;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lqr;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqr;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "micController"    # Lqr;

    .prologue
    .line 39
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p2, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->e:Lqr;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/mic/MainCommandWordView;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->f:J

    return-wide v0
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/mic/MainCommandWordView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainCommandWordView;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/iflytek/framework/browser/mic/MainCommandWordView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainCommandWordView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->d:Ljava/util/List;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "srcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    const/4 p1, 0x0

    .line 100
    .end local p1    # "srcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .line 96
    .restart local p1    # "srcList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 97
    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lazt;->a(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v1, Lqy;

    invoke-direct {v1, p1}, Lqy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a:Lqv;

    .line 50
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a:Lqv;

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a(Lqv;)V

    .line 51
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->c:Landroid/widget/LinearLayout;

    .line 52
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    return-void
.end method

.method static synthetic b(Lcom/iflytek/framework/browser/mic/MainCommandWordView;)Lqr;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->e:Lqr;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/text/Spanned;
    .locals 4

    .prologue
    .line 104
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    const/4 v2, 0x0

    .line 109
    :goto_0
    return-object v2

    .line 107
    :cond_1
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iget-object v3, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 108
    .local v1, "temp":I
    iget-object v2, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, "html":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_0
.end method

.method public a(Lqv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv",
            "<",
            "Lqx;",
            "Lqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "model":Lqv;, "Lqv<Lqx;Lqx;>;"
    new-instance v0, Lqw;

    invoke-direct {v0, p1}, Lqw;-><init>(Lqv;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->b:Lqw;

    .line 60
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->b:Lqw;

    new-instance v1, Lcom/iflytek/framework/browser/mic/MainCommandWordView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView$1;-><init>(Lcom/iflytek/framework/browser/mic/MainCommandWordView;)V

    invoke-virtual {v0, v1}, Lqw;->a(Lqw$b;)V

    .line 89
    iget-object v0, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->b:Lqw;

    invoke-virtual {v0}, Lqw;->a()V

    .line 90
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    .line 113
    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->d:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->c:Landroid/widget/LinearLayout;

    if-nez v4, :cond_1

    .line 128
    :cond_0
    return-void

    .line 117
    :cond_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 121
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "tmp":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/framework/browser/mic/MainCommandWordItemView;

    invoke-virtual {p0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/iflytek/framework/browser/mic/MainCommandWordItemView;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "itemView":Lcom/iflytek/framework/browser/mic/MainCommandWordItemView;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iflytek/framework/browser/mic/MainCommandWordItemView;->setText(Landroid/text/Spanned;)V

    .line 124
    new-instance v5, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainCommandWordItemView;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/iflytek/framework/browser/mic/MainCommandWordView$a;-><init>(Lcom/iflytek/framework/browser/mic/MainCommandWordView;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/iflytek/framework/browser/mic/MainCommandWordItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
