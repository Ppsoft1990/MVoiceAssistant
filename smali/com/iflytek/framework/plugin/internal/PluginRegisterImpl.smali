.class final Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;
.super Ljava/lang/Object;
.source "PluginRegisterImpl.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPluginRegistManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl$SingletionHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginRegisterImpl"


# instance fields
.field private mPluginStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStateLockObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mStateLockObj:Ljava/lang/Object;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mPluginStateArray:Landroid/util/SparseArray;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl$1;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;-><init>()V

    return-void
.end method

.method protected static getInstance()Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl$SingletionHolder;->mInstance:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    return-object v0
.end method


# virtual methods
.method protected notiflyPluginDisableChanged(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .param p3, "event"    # I

    .prologue
    .line 92
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mStateLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mPluginStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mPluginStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 95
    .local v1, "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;

    .line 97
    .local v0, "observer":Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;
    invoke-interface {v0, p2, p3}, Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;->onPluginDisabled(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V

    goto :goto_0

    .line 101
    .end local v0    # "observer":Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;
    .end local v1    # "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    return-void
.end method

.method protected notifyPluginEnableChanged(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .param p3, "event"    # I

    .prologue
    .line 79
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mStateLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mPluginStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mPluginStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 82
    .local v1, "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;

    .line 84
    .local v0, "observer":Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;
    invoke-interface {v0, p2, p3}, Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;->onPluginEnabled(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V

    goto :goto_0

    .line 88
    .end local v0    # "observer":Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;
    .end local v1    # "observers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    return-void
.end method

.method public registPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "observer"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;

    .prologue
    const/4 v1, 0x0

    .line 39
    if-nez p2, :cond_0

    .line 40
    const-string/jumbo v2, "PluginRegisterImpl"

    const-string/jumbo v3, "registPluginStateObserver | listener is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return v1

    .line 43
    :cond_0
    const-string/jumbo v2, "PluginRegisterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registPluginStateObserver | type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mStateLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mPluginStateArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mPluginStateArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 52
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 55
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unRegistPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "observer"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;

    .prologue
    const/4 v1, 0x0

    .line 62
    if-nez p2, :cond_0

    .line 63
    const-string/jumbo v2, "PluginRegisterImpl"

    const-string/jumbo v3, "unRegistPluginStateObserver | listener is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return v1

    .line 66
    :cond_0
    const-string/jumbo v2, "PluginRegisterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unRegistPluginStateObserver | type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mStateLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->mPluginStateArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 69
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 73
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;>;"
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
