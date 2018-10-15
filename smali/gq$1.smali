.class Lgq$1;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgq;->a(Lgq$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgq$a;

.field final synthetic b:Lgq;


# direct methods
.method constructor <init>(Lgq;Lgq$a;)V
    .locals 0
    .param p1, "this$0"    # Lgq;

    .prologue
    .line 117
    iput-object p1, p0, Lgq$1;->b:Lgq;

    iput-object p2, p0, Lgq$1;->a:Lgq$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lgq$1;->b:Lgq;

    invoke-static {v0}, Lgq;->a(Lgq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lgq$1;->b:Lgq;

    iget-object v2, p0, Lgq$1;->a:Lgq$a;

    invoke-static {v0, v2}, Lgq;->a(Lgq;Lgq$a;)V

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
