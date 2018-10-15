.class final Lcom/migu/uem/comm/c;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/migu/uem/comm/AgentService;


# direct methods
.method constructor <init>(Lcom/migu/uem/comm/AgentService;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/comm/AgentService;->access$008(Lcom/migu/uem/comm/AgentService;)I

    iget-object v0, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/comm/AgentService;->access$000(Lcom/migu/uem/comm/AgentService;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/migu/uem/comm/AgentService;->access$100()Ljava/lang/String;

    const-string/jumbo v0, "network not available ...\uff0c\u5ef6\u65f6\u53d1\u9001\u542f\u52a8\u6570\u636e"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/comm/AgentService;->access$300(Lcom/migu/uem/comm/AgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/migu/uem/comm/AgentService;->access$200()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/migu/uem/a/g;->a()Lcom/migu/uem/a/g;

    iget-object v0, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/a/g;->e(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/migu/uem/comm/AgentService;->access$100()Ljava/lang/String;

    const-string/jumbo v0, "network not available ..."

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/a/c;->a(Landroid/content/Context;)Lcom/migu/uem/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/a/c;->a()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/migu/uem/a/j;->a()Lcom/migu/uem/a/j;

    move-result-object v1

    new-instance v2, Lcom/migu/uem/a/a/g;

    iget-object v3, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    sget-object v4, Lcom/migu/uem/comm/e;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/migu/uem/a/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/migu/uem/a/j;->a(Lcom/migu/uem/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/comm/c;->a:Lcom/migu/uem/comm/AgentService;

    invoke-static {v0}, Lcom/migu/uem/a/c;->a(Landroid/content/Context;)Lcom/migu/uem/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/a/c;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
