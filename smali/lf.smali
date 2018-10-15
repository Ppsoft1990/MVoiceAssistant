.class final Llf;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lle;


# direct methods
.method constructor <init>(Lle;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Llf;->a:Lle;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Llf;->a:Lle;

    invoke-static {v0}, Lle;->a(Lle;)Lkq;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "MscSpeechLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SpeechListener onMsg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Llf;->a:Lle;

    invoke-static {v0}, Lle;->a(Lle;)Lkq;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Lkq;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Llf;->a:Lle;

    invoke-static {v0}, Lle;->a(Lle;)Lkq;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v0}, Lkq;->a([B)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Llf;->a:Lle;

    invoke-static {v0}, Lle;->a(Lle;)Lkq;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lkq;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
