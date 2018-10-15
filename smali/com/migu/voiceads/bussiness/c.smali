.class public Lcom/migu/voiceads/bussiness/c;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/migu/voiceads/MIGUAdListener;

.field private b:Lcom/migu/voiceads/bussiness/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/migu/voiceads/bussiness/c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/migu/voiceads/bussiness/c;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/migu/voiceads/bussiness/c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/bussiness/c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/migu/voiceads/MIGUAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/c;->a:Lcom/migu/voiceads/MIGUAdListener;

    return-void
.end method

.method public a(Lcom/migu/voiceads/bussiness/d;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/c;->b:Lcom/migu/voiceads/bussiness/d;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c;->a:Lcom/migu/voiceads/MIGUAdListener;

    invoke-interface {v0}, Lcom/migu/voiceads/MIGUAdListener;->onAdReceive()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/migu/voiceads/bussiness/c;->a:Lcom/migu/voiceads/MIGUAdListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/migu/voiceads/MIGUAdError;

    invoke-interface {v1, v0}, Lcom/migu/voiceads/MIGUAdListener;->onAdFailed(Lcom/migu/voiceads/MIGUAdError;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c;->a:Lcom/migu/voiceads/MIGUAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/migu/voiceads/MIGUAdListener;->onAdClick(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c;->a:Lcom/migu/voiceads/MIGUAdListener;

    invoke-interface {v0}, Lcom/migu/voiceads/MIGUAdListener;->onAdClose()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c;->b:Lcom/migu/voiceads/bussiness/d;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/d;->a()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
