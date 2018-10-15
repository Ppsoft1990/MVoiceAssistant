.class Lij$1;
.super Ljava/lang/Thread;
.source "PcmRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lij;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lij;


# direct methods
.method constructor <init>(Lij;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lij;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lij$1;->a:Lij;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 175
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startReadThread OK="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lij$1;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    iget-object v0, p0, Lij$1;->a:Lij;

    invoke-static {v0}, Lij;->a(Lij;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lij$1;->a:Lij;

    invoke-static {v0}, Lij;->b(Lij;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lij$1;->a:Lij;

    invoke-static {v0}, Lij;->c(Lij;)I

    .line 179
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 182
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 183
    const-string/jumbo v0, "SPEECH_PcmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startReadThread finish="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lij$1;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method
