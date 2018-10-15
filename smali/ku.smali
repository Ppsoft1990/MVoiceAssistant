.class public Lku;
.super Lla;


# instance fields
.field private a:Lkz;

.field private b:Lkq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lla;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    new-instance v0, Lkz;

    invoke-direct {v0}, Lkz;-><init>()V

    iput-object v0, p0, Lku;->a:Lkz;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-class v1, Lku;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lku;->a:Lkz;

    iget-object v2, p0, Lku;->m:Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Lkz;->a(Landroid/content/Context;Lla;)I

    move-result v0

    const-string/jumbo v2, "{\'ret\':%d,\'cmd\':%s}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lku;->j()Lmc;

    move-result-object v4

    const-string/jumbo v5, "cmd"

    invoke-virtual {v4, v5}, Lmc;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lku;->b:Lkq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lku;->b:Lkq;

    invoke-virtual {p0}, Lku;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v2, v0}, Lkq;->a([B)V

    :cond_0
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lku;->b(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Lcom/iflytek/cloud/SpeechError;)V
    .locals 1

    invoke-super {p0, p1}, Lla;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lku;->b:Lkq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lku;->b:Lkq;

    invoke-interface {v0, p1}, Lkq;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_0
    return-void
.end method

.method public final a(Lmc;Lkv;)V
    .locals 2

    iput-object p2, p0, Lku;->b:Lkq;

    invoke-virtual {p0, p1}, Lku;->a(Lmc;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lku;->b(Landroid/os/Message;)V

    return-void
.end method
