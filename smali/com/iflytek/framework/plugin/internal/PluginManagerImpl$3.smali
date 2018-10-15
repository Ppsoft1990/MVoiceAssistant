.class Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processAppInstallEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)V
    .locals 8
    .param p1, "pluginData"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 1436
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v1, "onGetPlugin"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$700(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 1438
    .local v5, "callback":Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;
    if-nez p1, :cond_1

    .line 1439
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    const/16 v1, 0x3e8

    const v2, 0x8003

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$800(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1442
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$700(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v6

    .line 1446
    .local v6, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v6, :cond_0

    .line 1447
    invoke-virtual {v6}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v7

    .line 1448
    .local v7, "type":I
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-static {v0, v7, p1, v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$900(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1449
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$700(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
