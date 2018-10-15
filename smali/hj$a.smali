.class Lhj$a;
.super Ljava/lang/Object;
.source "DebugLog.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lhj$a;->a:Landroid/content/Context;

    .line 482
    return-void
.end method

.method static synthetic a(Lhj$a;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lhj$a;

    .prologue
    .line 476
    iget-object v0, p0, Lhj$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 495
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lhj$a$1;

    invoke-direct {v1, p0, p1, p2}, Lhj$a$1;-><init>(Lhj$a;Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 566
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 486
    iget-object v0, p0, Lhj$a;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lhj$a;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 487
    return-void
.end method
