.class Lcom/iflytek/greenplug/client/PluginManager$4;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/PluginManager;->installPackageAsync(Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/greenplug/client/TaskListener;

.field final synthetic c:Lcom/iflytek/greenplug/client/PluginManager;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/PluginManager;Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/PluginManager;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    iput-object p2, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->b:Lcom/iflytek/greenplug/client/TaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 475
    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v2

    .line 476
    .local v2, "result":I
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->a:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 477
    .local v1, "params":[Ljava/lang/Object;
    new-instance v3, Lcom/iflytek/greenplug/client/GPTask;

    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->INSTALL_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    sget-object v5, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-direct {v3, v4, v1, v5}, Lcom/iflytek/greenplug/client/GPTask;-><init>(Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;[Ljava/lang/Object;Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;)V

    .line 478
    .local v3, "task":Lcom/iflytek/greenplug/client/GPTask;
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 479
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->b:Lcom/iflytek/greenplug/client/TaskListener;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4}, Lcom/iflytek/greenplug/client/PluginManager;->access$200(Lcom/iflytek/greenplug/client/PluginManager;)Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 484
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    iget-object v5, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/iflytek/greenplug/client/PluginManager;->installPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 492
    :goto_0
    invoke-virtual {v3, v2}, Lcom/iflytek/greenplug/client/GPTask;->setTaskResult(I)V

    .line 493
    const-string/jumbo v4, "PluginManager"

    const-string/jumbo v5, "installPackageAsync onTaskFinish called."

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/greenplug/client/TaskListener;

    invoke-interface {v4, v3}, Lcom/iflytek/greenplug/client/TaskListener;->onTaskFinish(Lcom/iflytek/greenplug/client/GPTask;)V

    .line 495
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :goto_1
    return-void

    .line 486
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4, v3}, Lcom/iflytek/greenplug/client/PluginManager;->access$300(Lcom/iflytek/greenplug/client/PluginManager;Lcom/iflytek/greenplug/client/GPTask;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "PluginManager"

    const-string/jumbo v5, "installPackageAsync error"

    invoke-static {v4, v5, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    sget-object v4, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 492
    invoke-virtual {v3, v2}, Lcom/iflytek/greenplug/client/GPTask;->setTaskResult(I)V

    .line 493
    const-string/jumbo v4, "PluginManager"

    const-string/jumbo v5, "installPackageAsync onTaskFinish called."

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/greenplug/client/TaskListener;

    invoke-interface {v4, v3}, Lcom/iflytek/greenplug/client/TaskListener;->onTaskFinish(Lcom/iflytek/greenplug/client/GPTask;)V

    .line 495
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    move-object v5, v4

    invoke-virtual {v3, v2}, Lcom/iflytek/greenplug/client/GPTask;->setTaskResult(I)V

    .line 493
    const-string/jumbo v4, "PluginManager"

    const-string/jumbo v6, "installPackageAsync onTaskFinish called."

    invoke-static {v4, v6}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/greenplug/client/TaskListener;

    invoke-interface {v4, v3}, Lcom/iflytek/greenplug/client/TaskListener;->onTaskFinish(Lcom/iflytek/greenplug/client/GPTask;)V

    .line 495
    iget-object v4, p0, Lcom/iflytek/greenplug/client/PluginManager$4;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v4}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v5
.end method
