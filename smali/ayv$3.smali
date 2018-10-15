.class Layv$3;
.super Ljava/lang/Object;
.source "TranslatePicPresenter.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layv;


# direct methods
.method constructor <init>(Layv;)V
    .locals 0
    .param p1, "this$0"    # Layv;

    .prologue
    .line 301
    iput-object p1, p0, Layv$3;->a:Layv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Layv$3$1;

    invoke-direct {v1, p0}, Layv$3$1;-><init>(Layv$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_0
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 303
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 330
    return-void
.end method
