.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aw;
.super Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "aw"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;-><init>(Landroid/content/Context;)V

    .line 345
    return-void
.end method
