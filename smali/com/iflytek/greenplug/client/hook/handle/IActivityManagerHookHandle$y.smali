.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$y;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "y"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 625
    return-void
.end method


# virtual methods
.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
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
    .line 634
    if-eqz p4, :cond_1

    instance-of v3, p4, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v1, p4

    .line 635
    check-cast v1, Ljava/util/List;

    .line 636
    .local v1, "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 637
    .local v0, "obj":Ljava/lang/Object;
    instance-of v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 638
    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 639
    .local v2, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$y;->mHostContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$500(Landroid/app/ActivityManager$RunningServiceInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 643
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "objectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return-void
.end method
