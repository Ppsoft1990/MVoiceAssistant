.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ay;
.super Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ay"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;-><init>(Landroid/content/Context;)V

    .line 316
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 5
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 325
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "index":I
    if-eqz p3, :cond_0

    array-length v3, p3

    if-lez v3, :cond_0

    .line 328
    aget-object v3, p3, v2

    if-eqz v3, :cond_0

    aget-object v3, p3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 329
    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/String;

    .line 330
    .local v1, "targetPkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ay;->mHostContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v2

    .line 336
    .end local v1    # "targetPkg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    .line 338
    .end local v0    # "index":I
    :cond_1
    return v2
.end method
