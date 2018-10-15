.class public Lcom/iflytek/blc/thread/ThreadPoolManager;
.super Ljava/lang/Object;


# static fields
.field public static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v3, 0xf

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/iflytek/blc/thread/ThreadPoolManager;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/iflytek/blc/thread/ThreadPoolManager$1;

    invoke-direct {v0}, Lcom/iflytek/blc/thread/ThreadPoolManager$1;-><init>()V

    sput-object v0, Lcom/iflytek/blc/thread/ThreadPoolManager;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0xa

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/iflytek/blc/thread/ThreadPoolManager;->a:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/iflytek/blc/thread/ThreadPoolManager;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/iflytek/blc/thread/ThreadPoolManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
