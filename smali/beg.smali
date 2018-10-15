.class public abstract Lbeg;
.super Lben;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbeg$a;
    }
.end annotation


# instance fields
.field a:Lbeg$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lben;-><init>()V

    return-void
.end method

.method static synthetic a(Lbeg;)V
    .locals 0

    invoke-direct {p0}, Lbeg;->c()V

    return-void
.end method

.method static synthetic b(Lbeg;)V
    .locals 0

    invoke-direct {p0}, Lbeg;->h()V

    return-void
.end method

.method private c()V
    .locals 0

    invoke-virtual {p0}, Lbeg;->g()V

    return-void
.end method

.method private h()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lbeg;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lbem;

    sget-object v2, Lcom/rsanalyticssdk/b/a/c;->a:Lcom/rsanalyticssdk/b/a/c;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lbem;-><init>(Lcom/rsanalyticssdk/b/a/c;ILjava/lang/String;)V

    iput-object v1, p0, Lbeg;->e:Lbem;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    new-instance v0, Lbeg$a;

    invoke-direct {v0, p0, p0}, Lbeg$a;-><init>(Lbeg;Lbeg;)V

    iput-object v0, p0, Lbeg;->a:Lbeg$a;

    iget-object v1, p0, Lbeg;->a:Lbeg$a;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lbeg$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected abstract b()V
.end method
