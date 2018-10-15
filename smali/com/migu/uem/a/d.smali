.class final Lcom/migu/uem/a/d;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/migu/uem/a/c;


# direct methods
.method public constructor <init>(Lcom/migu/uem/a/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->a(Lcom/migu/uem/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->b(Lcom/migu/uem/a/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e8b\u4ef6\u6570\u636e\u5b9a\u65f6\u68c0\u67e5\u4e0a\u4f20 isRunBack "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    if-nez v0, :cond_2

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->b(Lcom/migu/uem/a/c;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lcom/migu/uem/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->c(Lcom/migu/uem/a/c;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->a(Lcom/migu/uem/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->d(Lcom/migu/uem/a/c;)Lcom/migu/uem/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v1}, Lcom/migu/uem/a/c;->c(Lcom/migu/uem/a/c;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/migu/uem/a/d;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u9875\u9762\u6570\u636e\u5b9a\u65f6\u68c0\u67e5\u4e0a\u4f20 isRunBack "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    if-nez v0, :cond_3

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->b(Lcom/migu/uem/a/c;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Lcom/migu/uem/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->e(Lcom/migu/uem/a/c;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->a(Lcom/migu/uem/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v0}, Lcom/migu/uem/a/c;->d(Lcom/migu/uem/a/c;)Lcom/migu/uem/a/d;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/migu/uem/a/d;->a:Lcom/migu/uem/a/c;

    invoke-static {v2}, Lcom/migu/uem/a/c;->e(Lcom/migu/uem/a/c;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/migu/uem/a/d;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
