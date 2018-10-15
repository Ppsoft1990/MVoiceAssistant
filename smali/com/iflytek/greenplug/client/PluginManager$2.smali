.class Lcom/iflytek/greenplug/client/PluginManager$2;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/PluginManager;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Lcom/iflytek/greenplug/client/PluginManager;


# direct methods
.method constructor <init>(Lcom/iflytek/greenplug/client/PluginManager;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/greenplug/client/PluginManager;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/iflytek/greenplug/client/PluginManager$2;->b:Lcom/iflytek/greenplug/client/PluginManager;

    iput-object p2, p0, Lcom/iflytek/greenplug/client/PluginManager$2;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 263
    const-string/jumbo v0, "PluginManager"

    const-string/jumbo v1, "pluginManager server has died, receive the deathRecipient, so try re-connect it"

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/iflytek/greenplug/client/PluginManager$2;->b:Lcom/iflytek/greenplug/client/PluginManager;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/PluginManager$2;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/iflytek/greenplug/client/PluginManager;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 265
    return-void
.end method
