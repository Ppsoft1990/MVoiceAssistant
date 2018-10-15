.class Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$c;
.super Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$a;
.source "IWifiManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$c;->b:Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IWifiManagerHookHandle;Landroid/content/Context;)V

    .line 50
    return-void
.end method
