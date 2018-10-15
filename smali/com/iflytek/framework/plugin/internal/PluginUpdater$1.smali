.class Lcom/iflytek/framework/plugin/internal/PluginUpdater$1;
.super Ljava/lang/Object;
.source "PluginUpdater.java"

# interfaces
.implements Lvt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/plugin/internal/PluginUpdater;->updatePluginRes([Ljava/lang/Integer;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginUpdater;

.field final synthetic val$listener:Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginUpdater;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/plugin/internal/PluginUpdater;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginUpdater$1;->this$0:Lcom/iflytek/framework/plugin/internal/PluginUpdater;

    iput-object p2, p0, Lcom/iflytek/framework/plugin/internal/PluginUpdater$1;->val$listener:Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlcError(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v0, "PluginUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBlcError errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginUpdater$1;->val$listener:Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginUpdater$1;->val$listener:Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;

    invoke-interface {v0, p2}, Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;->onUpdateError(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onBlcResult(ILcom/iflytek/yd/business/OperationInfo;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "info"    # Lcom/iflytek/yd/business/OperationInfo;

    .prologue
    .line 52
    if-nez p2, :cond_1

    .line 53
    const-string/jumbo v4, "PluginUpdater"

    const-string/jumbo v5, "onBlcResult info is null"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    instance-of v4, p2, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    if-eqz v4, :cond_0

    move-object v1, p2

    .line 58
    check-cast v1, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .line 59
    .local v1, "netPluginInfo":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    .local v2, "netPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    const/4 v3, 0x0

    .line 61
    .local v3, "pluginTypes":[I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 65
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginTypeWithId(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginUpdater$1;->val$listener:Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;

    if-eqz v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginUpdater$1;->val$listener:Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;

    invoke-interface {v4, v3, v1}, Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;->onUpdateSuccess([ILcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;)V

    goto :goto_0
.end method
