.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IContentServiceBinderHook;
.super Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;
.source "IContentServiceBinderHook.java"


# static fields
.field private static final CONTENT_SERVICE_NAME:Ljava/lang/String; = "content"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/BinderHook;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/binder/IContentServiceBinderHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IContentServiceHandle;-><init>(Landroid/content/Context;)V

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
    .line 24
    invoke-static {p1}, Lcom/iflytek/greenplug/common/utils/compat/IContentServiceCompat;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "content"

    return-object v0
.end method
