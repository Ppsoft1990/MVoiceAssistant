.class public final Lle;
.super Ljava/lang/Object;

# interfaces
.implements Lkq;


# instance fields
.field final synthetic a:Lld;

.field private b:Lkq;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lld;Lkq;)V
    .locals 2

    iput-object p1, p0, Lle;->a:Lld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lle;->b:Lkq;

    new-instance v0, Llf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llf;-><init>(Lle;Landroid/os/Looper;)V

    iput-object v0, p0, Lle;->c:Landroid/os/Handler;

    iput-object p2, p0, Lle;->b:Lkq;

    return-void
.end method

.method static synthetic a(Lle;)Lkq;
    .locals 1

    iget-object v0, p0, Lle;->b:Lkq;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lle;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lle;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lle;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lle;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a([B)V
    .locals 2

    iget-object v0, p0, Lle;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lle;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
