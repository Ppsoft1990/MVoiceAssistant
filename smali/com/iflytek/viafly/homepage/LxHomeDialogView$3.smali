.class Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;
.super Ljava/lang/Object;
.source "LxHomeDialogView.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/LxHomeDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;->a:Lcom/iflytek/viafly/homepage/LxHomeDialogView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView;->c(Lcom/iflytek/viafly/homepage/LxHomeDialogView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/homepage/LxHomeDialogView$3$1;-><init>(Lcom/iflytek/viafly/homepage/LxHomeDialogView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_0
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 236
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 275
    return-void
.end method
