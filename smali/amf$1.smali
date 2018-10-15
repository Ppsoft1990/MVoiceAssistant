.class Lamf$1;
.super Landroid/os/Handler;
.source "BookCloseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamf;


# direct methods
.method constructor <init>(Lamf;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lamf;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 80
    iput-object p1, p0, Lamf$1;->a:Lamf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v2, 0x1

    .line 83
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 85
    :try_start_0
    iget-object v1, p0, Lamf$1;->a:Lamf;

    iget-object v2, p0, Lamf$1;->a:Lamf;

    iget-wide v2, v2, Lamf;->c:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lamf;->c:J

    .line 86
    iget-object v1, p0, Lamf$1;->a:Lamf;

    iget-wide v2, v1, Lamf;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 87
    const-string/jumbo v1, "BookCloseHelper"

    const-string/jumbo v2, "stop play auto"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lamf$1;->a:Lamf;

    invoke-virtual {v1}, Lamf;->c()V

    .line 90
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lamv;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Lamv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v1

    invoke-virtual {v1}, Lamp;->K()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lamv;

    iget-object v3, p0, Lamf$1;->a:Lamf;

    iget-object v4, p0, Lamf$1;->a:Lamf;

    iget-wide v4, v4, Lamf;->c:J

    invoke-virtual {v3, v4, v5}, Lamf;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lamv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 94
    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lamf$1;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BookCloseHelper"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
