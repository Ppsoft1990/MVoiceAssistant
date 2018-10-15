.class Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$CycleScrollHandler;
.super Landroid/os/Handler;
.source "ConvenientBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CycleScrollHandler"
.end annotation


# instance fields
.field private final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)V
    .locals 1
    .param p1, "convenientBanner"    # Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$CycleScrollHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 114
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner$CycleScrollHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;

    .line 121
    .local v0, "convenientBanner":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->access$000(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->access$100(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    :try_start_0
    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->access$000(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 125
    .local v2, "page":I
    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->access$000(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/homepage/banner/view/CBLoopViewPager;->setCurrentItem(I)V

    .line 126
    const-string/jumbo v3, "ConvenientBanner"

    const-string/jumbo v4, "scroll hadlerscroll"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {v0}, Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;->access$200(Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "convenientBanner":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    .end local v2    # "page":I
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v0    # "convenientBanner":Lcom/iflytek/viafly/ui/view/banner/ConvenientBanner;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ConvenientBanner"

    const-string/jumbo v4, "auto scroll fail"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
