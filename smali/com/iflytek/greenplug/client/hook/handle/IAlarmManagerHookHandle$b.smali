.class Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$b;
.super Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$a;
.source "IAlarmManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$b;->b:Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle$a;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IAlarmManagerHookHandle;Landroid/content/Context;)V

    .line 64
    return-void
.end method
