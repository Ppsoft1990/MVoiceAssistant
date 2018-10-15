.class Lcom/iflytek/greenplug/client/PluginManager$1;
.super Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback$Stub;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/PluginManager;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/PluginManager;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/PluginManager;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/iflytek/greenplug/client/PluginManager$1;->a:Lcom/iflytek/greenplug/client/PluginManager;

    invoke-direct {p0}, Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    return-object p1
.end method
