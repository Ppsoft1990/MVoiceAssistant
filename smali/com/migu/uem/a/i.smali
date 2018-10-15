.class final Lcom/migu/uem/a/i;
.super Lcom/migu/uem/a/f;


# instance fields
.field private synthetic b:Landroid/content/Context;

.field private synthetic c:J

.field private synthetic d:Lcom/migu/uem/a/g;


# direct methods
.method constructor <init>(Lcom/migu/uem/a/g;Landroid/content/Context;J)V
    .locals 1

    iput-object p1, p0, Lcom/migu/uem/a/i;->d:Lcom/migu/uem/a/g;

    iput-object p2, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    iput-wide p3, p0, Lcom/migu/uem/a/i;->c:J

    invoke-direct {p0}, Lcom/migu/uem/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "opened"

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "AppOpenTime"

    invoke-virtual {v0, v1}, Lcom/migu/uem/c/g;->c(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    iget-wide v4, p0, Lcom/migu/uem/a/i;->c:J

    invoke-static {v2, v0, v1, v4, v5}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;JJ)Lcom/migu/uem/bean/OCInfo;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.migu.uem.noti_to_main"

    iget-object v3, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/migu/uem/a/i;->d:Lcom/migu/uem/a/g;

    iget-object v3, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/migu/uem/a/g;->a(Lcom/migu/uem/a/g;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/migu/uem/a/i;->d:Lcom/migu/uem/a/g;

    invoke-static {v2}, Lcom/migu/uem/a/g;->c(Lcom/migu/uem/a/g;)Lcom/migu/uem/bean/AccountInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v3

    const-string/jumbo v4, "ocinfo_id"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;Lcom/migu/uem/bean/OCInfo;Lcom/migu/uem/bean/AccountInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "opened"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "AppOpenTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/migu/uem/a/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastRecordTime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
