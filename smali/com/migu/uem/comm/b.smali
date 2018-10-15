.class final Lcom/migu/uem/comm/b;
.super Lcom/migu/uem/a/f;


# instance fields
.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Landroid/content/Context;

.field private synthetic e:Lcom/migu/uem/comm/a;


# direct methods
.method constructor <init>(Lcom/migu/uem/comm/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/comm/b;->e:Lcom/migu/uem/comm/a;

    iput-object p2, p0, Lcom/migu/uem/comm/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/migu/uem/comm/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/migu/uem/comm/b;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/migu/uem/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "UEM_CHANNEL"

    iget-object v2, p0, Lcom/migu/uem/comm/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "appKey"

    iget-object v2, p0, Lcom/migu/uem/comm/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ocinfo_id"

    iget-object v2, p0, Lcom/migu/uem/comm/b;->e:Lcom/migu/uem/comm/a;

    iget-object v2, v2, Lcom/migu/uem/comm/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/migu/uem/comm/b;->d:Landroid/content/Context;

    const-class v3, Lcom/migu/uem/comm/AgentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v0, "-----------start service------------"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/comm/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/migu/uem/comm/b;->e:Lcom/migu/uem/comm/a;

    invoke-static {v0}, Lcom/migu/uem/comm/a;->a(Lcom/migu/uem/comm/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
