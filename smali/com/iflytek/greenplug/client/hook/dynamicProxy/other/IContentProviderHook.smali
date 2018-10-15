.class public Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;
.super Lcom/iflytek/greenplug/client/hook/Hook;
.source "IContentProviderHook.java"


# instance fields
.field private final mLocalProvider:Z

.field private final mStubProvider:Landroid/content/pm/ProviderInfo;

.field private final mTargetProvider:Landroid/content/pm/ProviderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldObj"    # Ljava/lang/Object;
    .param p3, "stubProvider"    # Landroid/content/pm/ProviderInfo;
    .param p4, "targetProvider"    # Landroid/content/pm/ProviderInfo;
    .param p5, "localProvider"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/Hook;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->setOldObj(Ljava/lang/Object;)V

    .line 25
    iput-object p3, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->mStubProvider:Landroid/content/pm/ProviderInfo;

    .line 26
    iput-object p4, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->mTargetProvider:Landroid/content/pm/ProviderInfo;

    .line 27
    iput-boolean p5, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->mLocalProvider:Z

    .line 28
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->mHookHandles:Lcom/iflytek/greenplug/client/hook/BaseHookHandle;

    .line 30
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
    .line 44
    return-void
.end method

.method protected createHookHandle()Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->mHostContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->mStubProvider:Landroid/content/pm/ProviderInfo;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->mTargetProvider:Landroid/content/pm/ProviderInfo;

    iget-boolean v4, p0, Lcom/iflytek/greenplug/client/hook/dynamicProxy/other/IContentProviderHook;->mLocalProvider:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iflytek/greenplug/client/hook/handle/IContentProviderInvokeHandle;-><init>(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;Z)V

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
    .line 39
    return-void
.end method
