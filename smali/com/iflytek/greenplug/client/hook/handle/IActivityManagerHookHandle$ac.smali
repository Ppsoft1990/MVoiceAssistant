.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ac;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ac"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 2117
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 2118
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
    const/4 v4, 0x6

    .line 2127
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 2128
    const/4 v0, 0x6

    .line 2129
    .local v0, "index":I
    if-eqz p3, :cond_0

    array-length v2, p3

    if-le v2, v4, :cond_0

    .line 2130
    aget-object v2, p3, v4

    if-eqz v2, :cond_0

    aget-object v2, p3, v4

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2131
    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    .line 2132
    .local v1, "targetPkg":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2133
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ac;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v4

    .line 2138
    .end local v0    # "index":I
    .end local v1    # "targetPkg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
