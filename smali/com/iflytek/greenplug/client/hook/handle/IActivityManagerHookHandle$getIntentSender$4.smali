.class final Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;
.super Ljava/lang/Thread;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->handlePendingIntent(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Intent;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 2065
    iput-object p2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;->c:Landroid/content/Intent;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2069
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/greenplug/client/PluginManager;->waitForConnected(J)V

    .line 2070
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    :goto_0
    return-void

    .line 2071
    :catch_0
    move-exception v0

    .line 2072
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity for PendingIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$4;->c:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
