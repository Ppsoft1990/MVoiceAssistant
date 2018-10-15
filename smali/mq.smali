.class final Lmq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lmp;


# direct methods
.method constructor <init>(Lmp;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmq;->a:Lmp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lmq;->a:Lmp;

    invoke-static {v0}, Lmp;->a(Lmp;)Lkr;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lmq;->a:Lmp;

    invoke-static {v0}, Lmp;->a(Lmp;)Lkr;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lkr;->a(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lmq;->a:Lmp;

    invoke-static {v0}, Lmp;->a(Lmp;)Lkr;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lks;

    invoke-interface {v1, v0}, Lkr;->a(Lks;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lmq;->a:Lmp;

    invoke-static {v0}, Lmp;->a(Lmp;)Lkr;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lkr;->a(I[B)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lmq;->a:Lmp;

    invoke-static {v0}, Lmp;->a(Lmp;)Lkr;

    move-result-object v0

    invoke-interface {v0}, Lkr;->a()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lmq;->a:Lmp;

    invoke-static {v0}, Lmp;->a(Lmp;)Lkr;

    move-result-object v0

    invoke-interface {v0}, Lkr;->b()V

    goto :goto_1

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object v1, p0, Lmq;->a:Lmp;

    invoke-static {v1}, Lmp;->a(Lmp;)Lkr;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lkr;->a(IIILandroid/os/Bundle;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
