.class Lbas$1;
.super Ljava/lang/Object;
.source "NoteSpeakHandler.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbas;


# direct methods
.method constructor <init>(Lbas;)V
    .locals 0
    .param p1, "this$0"    # Lbas;

    .prologue
    .line 64
    iput-object p1, p0, Lbas$1;->a:Lbas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lbas$1;->a:Lbas;

    invoke-static {v0}, Lbas;->a(Lbas;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInterruptedCallback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lbas;->a:Lbar;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lbas;->a:Lbar;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lbar;->a(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lbas$1;->a:Lbas;

    invoke-static {v0}, Lbas;->a(Lbas;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayCompletedCallBack|error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lbas;->a:Lbar;

    if-eqz v0, :cond_0

    .line 94
    sparse-switch p1, :sswitch_data_0

    .line 105
    sget-object v0, Lbas;->a:Lbar;

    invoke-interface {v0}, Lbar;->a()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 96
    :sswitch_0
    sget-object v0, Lbas;->a:Lbar;

    invoke-interface {v0}, Lbar;->b()V

    goto :goto_0

    .line 99
    :sswitch_1
    sget-object v0, Lbas;->a:Lbar;

    invoke-interface {v0}, Lbar;->a()V

    goto :goto_0

    .line 102
    :sswitch_2
    sget-object v0, Lbas;->a:Lbar;

    const-string/jumbo v1, "\u64ad\u62a5\u5b8c\u6210"

    invoke-interface {v0, v1}, Lbar;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x27dd -> :sswitch_1
        0xc3508 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 76
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method
