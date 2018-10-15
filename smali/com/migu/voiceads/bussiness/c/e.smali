.class public Lcom/migu/voiceads/bussiness/c/e;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/migu/voiceads/MIGUNativeAdListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/migu/voiceads/bussiness/c/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/bussiness/c/e;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/migu/voiceads/MIGUNativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/c/e;->a:Lcom/migu/voiceads/MIGUNativeAdListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/migu/voiceads/bussiness/c/e;->a:Lcom/migu/voiceads/MIGUNativeAdListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/migu/voiceads/MIGUNativeAdListener;->onAdLoaded(Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/migu/voiceads/bussiness/c/e;->a:Lcom/migu/voiceads/MIGUNativeAdListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/migu/voiceads/MIGUAdError;

    invoke-interface {v1, v0}, Lcom/migu/voiceads/MIGUNativeAdListener;->onAdFailed(Lcom/migu/voiceads/MIGUAdError;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
