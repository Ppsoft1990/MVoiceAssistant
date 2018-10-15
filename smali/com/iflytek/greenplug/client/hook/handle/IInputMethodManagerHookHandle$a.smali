.class Lcom/iflytek/greenplug/client/hook/handle/IInputMethodManagerHookHandle$a;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IInputMethodManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IInputMethodManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IInputMethodManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IInputMethodManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IInputMethodManagerHookHandle$a;->a:Lcom/iflytek/greenplug/client/hook/handle/IInputMethodManagerHookHandle;

    .line 29
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 30
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
    .line 34
    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    .line 35
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p3, v2

    .line 36
    .local v0, "arg":Ljava/lang/Object;
    instance-of v4, v0, Landroid/view/inputmethod/EditorInfo;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 37
    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 38
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/IInputMethodManagerHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    iget-object v4, p0, Lcom/iflytek/greenplug/client/hook/handle/IInputMethodManagerHookHandle$a;->mHostContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 35
    .end local v1    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
