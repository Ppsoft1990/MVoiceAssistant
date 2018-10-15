.class Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$j;
.super Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;
.source "LibCoreHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$j;->a:Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;

    .line 151
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;-><init>(Landroid/content/Context;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x1

    .line 157
    .local v0, "index":I
    invoke-virtual {p0, p3, v0}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$j;->a([Ljava/lang/Object;I)V

    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
