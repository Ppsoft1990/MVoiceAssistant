.class Lcom/iflytek/greenplug/client/PluginManager$6;
.super Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver$Stub;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/PluginManager;->clearApplicationUserData(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/iflytek/greenplug/client/PluginManager;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/PluginManager;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/PluginManager;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/iflytek/greenplug/client/PluginManager$6;->b:Lcom/iflytek/greenplug/client/PluginManager;

    iput-object p2, p0, Lcom/iflytek/greenplug/client/PluginManager$6;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 791
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager$6;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 793
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/client/PluginManager$6;->a:Ljava/lang/Object;

    const-string/jumbo v3, "onRemoveCompleted"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    .line 796
    .local v1, "exception":Landroid/os/RemoteException;
    invoke-virtual {v1, v1}, Landroid/os/RemoteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 797
    throw v1
.end method
