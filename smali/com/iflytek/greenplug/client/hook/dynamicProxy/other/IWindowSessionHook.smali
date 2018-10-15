.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IWindowSessionHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "IWindowSessionHook.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldObj"    # Ljava/lang/Object;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IWindowSessionHook;->setOldObj(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IWindowSessionHook;->createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IWindowSessionHook;->mHookHandles:Lcom/iflytek/greenplug/client/hook/BaseHookHandle;

    .line 20
    return-void
.end method


# virtual methods
.method public checkInstall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    return-void
.end method

.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IWindowSessionHook;->mHostContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onInstall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    return-void
.end method
