.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aj;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "aj"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 374
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 392
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 393
    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    .line 394
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 395
    aget-object v2, p3, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 396
    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    .line 397
    .local v0, "callerPackage":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aj;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    .line 394
    .end local v0    # "callerPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "index":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
