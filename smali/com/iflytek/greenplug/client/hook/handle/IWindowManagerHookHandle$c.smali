.class Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$c;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IWindowManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle$c;->a:Lcom/iflytek/greenplug/client/hook/handle/IWindowManagerHookHandle;

    .line 57
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method
