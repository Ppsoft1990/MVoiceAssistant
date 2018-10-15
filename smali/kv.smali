.class public final Lkv;
.super Ljava/lang/Object;

# interfaces
.implements Lkq;


# instance fields
.field private a:Lkq;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lkq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkv;->a:Lkq;

    new-instance v0, Lkw;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lkw;-><init>(Lkv;Landroid/os/Looper;)V

    iput-object v0, p0, Lkv;->b:Landroid/os/Handler;

    iput-object p1, p0, Lkv;->a:Lkq;

    return-void
.end method

.method static synthetic a(Lkv;)Lkq;
    .locals 1

    iget-object v0, p0, Lkv;->a:Lkq;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lkv;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lkv;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lkv;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lkv;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a([B)V
    .locals 2

    iget-object v0, p0, Lkv;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lkv;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
