.class public Lava;
.super Ljava/lang/Object;
.source "MediaTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lava$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lava;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lava;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 12
    iput-object p1, p0, Lava;->a:Ljava/util/Timer;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lava;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lava;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lava;->a:Ljava/util/Timer;

    .line 48
    const-string/jumbo v0, "ScheduleMediaTimer"

    const-string/jumbo v1, "cancelTimer() | stop timer success!"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method public a(JLava$a;)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "listener"    # Lava$a;

    .prologue
    .line 29
    invoke-virtual {p0}, Lava;->a()V

    .line 30
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lava;->a:Ljava/util/Timer;

    .line 31
    iget-object v0, p0, Lava;->a:Ljava/util/Timer;

    new-instance v1, Lava$1;

    invoke-direct {v1, p0, p3}, Lava$1;-><init>(Lava;Lava$a;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 41
    const-string/jumbo v0, "ScheduleMediaTimer"

    const-string/jumbo v1, "startTimer() | start timer..."

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lava;->a:Ljava/util/Timer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
