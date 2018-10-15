.class Ltn$6;
.super Ljava/lang/Object;
.source "UserVoiceRegisterFragment.java"

# interfaces
.implements Lalt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltn;


# direct methods
.method constructor <init>(Ltn;)V
    .locals 0
    .param p1, "this$0"    # Ltn;

    .prologue
    .line 577
    iput-object p1, p0, Ltn$6;->a:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "returnCode"    # Ljava/lang/String;
    .param p2, "opCode"    # Ljava/lang/String;
    .param p3, "tip"    # Ljava/lang/String;

    .prologue
    .line 581
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 603
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 585
    const-string/jumbo v2, "UserVoiceRegisterFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 587
    new-instance v2, Laly;

    invoke-direct {v2}, Laly;-><init>()V

    invoke-virtual {v2, p1}, Laly;->b(Ljava/lang/String;)Lalz;

    move-result-object v1

    .line 588
    .local v1, "signLimitInfo":Lalz;
    if-eqz v1, :cond_0

    .line 589
    const-string/jumbo v2, "UserVoiceRegisterFragment"

    const-string/jumbo v3, "user sign success,show window"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 591
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 592
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 593
    iget-object v2, p0, Ltn$6;->a:Ltn;

    invoke-static {v2}, Ltn;->e(Ltn;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "signLimitInfo":Lalz;
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    const-string/jumbo v2, "UserVoiceRegisterFragment"

    const-string/jumbo v3, "onResult result is null "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
