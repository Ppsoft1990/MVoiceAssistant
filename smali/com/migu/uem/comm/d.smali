.class final Lcom/migu/uem/comm/d;
.super Lcom/migu/uem/a/f;


# instance fields
.field private synthetic b:Lcom/migu/uem/comm/AgentService;


# direct methods
.method constructor <init>(Lcom/migu/uem/comm/AgentService;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-direct {p0}, Lcom/migu/uem/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "ocinfo_id"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "ocinfo_id"

    iget-object v3, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v3}, Lcom/migu/uem/comm/AgentService;->access$400(Lcom/migu/uem/comm/AgentService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/comm/AgentService;->access$500(Lcom/migu/uem/comm/AgentService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/comm/AgentService;->access$500(Lcom/migu/uem/comm/AgentService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/comm/AgentService;->access$600(Lcom/migu/uem/comm/AgentService;)V

    :cond_0
    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "AppOpenTime"

    invoke-virtual {v0, v1}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastRecordTime"

    invoke-virtual {v0, v1}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_1

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    :cond_1
    const-wide/16 v0, 0x1388

    add-long/2addr v0, v4

    const-string/jumbo v3, "\u4e0a\u4e00\u6b21\u572810\u79d2\u4ee5\u5185\u5f3a\u6740\u4e86\u8fdb\u7a0b"

    invoke-static {v3}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :cond_2
    cmp-long v3, v0, v6

    if-eqz v3, :cond_3

    cmp-long v3, v0, v4

    if-lez v3, :cond_3

    const-string/jumbo v3, "\u4e0a\u4e00\u6b21\u5f3a\u6740\u4e86\u8fdb\u7a0b"

    invoke-static {v3}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v3, v4, v5, v0, v1}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;JJ)Lcom/migu/uem/bean/OCInfo;

    move-result-object v0

    new-instance v1, Lcom/migu/uem/statistics/other/a;

    invoke-direct {v1}, Lcom/migu/uem/statistics/other/a;-><init>()V

    iget-object v1, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-virtual {v1}, Lcom/migu/uem/comm/AgentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/migu/uem/statistics/other/a;->b(Landroid/content/Context;)Lcom/migu/uem/bean/AccountInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v3, v0, v1, v2}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;Lcom/migu/uem/bean/OCInfo;Lcom/migu/uem/bean/AccountInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "opened"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "AppOpenTime"

    invoke-virtual {v0, v1, v6, v7}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastRecordTime"

    invoke-virtual {v0, v1, v6, v7}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    iget-object v0, p0, Lcom/migu/uem/comm/d;->b:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/a/g;->e(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
