.class Lxd$a;
.super Ljava/util/TimerTask;
.source "HomeOpLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lxd;


# direct methods
.method private constructor <init>(Lxd;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lxd$a;->a:Lxd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lxd;Lxd$1;)V
    .locals 0
    .param p1, "x0"    # Lxd;
    .param p2, "x1"    # Lxd$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lxd$a;-><init>(Lxd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dataTimer trigger cancel flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lxd$a;->a:Lxd;

    invoke-static {v2}, Lxd;->a(Lxd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " data record flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lxd$a;->a:Lxd;

    .line 114
    invoke-static {v2}, Lxd;->b(Lxd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lxd$a;->a:Lxd;

    invoke-static {v0}, Lxd;->c(Lxd;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lxd$a;->a:Lxd;

    invoke-static {v0}, Lxd;->a(Lxd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lxd$a;->a:Lxd;

    invoke-static {v0}, Lxd;->b(Lxd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lxd$a;->a:Lxd;

    invoke-static {v0}, Lxd;->d(Lxd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v2, "LX_100038"

    invoke-virtual {v0, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lxd$a;->a:Lxd;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lxd;->a(Lxd;Z)Z

    .line 122
    :cond_0
    invoke-virtual {p0}, Lxd$a;->cancel()Z

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
