.class final Lcom/migu/a/c/b$a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/migu/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic au:Lcom/migu/a/c/b;


# direct methods
.method constructor <init>(Lcom/migu/a/c/b;)V
    .locals 9

    .prologue
    .line 78
    iput-object p1, p0, Lcom/migu/a/c/b$a;->au:Lcom/migu/a/c/b;

    .line 79
    const/4 v2, 0x2

    const/4 v3, 0x4

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/migu/a/c/b$a$1;

    invoke-direct {v8, p1}, Lcom/migu/a/c/b$a$1;-><init>(Lcom/migu/a/c/b;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 84
    return-void
.end method
