.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$v;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 2254
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 2255
    return-void
.end method


# virtual methods
.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
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
    .line 2265
    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    instance-of v8, v0, Ljava/util/List;

    if-eqz v8, :cond_6

    move-object/from16 v2, p4

    .line 2267
    check-cast v2, Ljava/util/List;

    .line 2268
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 2269
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2270
    .local v1, "info":Ljava/lang/Object;
    instance-of v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v8, :cond_0

    move-object v4, v1

    .line 2271
    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2272
    .local v4, "myinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    if-ne v8, v10, :cond_0

    .line 2275
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v8, v10}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageNameByPid(I)Ljava/util/List;

    move-result-object v5

    .line 2276
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v8, v10}, Lcom/iflytek/greenplug/client/PluginManager;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v6

    .line 2277
    .local v6, "processname":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 2278
    iput-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 2280
    :cond_1
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2282
    .local v3, "ls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 2283
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v11, :cond_3

    aget-object v7, v10, v8

    .line 2284
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2285
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2289
    .end local v7    # "s":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2290
    .restart local v7    # "s":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2291
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2294
    .end local v7    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    goto :goto_0

    .line 2301
    .end local v1    # "info":Ljava/lang/Object;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "ls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "myinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "processname":Ljava/lang/String;
    :cond_6
    return-void
.end method
