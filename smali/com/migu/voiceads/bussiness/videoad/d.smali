.class public Lcom/migu/voiceads/bussiness/videoad/d;
.super Landroid/os/Handler;


# instance fields
.field public a:Lcom/migu/voiceads/MIGUVideoAdListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/videoad/d;->a:Lcom/migu/voiceads/MIGUVideoAdListener;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/migu/voiceads/bussiness/videoad/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/bussiness/videoad/d;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/migu/voiceads/MIGUVideoAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/videoad/d;->a:Lcom/migu/voiceads/MIGUVideoAdListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/migu/voiceads/bussiness/videoad/d;->a:Lcom/migu/voiceads/MIGUVideoAdListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/migu/voiceads/MIGUVideoAdListener;->onAdLoaded(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/migu/voiceads/bussiness/videoad/d;->a:Lcom/migu/voiceads/MIGUVideoAdListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/migu/voiceads/MIGUAdError;

    invoke-interface {v1, v0}, Lcom/migu/voiceads/MIGUVideoAdListener;->onAdFailed(Lcom/migu/voiceads/MIGUAdError;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
