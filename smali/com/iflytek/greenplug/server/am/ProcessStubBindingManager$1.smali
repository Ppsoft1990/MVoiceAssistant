.class Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;
.super Ljava/lang/Thread;
.source "ProcessStubBindingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->c:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    iput-object p2, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->a:Landroid/content/Context;

    iput p3, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Lrw;

    invoke-direct {v0}, Lrw;-><init>()V

    .line 78
    .local v0, "componentsStubBinding":Lrw;
    iget-object v3, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.iflytek.greenplug.STUB_DEFAULT.P"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.iflytek.greenplug.DIALOG_STUB_DEFAULT.P"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lrw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v2, Lrx;

    invoke-direct {v2}, Lrx;-><init>()V

    .line 80
    .local v2, "processItem":Lrx;
    invoke-virtual {v0}, Lrw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx;->a(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->c:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-static {v3}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->access$000(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v3, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->c:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-static {v3}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->access$100(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    iget-object v3, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->c:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-static {v3}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->access$200(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    iget-object v3, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;->c:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-static {v3}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->access$200(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v4

    .line 90
    .end local v0    # "componentsStubBinding":Lrw;
    .end local v2    # "processItem":Lrx;
    :goto_0
    return-void

    .line 86
    .restart local v0    # "componentsStubBinding":Lrw;
    .restart local v2    # "processItem":Lrx;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v0    # "componentsStubBinding":Lrw;
    .end local v2    # "processItem":Lrx;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ProcessStubBindingManager"

    const-string/jumbo v4, "init error"

    invoke-static {v3, v4, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
