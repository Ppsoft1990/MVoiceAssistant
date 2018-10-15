.class Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;
.super Ljava/lang/Object;
.source "IPluginManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;->a:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 481
    const-string/jumbo v2, "IPluginManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deletePluginInBackground, bindService service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;->a:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    invoke-static {p2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginAction$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->access$102(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;)Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;

    .line 485
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;->a:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    invoke-static {v2}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->access$100(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;)Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;->preDeletePlugin(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;->a:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    invoke-static {v2}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->access$000(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;->a:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    invoke-static {v3}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->access$200(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    iget-object v2, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;->a:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    invoke-static {v2, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->access$300(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;Ljava/lang/String;)V

    .line 491
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "IPluginManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preDeletePlugin error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl$2;->a:Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;->access$102(Lcom/iflytek/greenplug/server/service/IPluginManagerImpl;Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;)Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;

    .line 496
    return-void
.end method
