.class Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$j;
.super Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$a;
.source "INotificationManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic b:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$j;->b:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;

    .line 973
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/content/Context;)V

    .line 974
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 7
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 980
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$a;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    .line 982
    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$j;->b:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;

    invoke-static {v3, p3}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->access$000(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;[Ljava/lang/Object;)I

    move-result v0

    .line 983
    .local v0, "index2":I
    if-ltz v0, :cond_0

    .line 984
    aget-object v1, p3, v0

    check-cast v1, Landroid/app/Notification;

    .line 985
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$j;->b:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;

    invoke-static {v3, v1}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->access$100(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, "pluginPkg":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPluginPackage result is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 990
    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle$j;->b:Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;

    invoke-static {v3, v2, v1}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;->access$300(Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;Ljava/lang/String;Landroid/app/Notification;)V

    .line 994
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "pluginPkg":Ljava/lang/String;
    :cond_0
    return v6
.end method
