.class Lcom/iflytek/greenplug/client/PluginManager$5;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/PluginManager;->deletePackageAsync(Ljava/lang/String;Lcom/iflytek/greenplug/client/TaskListener;)V
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
    .line 547
    iput-object p1, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    iput-object p2, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->b:Lcom/iflytek/greenplug/client/TaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 550
    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v5

    .line 551
    .local v5, "result":I
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->a:Ljava/lang/String;

    aput-object v8, v2, v7

    .line 552
    .local v2, "params":[Ljava/lang/Object;
    new-instance v6, Lcom/iflytek/greenplug/client/GPTask;

    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;->DELETE_PACKAGE:Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;

    sget-object v8, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-direct {v6, v7, v2, v8}, Lcom/iflytek/greenplug/client/GPTask;-><init>(Lcom/iflytek/greenplug/client/GPTask$TASK_TYPE;[Ljava/lang/Object;Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;)V

    .line 553
    .local v6, "task":Lcom/iflytek/greenplug/client/GPTask;
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 554
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->b:Lcom/iflytek/greenplug/client/TaskListener;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$200(Lcom/iflytek/greenplug/client/PluginManager;)Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 559
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    iget-object v8, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/iflytek/greenplug/client/PluginManager;->deletePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 581
    :goto_0
    invoke-virtual {v6, v5}, Lcom/iflytek/greenplug/client/GPTask;->setTaskResult(I)V

    .line 582
    const-string/jumbo v7, "PluginManager"

    const-string/jumbo v8, "deletePackageAsync onTaskFinish called."

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/greenplug/client/TaskListener;

    invoke-interface {v7, v6}, Lcom/iflytek/greenplug/client/TaskListener;->onTaskFinish(Lcom/iflytek/greenplug/client/GPTask;)V

    .line 584
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :goto_1
    return-void

    .line 561
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7, v6}, Lcom/iflytek/greenplug/client/PluginManager;->access$300(Lcom/iflytek/greenplug/client/PluginManager;Lcom/iflytek/greenplug/client/GPTask;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "PluginManager"

    const-string/jumbo v8, "deletePackageAsync async error"

    invoke-static {v7, v8, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 565
    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v5

    .line 567
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$200(Lcom/iflytek/greenplug/client/PluginManager;)Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    move-result-object v7

    if-nez v7, :cond_3

    .line 569
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$400(Lcom/iflytek/greenplug/client/PluginManager;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/PluginDirHelper;->makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "pluginInstallDir":Ljava/lang/String;
    invoke-static {v3}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteDir(Ljava/lang/String;)V

    .line 571
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v8}, Lcom/iflytek/greenplug/client/PluginManager;->access$400(Lcom/iflytek/greenplug/client/PluginManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginPendingDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "pluginPendingFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 574
    invoke-static {v1}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 578
    :cond_2
    sget-object v7, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS_PARTIAL:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v7}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 581
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pluginInstallDir":Ljava/lang/String;
    .end local v4    # "pluginPendingFile":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v5}, Lcom/iflytek/greenplug/client/GPTask;->setTaskResult(I)V

    .line 582
    const-string/jumbo v7, "PluginManager"

    const-string/jumbo v8, "deletePackageAsync onTaskFinish called."

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/greenplug/client/TaskListener;

    invoke-interface {v7, v6}, Lcom/iflytek/greenplug/client/TaskListener;->onTaskFinish(Lcom/iflytek/greenplug/client/GPTask;)V

    .line 584
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    move-object v8, v7

    invoke-virtual {v6, v5}, Lcom/iflytek/greenplug/client/GPTask;->setTaskResult(I)V

    .line 582
    const-string/jumbo v7, "PluginManager"

    const-string/jumbo v9, "deletePackageAsync onTaskFinish called."

    invoke-static {v7, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/greenplug/client/TaskListener;

    invoke-interface {v7, v6}, Lcom/iflytek/greenplug/client/TaskListener;->onTaskFinish(Lcom/iflytek/greenplug/client/GPTask;)V

    .line 584
    iget-object v7, p0, Lcom/iflytek/greenplug/client/PluginManager$5;->c:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/PluginManager;->access$100(Lcom/iflytek/greenplug/client/PluginManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v8
.end method
