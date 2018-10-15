.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$z;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "z"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$z;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 114
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 9
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 124
    if-eqz p3, :cond_3

    .line 125
    const/4 v2, 0x0

    .local v2, "index0":I
    const/4 v3, 0x1

    .line 126
    .local v3, "index1":I
    const/4 v5, 0x0

    .line 127
    .local v5, "packageName":Ljava/lang/String;
    array-length v6, p3

    if-lez v6, :cond_0

    .line 128
    aget-object v6, p3, v8

    if-eqz v6, :cond_0

    aget-object v6, p3, v8

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 129
    aget-object v5, p3, v8

    .end local v5    # "packageName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 133
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "flags":I
    array-length v6, p3

    if-le v6, v7, :cond_1

    .line 135
    aget-object v6, p3, v7

    if-eqz v6, :cond_1

    aget-object v6, p3, v7

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 136
    aget-object v6, p3, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 140
    :cond_1
    if-eqz v5, :cond_3

    .line 141
    const/4 v4, 0x0

    .line 143
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Lcom/iflytek/greenplug/client/PluginManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 147
    :goto_0
    if-eqz v4, :cond_2

    .line 148
    invoke-virtual {p0, v4}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$z;->setFakedResult(Ljava/lang/Object;)V

    move v6, v7

    .line 156
    .end local v1    # "flags":I
    .end local v2    # "index0":I
    .end local v3    # "index1":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_1
    return v6

    .line 144
    .restart local v1    # "flags":I
    .restart local v2    # "index0":I
    .restart local v3    # "index1":I
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageInfo("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), not founded in plugins,it may be a external app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v1    # "flags":I
    .end local v2    # "index0":I
    .end local v3    # "index1":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1
.end method
