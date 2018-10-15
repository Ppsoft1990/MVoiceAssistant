.class Laxn$1;
.super Ljava/util/TimerTask;
.source "TrafficStatsHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxn;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laxn;


# direct methods
.method constructor <init>(Laxn;)V
    .locals 0
    .param p1, "this$0"    # Laxn;

    .prologue
    .line 137
    iput-object p1, p0, Laxn$1;->a:Laxn;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Laxn$1;->a:Laxn;

    invoke-static {v0}, Laxn;->a(Laxn;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-------->> record Timer trigger!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Laxn$1;->a:Laxn;

    invoke-static {v0}, Laxn;->b(Laxn;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Laxn$1;->a:Laxn;

    invoke-static {v0}, Laxn;->b(Laxn;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Laxn$1$1;

    invoke-direct {v1, p0}, Laxn$1$1;-><init>(Laxn$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_0
    return-void
.end method
