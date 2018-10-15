.class Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IWindowSessionInvokeHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;

    .line 32
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;)I
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 36
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 38
    aget-object v1, p1, v0

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    .line 43
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 37
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

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
    .line 50
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 51
    invoke-virtual {p0, p3}, Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle$a;->a([Ljava/lang/Object;)I

    move-result v1

    .line 52
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 53
    aget-object v0, p3, v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 55
    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 67
    .end local v0    # "attr":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "index":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
