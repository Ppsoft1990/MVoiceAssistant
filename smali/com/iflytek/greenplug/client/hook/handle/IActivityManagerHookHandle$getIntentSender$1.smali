.class final Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$1;
.super Ljava/lang/Object;
.source "IActivityManagerHookHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;->handlePendingIntent(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2036
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$1;->b:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2040
    :goto_0
    return-void

    .line 2037
    :catch_0
    move-exception v0

    .line 2038
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startService for PendingIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender$1;->b:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
