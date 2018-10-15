.class final Lcom/migu/uem/statistics/deeplink/c;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/migu/uem/statistics/deeplink/RestoreSceneListener;


# direct methods
.method constructor <init>(Lcom/migu/uem/statistics/deeplink/RestoreSceneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/statistics/deeplink/c;->a:Lcom/migu/uem/statistics/deeplink/RestoreSceneListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v0, 0x1964

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/migu/uem/comm/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/migu/uem/comm/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 v0, v0, -0xc8

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/statistics/deeplink/c;->a:Lcom/migu/uem/statistics/deeplink/RestoreSceneListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/statistics/deeplink/c;->a:Lcom/migu/uem/statistics/deeplink/RestoreSceneListener;

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/migu/uem/comm/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/migu/uem/statistics/deeplink/RestoreSceneListener;->getRestoreSceneData(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "restore data  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/migu/uem/comm/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/uem/comm/a;->b(Z)V

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/migu/uem/comm/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/migu/uem/comm/a;->a()Lcom/migu/uem/comm/a;

    :cond_1
    return-void
.end method
