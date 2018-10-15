.class public final Lcom/migu/uem/b/e;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/migu/uem/c/f;->a()Lcom/migu/uem/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/migu/uem/c/f;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/migu/uem/a/e;->a(Landroid/content/Context;)Lcom/migu/uem/a/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/uem/a/e;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/migu/uem/a/c;->a(Landroid/content/Context;)Lcom/migu/uem/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/a/c;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/migu/uem/a/g;->d(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/migu/uem/a/c;->a(Landroid/content/Context;)Lcom/migu/uem/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/a/c;->c()V

    invoke-static {p1}, Lcom/migu/uem/a/e;->a(Landroid/content/Context;)Lcom/migu/uem/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/a/e;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/migu/uem/c/f;->a()Lcom/migu/uem/c/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/migu/uem/c/f;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/migu/uem/a/g;->a(Landroid/content/Context;J)V

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "last_execute_upload"

    invoke-virtual {v2, v3}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long v4, v0, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "last_execute_upload"

    const-wide/32 v4, 0x5265c00

    div-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/a/g;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
