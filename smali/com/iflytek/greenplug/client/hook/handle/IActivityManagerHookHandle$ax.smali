.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ax"
.end annotation


# instance fields
.field private a:Landroid/content/pm/ServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 810
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;->a:Landroid/content/pm/ServiceInfo;

    .line 811
    return-void
.end method


# virtual methods
.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "invokeResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 830
    if-eqz p4, :cond_0

    instance-of v0, p4, Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;->a:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    .line 832
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;->a:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;->a:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;->setFakedResult(Ljava/lang/Object;)V

    .line 835
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;->a:Landroid/content/pm/ServiceInfo;

    .line 836
    invoke-super {p0, p1, p2, p3, p4}, Lrt;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 837
    return-void
.end method

.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {p3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$600([Ljava/lang/Object;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;->a:Landroid/content/pm/ServiceInfo;

    .line 825
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
