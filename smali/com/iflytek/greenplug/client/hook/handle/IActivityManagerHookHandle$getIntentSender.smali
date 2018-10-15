.class public Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getIntentSender"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 1883
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 1884
    return-void
.end method

.method public static handlePendingIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2022
    if-eqz p1, :cond_1

    .line 2023
    :try_start_0
    const-string/jumbo v6, "com.iflytek.greenplug.EXTRA_TYPE"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2024
    .local v5, "type":I
    const-string/jumbo v6, "com.iflytek.greenplug.pending.OldIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2025
    .local v1, "actionIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2026
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2027
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2030
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2031
    .local v3, "handle":Landroid/os/Handler;
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    if-eqz v1, :cond_2

    .line 2032
    new-instance v4, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$1;

    invoke-direct {v4, p0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2042
    .local v4, "r":Ljava/lang/Runnable;
    new-instance v6, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$2;

    const-string/jumbo v7, ""

    invoke-direct {v6, v7, v3, v4, v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$2;-><init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Intent;)V

    .line 2052
    invoke-virtual {v6}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$2;->start()V

    .line 2081
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "actionIntent":Landroid/content/Intent;
    .end local v3    # "handle":Landroid/os/Handler;
    .end local v4    # "r":Ljava/lang/Runnable;
    .end local v5    # "type":I
    :cond_1
    :goto_0
    return-void

    .line 2053
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "actionIntent":Landroid/content/Intent;
    .restart local v3    # "handle":Landroid/os/Handler;
    .restart local v5    # "type":I
    :cond_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    if-eqz v1, :cond_1

    .line 2054
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2055
    new-instance v4, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$3;

    invoke-direct {v4, p0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2065
    .restart local v4    # "r":Ljava/lang/Runnable;
    new-instance v6, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;

    const-string/jumbo v7, ""

    invoke-direct {v6, v7, v3, v4, v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;-><init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Intent;)V

    .line 2075
    invoke-virtual {v6}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2078
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "actionIntent":Landroid/content/Intent;
    .end local v3    # "handle":Landroid/os/Handler;
    .end local v4    # "r":Ljava/lang/Runnable;
    .end local v5    # "type":I
    :catch_0
    move-exception v2

    .line 2079
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "handlePendingIntent error"

    invoke-static {v6, v7, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private replace(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "type"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1970
    const/4 v7, 0x4

    if-ne p1, v7, :cond_0

    .line 1971
    invoke-static {p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$1000(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 1972
    .local v0, "a":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_3

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1974
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1975
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->mHostContext:Landroid/content/Context;

    const-class v8, Lcom/iflytek/greenplug/server/service/PluginManagerService;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1976
    .local v2, "newIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1977
    const-string/jumbo v7, "com.iflytek.greenplug.pending.OldIntent"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1978
    const-string/jumbo v7, "com.iflytek.greenplug.EXTRA_TYPE"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2017
    .end local v0    # "a":Landroid/content/pm/ServiceInfo;
    .end local v2    # "newIntent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 1981
    :cond_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    .line 1982
    invoke-static {p2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$100(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1983
    .local v0, "a":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_3

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1985
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1986
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->mHostContext:Landroid/content/Context;

    const-class v8, Lcom/iflytek/greenplug/server/service/PluginManagerService;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1987
    .restart local v2    # "newIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1988
    const-string/jumbo v7, "com.iflytek.greenplug.pending.OldIntent"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1989
    const-string/jumbo v7, "com.iflytek.greenplug.EXTRA_TYPE"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1992
    .end local v0    # "a":Landroid/content/pm/ActivityInfo;
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_1
    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    .line 1994
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1995
    .local v1, "cmp":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1996
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lcom/iflytek/greenplug/client/PluginManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1997
    .local v3, "receiverInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/iflytek/greenplug/client/PluginManager;->bindStubReceiver(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v6

    .line 1998
    .local v6, "stubReceiver":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1999
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->mHostContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    .local v4, "stubComp":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2003
    .local v5, "stubIntent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2006
    const-string/jumbo v7, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v2, v5

    .line 2007
    goto :goto_0

    .line 2011
    .end local v3    # "receiverInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "stubComp":Landroid/content/ComponentName;
    .end local v5    # "stubIntent":Landroid/content/Intent;
    .end local v6    # "stubReceiver":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2012
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fix broadcast intent packageName, old intent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->mHostContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, p2

    .line 2014
    goto/16 :goto_0

    .line 2017
    .end local v1    # "cmp":Landroid/content/ComponentName;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 14
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1913
    const/4 v4, 0x1

    .line 1914
    .local v4, "index":I
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    const/4 v12, 0x1

    aget-object v12, p3, v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    aget-object v12, p3, v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 1915
    const/4 v12, 0x1

    aget-object v1, p3, v12

    check-cast v1, Ljava/lang/String;

    .line 1916
    .local v1, "callerPackage":Ljava/lang/String;
    iget-object v12, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->mHostContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1917
    .local v10, "originPackageName":Ljava/lang/String;
    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1918
    const/4 v12, 0x1

    aput-object v10, p3, v12

    .line 1925
    .end local v1    # "callerPackage":Ljava/lang/String;
    .end local v10    # "originPackageName":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x5

    .line 1926
    .local v5, "index5":I
    const/4 v2, 0x0

    .line 1927
    .local v2, "hasReplacedIntent":Z
    const/4 v12, 0x0

    aget-object v12, p3, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1928
    .local v11, "type":I
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v13, 0x5

    if-le v12, v13, :cond_2

    const/4 v12, 0x5

    aget-object v12, p3, v12

    if-eqz v12, :cond_2

    .line 1929
    const/4 v12, 0x5

    aget-object v12, p3, v12

    instance-of v12, v12, Landroid/content/Intent;

    if-eqz v12, :cond_5

    .line 1930
    const/4 v12, 0x5

    aget-object v7, p3, v12

    check-cast v7, Landroid/content/Intent;

    .line 1931
    .local v7, "intent":Landroid/content/Intent;
    invoke-direct {p0, v11, v7}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->replace(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    .line 1932
    .local v9, "newIntent":Landroid/content/Intent;
    if-eqz v9, :cond_2

    .line 1933
    const/4 v12, 0x5

    aput-object v9, p3, v12

    .line 1934
    const-string/jumbo v12, "com.iflytek.greenplug.pending.OldIntent"

    invoke-virtual {v9, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v9, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1935
    :cond_1
    const/4 v2, 0x1

    .line 1956
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "newIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    const/4 v6, 0x7

    .line 1957
    .local v6, "index7":I
    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v13, 0x7

    if-le v12, v13, :cond_4

    .line 1958
    const/4 v12, 0x7

    aget-object v12, p3, v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-eqz v12, :cond_3

    .line 1959
    const/4 v12, 0x7

    const/high16 v13, 0x8000000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, p3, v12

    .line 1962
    :cond_3
    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 1963
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, p3, v12

    .line 1966
    :cond_4
    invoke-super/range {p0 .. p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v12

    return v12

    .line 1939
    .end local v6    # "index7":I
    :cond_5
    const/4 v12, 0x5

    aget-object v12, p3, v12

    instance-of v12, v12, [Landroid/content/Intent;

    if-eqz v12, :cond_2

    .line 1940
    const/4 v12, 0x5

    aget-object v12, p3, v12

    check-cast v12, [Landroid/content/Intent;

    move-object v8, v12

    check-cast v8, [Landroid/content/Intent;

    .line 1941
    .local v8, "intents":[Landroid/content/Intent;
    if-eqz v8, :cond_2

    array-length v12, v8

    if-lez v12, :cond_2

    .line 1942
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v12, v8

    if-ge v3, v12, :cond_8

    .line 1943
    aget-object v12, v8, v3

    invoke-direct {p0, v11, v12}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->replace(ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v9

    .line 1944
    .restart local v9    # "newIntent":Landroid/content/Intent;
    if-eqz v9, :cond_7

    .line 1945
    aput-object v9, v8, v3

    .line 1946
    const-string/jumbo v12, "com.iflytek.greenplug.pending.OldIntent"

    invoke-virtual {v9, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    if-nez v12, :cond_6

    const-string/jumbo v12, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v9, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 1947
    :cond_6
    const/4 v2, 0x1

    .line 1942
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1951
    .end local v9    # "newIntent":Landroid/content/Intent;
    :cond_8
    const/4 v12, 0x5

    aput-object v8, p3, v12

    goto :goto_0
.end method
