.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;
.super Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$MyIServiceConnection;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;

.field final synthetic val$oldIServiceConnection:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;Landroid/content/pm/ServiceInfo;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;->this$0:Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;

    iput-object p3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;->val$oldIServiceConnection:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$MyIServiceConnection;-><init>(Landroid/content/pm/ServiceInfo;Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$1;)V

    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1585
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;->val$oldIServiceConnection:Ljava/lang/Object;

    const-string/jumbo v2, "connected"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;->mInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;->mInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    :goto_0
    return-void

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "invokeMethod connected"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "dead"    # Z

    .prologue
    .line 1594
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;->val$oldIServiceConnection:Ljava/lang/Object;

    const-string/jumbo v2, "connected"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;->mInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService$1;->mInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    :goto_0
    return-void

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "invokeMethod connected"

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
