.class Lig$1;
.super Landroid/os/Handler;
.source "IflyPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lig;


# direct methods
.method constructor <init>(Lig;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lig;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 71
    iput-object p1, p0, Lig$1;->a:Lig;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lig$1;->a:Lig;

    invoke-static {v1}, Lig;->a(Lig;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    monitor-enter v2

    .line 77
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lig$1;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v3, "dispatchMessage---hasMessage return"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-exit v2

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_0
    :try_start_1
    iget-object v1, p0, Lig$1;->a:Lig;

    invoke-static {v1}, Lig;->a(Lig;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v3, "dispatchMessage release mWakeLock."

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lig$1;->a:Lig;

    invoke-static {v1}, Lig;->a(Lig;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 86
    :cond_1
    :try_start_3
    const-string/jumbo v1, "PowerManager"

    const-string/jumbo v3, "dispatchMessage release not hold."

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
