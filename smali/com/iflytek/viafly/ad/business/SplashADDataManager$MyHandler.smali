.class Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;
.super Landroid/os/Handler;
.source "SplashADDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ad/business/SplashADDataManager;
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
            "Lcom/iflytek/viafly/ad/business/SplashADDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/ad/business/SplashADDataManager;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    .prologue
    .line 382
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 383
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    .line 384
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    .line 389
    .local v0, "outer":Lcom/iflytek/viafly/ad/business/SplashADDataManager;
    if-eqz v0, :cond_0

    .line 390
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 391
    invoke-static {v0}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->access$200(Lcom/iflytek/viafly/ad/business/SplashADDataManager;)V

    .line 394
    :cond_0
    return-void
.end method
