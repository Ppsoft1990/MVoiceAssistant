.class Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;
.super Landroid/os/Handler;
.source "BannerADDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ad/business/BannerADDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field private mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/ad/business/BannerADDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    .prologue
    .line 483
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 484
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    .line 485
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 489
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    .line 490
    .local v1, "outer":Lcom/iflytek/viafly/ad/business/BannerADDataManager;
    if-eqz v1, :cond_0

    .line 491
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 493
    :try_start_0
    invoke-static {v1}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->access$100(Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BannerADDataManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
