.class Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$g;
.super Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;
.source "LibCoreHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$g;->a:Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle;

    .line 133
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/handle/LibCoreHookHandle$a;-><init>(Landroid/content/Context;)V

    .line 134
    return-void
.end method
