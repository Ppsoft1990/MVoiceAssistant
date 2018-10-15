.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IWindowManagerBinderHook;
.super Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;
.source "IWindowManagerBinderHook.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "window"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IWindowManagerBinderHook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IWindowManagerBinderHook;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public static fixWindowManagerHook(Landroid/app/Activity;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    :try_start_0
    const-string/jumbo v7, "mWindow"

    invoke-static {p0, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 59
    .local v4, "mWindow":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 60
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "className":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/OSUtils;->getInstance()Lcom/iflytek/greenplug/common/utils/OSUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/greenplug/common/utils/OSUtils;->getOS()Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    move-result-object v7

    sget-object v8, Lcom/iflytek/greenplug/common/utils/OSUtils$OS;->EMUI:Lcom/iflytek/greenplug/common/utils/OSUtils$OS;

    if-ne v7, v8, :cond_0

    .line 63
    const-string/jumbo v7, "Hw"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "$WindowManagerHolder"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "WindowManagerHolder":Ljava/lang/Class;
    const-string/jumbo v7, "sWindowManager"

    invoke-static {v0, v7}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 67
    .local v5, "obj":Ljava/lang/Object;
    const-string/jumbo v7, "window"

    invoke-static {v7}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IWindowManagerBinderHook;->getProxiedServiceObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 68
    .local v6, "proxiedObj":Ljava/lang/Object;
    if-ne v5, v6, :cond_1

    .line 75
    .end local v0    # "WindowManagerHolder":Ljava/lang/Class;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "mWindow":Ljava/lang/Object;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "proxiedObj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 71
    .restart local v0    # "WindowManagerHolder":Ljava/lang/Class;
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v4    # "mWindow":Ljava/lang/Object;
    .restart local v5    # "obj":Ljava/lang/Object;
    .restart local v6    # "proxiedObj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "sWindowManager"

    invoke-static {v0, v7, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "WindowManagerHolder":Ljava/lang/Class;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "mWindow":Ljava/lang/Object;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "proxiedObj":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IWindowManagerBinderHook;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "fixWindowManagerHook writeStaticField to sWindowManager fail"

    invoke-static {v7, v8, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IWindowManagerBinderHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;-><init>(Landroid/content/Context;)V

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
    .line 29
    invoke-static {p1}, Lcom/iflytek/greenplug/common/utils/compat/IWindowManagerCompat;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "window"

    return-object v0
.end method

.method public onInstall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;->onInstall()V

    .line 47
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    const-string/jumbo v2, "com.android.internal.policy.impl.PhoneWindow$WindowManagerHolder"

    :goto_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "claszz":Ljava/lang/Class;
    const-string/jumbo v2, "sWindowManager"

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IWindowManagerBinderHook;->mProxiedObj:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .end local v0    # "claszz":Ljava/lang/Class;
    :goto_1
    return-void

    .line 47
    :cond_0
    const-string/jumbo v2, "com.android.internal.policy.PhoneWindow$WindowManagerHolder"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IWindowManagerBinderHook;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onInstall writeStaticField to sWindowManager fail"

    invoke-static {v2, v3, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
