.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$w;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "w"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 2307
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 2308
    return-void
.end method


# virtual methods
.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "invokeResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2317
    if-eqz p4, :cond_3

    instance-of v7, p4, Ljava/util/List;

    if-eqz v7, :cond_3

    move-object v2, p4

    .line 2319
    check-cast v2, Ljava/util/List;

    .line 2320
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 2321
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2322
    .local v6, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2323
    .local v1, "info":Ljava/lang/Object;
    instance-of v8, v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_0

    move-object v3, v1

    .line 2324
    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 2325
    .local v3, "myinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2326
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2330
    .end local v1    # "info":Ljava/lang/Object;
    .end local v3    # "myinfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 2331
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 2332
    .local v5, "pluginInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2333
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 2334
    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$1200(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2335
    .local v4, "object":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_2

    .line 2336
    invoke-interface {v2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2343
    .end local v0    # "index":I
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "object":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pluginInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_3
    invoke-virtual {p0, p4}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$w;->setFakedResult(Ljava/lang/Object;)V

    .line 2344
    return-void
.end method
