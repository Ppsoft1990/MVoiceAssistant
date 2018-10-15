.class Lcom/iflytek/greenplug/client/stub/StubActivity$2;
.super Ljava/lang/Thread;
.source "StubActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/stub/StubActivity;->waitAndStart(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/iflytek/greenplug/client/stub/StubActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/stub/StubActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/stub/StubActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->b:Lcom/iflytek/greenplug/client/stub/StubActivity;

    iput-object p2, p0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/greenplug/client/PluginManager;->waitForConnected(J)V

    .line 85
    iget-object v1, p0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->b:Lcom/iflytek/greenplug/client/stub/StubActivity;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->a:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/client/stub/StubActivity;->access$000(Lcom/iflytek/greenplug/client/stub/StubActivity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->b:Lcom/iflytek/greenplug/client/stub/StubActivity;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->a:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/client/stub/StubActivity;->access$100(Lcom/iflytek/greenplug/client/stub/StubActivity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->b:Lcom/iflytek/greenplug/client/stub/StubActivity;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/stub/StubActivity;->finish()V

    .line 93
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    iget-object v1, p0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->b:Lcom/iflytek/greenplug/client/stub/StubActivity;

    invoke-virtual {v1}, Lcom/iflytek/greenplug/client/stub/StubActivity;->finish()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/greenplug/client/stub/StubActivity$2;->b:Lcom/iflytek/greenplug/client/stub/StubActivity;

    invoke-virtual {v2}, Lcom/iflytek/greenplug/client/stub/StubActivity;->finish()V

    throw v1
.end method
