.class Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$d;
.super Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$a;
.source "IAudioServiceHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IAudioServiceHookHandle$a;-><init>(Landroid/content/Context;)V

    .line 83
    return-void
.end method
