.class Lcom/iflytek/greenplug/client/stub/StubService$2;
.super Ljava/lang/Thread;
.source "StubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/stub/StubService;->waitAndStart(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/iflytek/greenplug/client/stub/StubService;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/stub/StubService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/stub/StubService;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iflytek/greenplug/client/stub/StubService$2;->b:Lcom/iflytek/greenplug/client/stub/StubService;

    iput-object p2, p0, Lcom/iflytek/greenplug/client/stub/StubService$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/greenplug/client/PluginManager;->waitForConnected(J)V

    .line 98
    iget-object v1, p0, Lcom/iflytek/greenplug/client/stub/StubService$2;->b:Lcom/iflytek/greenplug/client/stub/StubService;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/stub/StubService$2;->a:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/client/stub/StubService;->access$000(Lcom/iflytek/greenplug/client/stub/StubService;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/iflytek/greenplug/client/stub/StubService$2;->b:Lcom/iflytek/greenplug/client/stub/StubService;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/stub/StubService$2;->a:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/client/stub/StubService;->access$100(Lcom/iflytek/greenplug/client/stub/StubService;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/stub/StubService$2;->b:Lcom/iflytek/greenplug/client/stub/StubService;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/stub/StubService;->stopSelf()V

    .line 106
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "StubService"

    const-string/jumbo v2, "waitAndStart error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    iget-object v1, p0, Lcom/iflytek/greenplug/client/stub/StubService$2;->b:Lcom/iflytek/greenplug/client/stub/StubService;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/stub/StubService;->stopSelf()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/greenplug/client/stub/StubService$2;->b:Lcom/iflytek/greenplug/client/stub/StubService;

    invoke-virtual {v2}, Lcom/iflytek/greenplug/client/stub/StubService;->stopSelf()V

    throw v1
.end method
