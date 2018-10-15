.class Lcom/iflytek/viafly/call/CallBusinessManager$3;
.super Ljava/lang/Object;
.source "CallBusinessManager.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/call/CallBusinessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/call/CallBusinessManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager$3;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 1244
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "onInterruptedCallback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$3;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->k(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    .line 1246
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 1238
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "onPlayBeginCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$3;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->l(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    .line 1240
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 1232
    const-string/jumbo v0, "CallBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayCompletedCallBack| error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager$3;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    invoke-static {v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->i(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    .line 1234
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 1250
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 1254
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1228
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 1258
    return-void
.end method
