.class final Lcom/migu/uem/a/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic b:Lcom/migu/uem/a/a;


# direct methods
.method public constructor <init>(Lcom/migu/uem/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/migu/uem/a/b;->b:Lcom/migu/uem/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/migu/uem/a/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final run()V
    .locals 1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/migu/uem/a/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/a/b;->b:Lcom/migu/uem/a/a;

    invoke-static {v0}, Lcom/migu/uem/a/a;->a(Lcom/migu/uem/a/a;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/migu/uem/a/f;->a()V

    invoke-virtual {v0}, Lcom/migu/uem/a/f;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-void
.end method
