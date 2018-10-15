.class Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$g;
.super Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$a;
.source "ILocationManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$g;->a:Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle;

    .line 41
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/handle/ILocationManagerHookHandle$a;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method
