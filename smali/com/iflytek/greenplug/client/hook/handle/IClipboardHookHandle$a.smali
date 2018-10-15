.class Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IClipboardHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;

    .line 52
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 3
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p3, v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 58
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    .line 63
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
