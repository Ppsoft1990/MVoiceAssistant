.class Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$h;
.super Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$a;
.source "IClipboardHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic b:Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$h;->b:Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IClipboardHookHandle;Landroid/content/Context;)V

    .line 70
    return-void
.end method
