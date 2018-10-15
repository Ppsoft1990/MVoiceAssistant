.class Lcom/baidu/aiupdatesdk/obf/d$a;
.super Ljava/lang/Object;
.source "TagRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/aiupdatesdk/obf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/aiupdatesdk/obf/d;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/d;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "retryIndex"    # I

    .prologue
    .line 157
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->a:Lcom/baidu/aiupdatesdk/obf/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->b:Landroid/content/Context;

    .line 159
    iput p3, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->c:I

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/d$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/d$a;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/d$a;->b()V

    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/d$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->a:Lcom/baidu/aiupdatesdk/obf/d;

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/d;->c(Lcom/baidu/aiupdatesdk/obf/d;)Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/aiupdatesdk/obf/b;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->a:Lcom/baidu/aiupdatesdk/obf/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/baidu/aiupdatesdk/obf/d;->a(Lcom/baidu/aiupdatesdk/obf/d;J)J

    .line 195
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/aiupdatesdk/obf/d;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/d$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->a:Lcom/baidu/aiupdatesdk/obf/d;

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->b:Landroid/content/Context;

    iget v3, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->c:I

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/aiupdatesdk/obf/d;->a(Lcom/baidu/aiupdatesdk/obf/d;Landroid/content/Context;ILjava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->a:Lcom/baidu/aiupdatesdk/obf/d;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/d;->b(Lcom/baidu/aiupdatesdk/obf/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d$a;->a:Lcom/baidu/aiupdatesdk/obf/d;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/d;->b(Lcom/baidu/aiupdatesdk/obf/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/baidu/aiupdatesdk/obf/d$a$1;

    invoke-direct {v1, p0}, Lcom/baidu/aiupdatesdk/obf/d$a$1;-><init>(Lcom/baidu/aiupdatesdk/obf/d$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
