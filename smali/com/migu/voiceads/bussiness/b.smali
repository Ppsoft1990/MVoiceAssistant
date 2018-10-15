.class public Lcom/migu/voiceads/bussiness/b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/voiceads/bussiness/b$a;,
        Lcom/migu/voiceads/bussiness/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/migu/voiceads/bussiness/a$c;

.field private b:Lcom/migu/voiceads/bussiness/b$a;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/migu/voiceads/bussiness/b$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, Lcom/migu/voiceads/bussiness/a$c;->a:Lcom/migu/voiceads/bussiness/a$c;

    iput-object v0, p0, Lcom/migu/voiceads/bussiness/b;->a:Lcom/migu/voiceads/bussiness/a$c;

    iput-object p2, p0, Lcom/migu/voiceads/bussiness/b;->b:Lcom/migu/voiceads/bussiness/b$a;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/migu/voiceads/bussiness/a$c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b;->a:Lcom/migu/voiceads/bussiness/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/migu/voiceads/bussiness/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/migu/voiceads/bussiness/b$b;->b:Lcom/migu/voiceads/bussiness/b$b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(Landroid/os/Message;Lcom/migu/voiceads/bussiness/b$b;I)V

    return-void
.end method

.method public a(II)V
    .locals 3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/migu/voiceads/bussiness/b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/migu/voiceads/bussiness/b$b;->b:Lcom/migu/voiceads/bussiness/b$b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/migu/voiceads/bussiness/b;->a(Landroid/os/Message;Lcom/migu/voiceads/bussiness/b$b;I)V

    return-void
.end method

.method public a(Landroid/os/Message;I)V
    .locals 1

    sget-object v0, Lcom/migu/voiceads/bussiness/b$b;->b:Lcom/migu/voiceads/bussiness/b$b;

    invoke-virtual {p0, p1, v0, p2}, Lcom/migu/voiceads/bussiness/b;->a(Landroid/os/Message;Lcom/migu/voiceads/bussiness/b$b;I)V

    return-void
.end method

.method protected a(Landroid/os/Message;Lcom/migu/voiceads/bussiness/b$b;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/migu/voiceads/bussiness/b;->a()Lcom/migu/voiceads/bussiness/a$c;

    move-result-object v0

    sget-object v1, Lcom/migu/voiceads/bussiness/a$c;->f:Lcom/migu/voiceads/bussiness/a$c;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Ad status is exit, invalid request!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    sget-object v0, Lcom/migu/voiceads/bussiness/b$b;->a:Lcom/migu/voiceads/bussiness/b$b;

    if-ne v0, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/migu/voiceads/bussiness/b;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/migu/voiceads/bussiness/a$c;->a:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/bussiness/b;->a(Lcom/migu/voiceads/bussiness/a$c;)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/migu/voiceads/bussiness/a$c;->b:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/bussiness/b;->a(Lcom/migu/voiceads/bussiness/a$c;)V

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/migu/voiceads/bussiness/a$c;->c:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/bussiness/b;->a(Lcom/migu/voiceads/bussiness/a$c;)V

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/migu/voiceads/bussiness/a$c;->d:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/bussiness/b;->a(Lcom/migu/voiceads/bussiness/a$c;)V

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/migu/voiceads/bussiness/a$c;->e:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/bussiness/b;->a(Lcom/migu/voiceads/bussiness/a$c;)V

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/migu/voiceads/bussiness/a$c;->f:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {p0, v0}, Lcom/migu/voiceads/bussiness/b;->a(Lcom/migu/voiceads/bussiness/a$c;)V

    goto :goto_1

    :cond_1
    int-to-long v0, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/migu/voiceads/bussiness/b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public declared-synchronized a(Lcom/migu/voiceads/bussiness/a$c;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Ad_Android_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setStatus: pre="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/b;->a:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setStatus: pre="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/b;->a:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/migu/voiceads/utils/k;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b;->a:Lcom/migu/voiceads/bussiness/a$c;

    sget-object v1, Lcom/migu/voiceads/bussiness/a$c;->f:Lcom/migu/voiceads/bussiness/a$c;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Invalid setting of ad status, current status is already exit!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/migu/voiceads/bussiness/b;->a:Lcom/migu/voiceads/bussiness/a$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b;->b:Lcom/migu/voiceads/bussiness/b$a;

    invoke-interface {v0, p1}, Lcom/migu/voiceads/bussiness/b$a;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/migu/voiceads/bussiness/a$c;->e:Lcom/migu/voiceads/bussiness/a$c;

    invoke-virtual {p0, v1}, Lcom/migu/voiceads/bussiness/b;->a(Lcom/migu/voiceads/bussiness/a$c;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b;->b:Lcom/migu/voiceads/bussiness/b$a;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/b$a;->a()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b;->b:Lcom/migu/voiceads/bussiness/b$a;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/b$a;->b()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b;->b:Lcom/migu/voiceads/bussiness/b$a;

    invoke-interface {v0, p1}, Lcom/migu/voiceads/bussiness/b$a;->b(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b;->b:Lcom/migu/voiceads/bussiness/b$a;

    invoke-interface {v0, p1}, Lcom/migu/voiceads/bussiness/b$a;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/b;->b:Lcom/migu/voiceads/bussiness/b$a;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/b$a;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
