.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$f;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 2088
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 2089
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 6
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2099
    const/4 v0, 0x0

    .line 2100
    .local v0, "index":I
    if-eqz p3, :cond_1

    array-length v4, p3

    if-lez v4, :cond_1

    .line 2101
    aget-object v4, p3, v5

    if-eqz v4, :cond_1

    aget-object v4, p3, v5

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2102
    aget-object v2, p3, v5

    check-cast v2, Ljava/lang/String;

    .line 2103
    .local v2, "targetPkg":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2104
    array-length v4, p3

    if-le v4, v3, :cond_0

    aget-object v1, p3, v3

    .line 2105
    .local v1, "observer":Ljava/lang/Object;
    :goto_0
    invoke-static {v2, v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$1100(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2110
    .end local v1    # "observer":Ljava/lang/Object;
    .end local v2    # "targetPkg":Ljava/lang/String;
    :goto_1
    return v3

    .line 2104
    .restart local v2    # "targetPkg":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2110
    .end local v2    # "targetPkg":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method
