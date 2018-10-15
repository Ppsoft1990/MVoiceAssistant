.class Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle$b;
.super Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle$a;
.source "IWindowSessionInvokeHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle$b;->b:Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IWindowSessionInvokeHandle;Landroid/content/Context;)V

    .line 74
    return-void
.end method
