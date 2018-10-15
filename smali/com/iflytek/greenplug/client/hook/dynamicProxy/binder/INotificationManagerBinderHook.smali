.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/INotificationManagerBinderHook;
.super Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;
.source "INotificationManagerBinderHook.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "notification"

.field private static final TAG:Ljava/lang/String; = "INotificationManagerBinderHook"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/INotificationManagerBinderHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/INotificationManagerHookHandle;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getOldServiceObjByIBinder(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lcom/iflytek/greenplug/common/utils/compat/INotificationManagerCompat;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "notification"

    return-object v0
.end method

.method public onInstall()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 27
    invoke-super {p0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->onInstall()V

    .line 30
    const-string/jumbo v3, "android.app.NotificationManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, "clazz":Ljava/lang/Class;
    const-string/jumbo v3, "sService"

    invoke-static {v0, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    .local v1, "obj":Ljava/lang/Object;
    const-string/jumbo v3, "notification"

    invoke-static {v3}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/INotificationManagerBinderHook;->getProxiedServiceObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "proxiedObj":Ljava/lang/Object;
    const-string/jumbo v3, "INotificationManagerBinderHook"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInstall begin, sService:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", proxiedObj:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-nez v1, :cond_0

    .line 36
    const-string/jumbo v3, "INotificationManagerBinderHook"

    const-string/jumbo v4, "onInstall end, sService is null, no need handle"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    if-ne v1, v2, :cond_1

    .line 38
    const-string/jumbo v3, "INotificationManagerBinderHook"

    const-string/jumbo v4, "onInstall end, sService equals proxiedObj, no need handle"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    const-string/jumbo v3, "sService"

    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/INotificationManagerBinderHook;->mProxiedObj:Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/INotificationManagerBinderHook;->setOldObj(Ljava/lang/Object;)V

    .line 42
    const-string/jumbo v3, "INotificationManagerBinderHook"

    const-string/jumbo v4, "onInstall end, set proxiedObj to replace sService"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
