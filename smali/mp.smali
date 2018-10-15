.class final Lmp;
.super Ljava/lang/Object;

# interfaces
.implements Lkr;


# instance fields
.field final synthetic a:Lmo;

.field private b:Lkr;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lmo;Lkr;)V
    .locals 2

    iput-object p1, p0, Lmp;->a:Lmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmp;->b:Lkr;

    new-instance v0, Lmq;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmq;-><init>(Lmp;Landroid/os/Looper;)V

    iput-object v0, p0, Lmp;->c:Landroid/os/Handler;

    iput-object p2, p0, Lmp;->b:Lkr;

    return-void
.end method

.method static synthetic a(Lmp;)Lkr;
    .locals 1

    iget-object v0, p0, Lmp;->b:Lkr;

    return-object v0
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lmp;->a:Lmo;

    invoke-static {v0}, Lmo;->a(Lmo;)Lla;

    move-result-object v0

    invoke-virtual {v0}, Lla;->j()Lmc;

    move-result-object v0

    const-string/jumbo v1, "isv_audio_path"

    invoke-virtual {v0, v1}, Lmc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmp;->a:Lmo;

    invoke-static {v0}, Lmo;->b(Lmo;)Lla;

    move-result-object v0

    check-cast v0, Lkx;

    invoke-virtual {v0}, Lkx;->c()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-static {v0, v1}, Llr;->a(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmp;->a:Lmo;

    invoke-static {v0}, Lmo;->c(Lmo;)Lla;

    move-result-object v0

    invoke-virtual {v0}, Lla;->j()Lmc;

    move-result-object v0

    const-string/jumbo v2, "audio_format"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lmc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmp;->a:Lmo;

    invoke-static {v2}, Lmo;->e(Lmo;)Lla;

    move-result-object v2

    invoke-virtual {v2}, Lla;->j()Lmc;

    move-result-object v2

    const-string/jumbo v3, "sample_rate"

    iget-object v4, p0, Lmp;->a:Lmo;

    invoke-static {v4}, Lmo;->d(Lmo;)Lla;

    move-result-object v4

    iget v4, v4, Lla;->l:I

    invoke-virtual {v2, v3, v4}, Lmc;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Llr;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lmp;->a:Lmo;

    invoke-static {v0}, Lmo;->f(Lmo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmp;->a:Lmo;

    invoke-static {v1}, Lmo;->g(Lmo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lls;->b(Landroid/content/Context;Ljava/lang/Boolean;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lmp;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lmp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(IIILandroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lmp;->c:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(I[B)V
    .locals 3

    iget-object v0, p0, Lmp;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lmp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    invoke-direct {p0}, Lmp;->c()V

    iget-object v0, p0, Lmp;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lmp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lks;)V
    .locals 2

    invoke-direct {p0}, Lmp;->c()V

    iget-object v0, p0, Lmp;->c:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lmp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lmp;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lmp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
