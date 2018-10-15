.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ITelephonyBinderHook;
.super Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;
.source "ITelephonyBinderHook.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "phone"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/ITelephonyBinderHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/ITelephonyHookHandle;-><init>(Landroid/content/Context;)V

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
    .line 23
    invoke-static {p1}, Lcom/iflytek/greenplug/common/utils/compat/ITelephonyCompat;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "phone"

    return-object v0
.end method
