.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$ag;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ag"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$ag;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 1108
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 1109
    return-void
.end method
