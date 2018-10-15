.class final Lcom/migu/uem/a/h;
.super Lcom/migu/uem/a/f;


# instance fields
.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/migu/uem/a/g;


# direct methods
.method constructor <init>(Lcom/migu/uem/a/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/a/h;->c:Lcom/migu/uem/a/g;

    iput-object p2, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/migu/uem/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "AppOpenTime"

    invoke-virtual {v1, v2}, Lcom/migu/uem/c/g;->c(Ljava/lang/String;)J

    move-result-wide v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/a/h;->c:Lcom/migu/uem/a/g;

    invoke-static {v0}, Lcom/migu/uem/a/g;->a(Lcom/migu/uem/a/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v0, p0, Lcom/migu/uem/a/h;->c:Lcom/migu/uem/a/g;

    invoke-static {v0}, Lcom/migu/uem/a/g;->b(Lcom/migu/uem/a/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    cmp-long v0, v2, v10

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;JJ)Lcom/migu/uem/bean/OCInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/a/h;->c:Lcom/migu/uem/a/g;

    iget-object v2, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/migu/uem/a/g;->a(Lcom/migu/uem/a/g;Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.migu.uem.noti_to_main"

    iget-object v3, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "data_int"

    const/16 v4, 0x65

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/migu/uem/a/h;->c:Lcom/migu/uem/a/g;

    invoke-static {v2}, Lcom/migu/uem/a/g;->c(Lcom/migu/uem/a/g;)Lcom/migu/uem/bean/AccountInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v3

    const-string/jumbo v4, "ocinfo_id"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;Lcom/migu/uem/bean/OCInfo;Lcom/migu/uem/bean/AccountInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "opened"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "AppOpenTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastRecordTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/a/g;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/uem/a/h;->c:Lcom/migu/uem/a/g;

    invoke-static {v0}, Lcom/migu/uem/a/g;->a(Lcom/migu/uem/a/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v4, "ocinfo_id"

    invoke-virtual {v1, v4, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.migu.uem.noti_to_main"

    iget-object v5, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "data_int"

    const/16 v6, 0x194

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "data_int2"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/a/g;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/migu/uem/a/h;->c:Lcom/migu/uem/a/g;

    invoke-static {v0}, Lcom/migu/uem/a/g;->a(Lcom/migu/uem/a/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_2
    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "opened"

    invoke-virtual {v0, v1, v8}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/migu/uem/a/h;->c:Lcom/migu/uem/a/g;

    invoke-static {v1}, Lcom/migu/uem/a/g;->b(Lcom/migu/uem/a/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "opened"

    invoke-virtual {v0, v1, v7}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastRecordTime"

    invoke-virtual {v0, v1, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "AppOpenTime"

    invoke-virtual {v0, v1, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    const-string/jumbo v0, "\u53ef\u4ee5\u5f3a\u6740\u9a8c\u8bc1\u4e86"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    cmp-long v0, v2, v10

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "AppOpenTime"

    invoke-virtual {v0, v1, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    :cond_4
    iget-object v0, p0, Lcom/migu/uem/a/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastRecordTime"

    invoke-virtual {v0, v1, v4, v5}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
