.class public final Lcom/tencent/mm/sdk/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/sdk/b/g$a;
    }
.end annotation


# static fields
.field private static final bf:Ljava/lang/String;

.field private static final bg:Ljava/lang/String;


# instance fields
.field final aQ:Ljava/lang/Runnable;

.field final aR:Ljava/lang/String;

.field final aS:Ljava/lang/Object;

.field final aT:Ljava/lang/Thread;

.field aU:Ljava/lang/String;

.field aV:J

.field final aW:Lcom/tencent/mm/sdk/b/g$a;

.field aX:J

.field aY:J

.field aZ:J

.field ba:J

.field bb:J

.field bc:J

.field bd:J

.field be:F

.field final handler:Landroid/os/Handler;

.field priority:I

.field started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "taskName = %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|token = %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|handler = %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|threadName = %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|threadId = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|priority = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|addTime = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|delayTime = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|usedTime = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|cpuTime = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|started = %b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/b/g;->bf:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "taskName = %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | addTime = %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | endTime = %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | usedTime = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | cpuTime = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | threadCpuTime = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | totalCpuTime = %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " | threadCpuRate = %.1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/b/g;->bg:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;Lcom/tencent/mm/sdk/b/g$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/sdk/b/g;->started:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tencent/mm/sdk/b/g;->be:F

    iput-object p1, p0, Lcom/tencent/mm/sdk/b/g;->aT:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/b/g;->aU:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->aV:J

    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/sdk/b/g;->priority:I

    :cond_0
    iput-object p2, p0, Lcom/tencent/mm/sdk/b/g;->handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/tencent/mm/sdk/b/g;->aQ:Ljava/lang/Runnable;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/b/h;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/tencent/mm/sdk/b/g;->aR:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/sdk/b/g;->aS:Ljava/lang/Object;

    iput-object p5, p0, Lcom/tencent/mm/sdk/b/g;->aW:Lcom/tencent/mm/sdk/b/g$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->aX:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-wide/16 v4, -0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/proc/self/task/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->ba:J

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->bb:J

    iput-wide v4, p0, Lcom/tencent/mm/sdk/b/g;->bc:J

    iput-wide v4, p0, Lcom/tencent/mm/sdk/b/g;->bd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/sdk/b/g;->started:Z

    iget-object v0, p0, Lcom/tencent/mm/sdk/b/g;->aQ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->bc:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->bc:J

    iget-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->bd:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->bd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->aZ:J

    iget-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->aZ:J

    iget-wide v2, p0, Lcom/tencent/mm/sdk/b/g;->ba:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->ba:J

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/sdk/b/g;->bb:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->bb:J

    iget-wide v0, p0, Lcom/tencent/mm/sdk/b/g;->bd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    iget-wide v2, p0, Lcom/tencent/mm/sdk/b/g;->bc:J

    mul-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/tencent/mm/sdk/b/g;->bd:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/sdk/b/g;->be:F

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/sdk/b/g;->aW:Lcom/tencent/mm/sdk/b/g$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/sdk/b/g;->aW:Lcom/tencent/mm/sdk/b/g$a;

    iget-object v1, p0, Lcom/tencent/mm/sdk/b/g;->aQ:Ljava/lang/Runnable;

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/b/g$a;->c(Ljava/lang/Runnable;Lcom/tencent/mm/sdk/b/g;)V

    :cond_1
    return-void
.end method
