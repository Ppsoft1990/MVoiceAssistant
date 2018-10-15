.class Lul$1;
.super Ljava/lang/Object;
.source "Mp3RecorderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lul;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lul;


# direct methods
.method constructor <init>(Lul;)V
    .locals 0
    .param p1, "this$0"    # Lul;

    .prologue
    .line 101
    iput-object p1, p0, Lul$1;->a:Lul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 104
    const-string/jumbo v1, "Mp3RecorderManager"

    const-string/jumbo v2, "start Recording"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 107
    :cond_0
    :goto_0
    iget-object v1, p0, Lul$1;->a:Lul;

    invoke-static {v1}, Lul;->a(Lul;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "readSize":I
    iget-object v1, p0, Lul$1;->a:Lul;

    invoke-static {v1}, Lul;->b(Lul;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 110
    :try_start_0
    iget-object v1, p0, Lul$1;->a:Lul;

    invoke-static {v1}, Lul;->e(Lul;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v3, p0, Lul$1;->a:Lul;

    invoke-static {v3}, Lul;->c(Lul;)[S

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lul$1;->a:Lul;

    invoke-static {v5}, Lul;->d(Lul;)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 111
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-lez v0, :cond_0

    .line 113
    iget-object v1, p0, Lul$1;->a:Lul;

    invoke-static {v1}, Lul;->f(Lul;)Luk;

    move-result-object v1

    iget-object v2, p0, Lul$1;->a:Lul;

    invoke-static {v2}, Lul;->c(Lul;)[S

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Luk;->a([SI)V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 117
    .end local v0    # "readSize":I
    :cond_1
    iget-object v1, p0, Lul$1;->a:Lul;

    invoke-static {v1}, Lul;->g(Lul;)V

    .line 118
    iget-object v1, p0, Lul$1;->a:Lul;

    invoke-static {v1}, Lul;->f(Lul;)Luk;

    move-result-object v1

    invoke-virtual {v1}, Luk;->a()V

    .line 119
    const-string/jumbo v1, "Mp3RecorderManager"

    const-string/jumbo v2, "stop Recording"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method
