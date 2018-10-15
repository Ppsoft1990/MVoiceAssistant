.class Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner$a;
.super Landroid/os/Handler;
.source "HomeConvenientBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)V
    .locals 1
    .param p1, "convenientBanner"    # Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner$a;->a:Ljava/lang/ref/WeakReference;

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 117
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;

    .line 119
    .local v0, "convenientBanner":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
    if-eqz v0, :cond_0

    .line 120
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->b(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    :try_start_0
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 123
    .local v2, "page":I
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->a(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCurrentItem(I)V

    .line 124
    const-string/jumbo v3, "ConvenientBanner"

    const-string/jumbo v4, "scroll hadlerscroll"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;->c(Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "convenientBanner":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
    .end local v2    # "page":I
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0    # "convenientBanner":Lcom/iflytek/viafly/homepage/banner/view/HomeConvenientBanner;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ConvenientBanner"

    const-string/jumbo v4, "auto scroll fail"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
