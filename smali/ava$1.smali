.class Lava$1;
.super Ljava/util/TimerTask;
.source "MediaTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lava;->a(JLava$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lava$a;

.field final synthetic b:Lava;


# direct methods
.method constructor <init>(Lava;Lava$a;)V
    .locals 0
    .param p1, "this$0"    # Lava;

    .prologue
    .line 31
    iput-object p1, p0, Lava$1;->b:Lava;

    iput-object p2, p0, Lava$1;->a:Lava$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "ScheduleMediaTimer"

    const-string/jumbo v1, "startTimer() | time over!"

    invoke-static {v0, v1}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lava$1;->b:Lava;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lava;->a(Lava;Ljava/util/Timer;)Ljava/util/Timer;

    .line 36
    iget-object v0, p0, Lava$1;->a:Lava$a;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lava$1;->a:Lava$a;

    invoke-interface {v0}, Lava$a;->a()V

    .line 39
    :cond_0
    return-void
.end method
