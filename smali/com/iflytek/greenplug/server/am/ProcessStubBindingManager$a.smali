.class Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$a;
.super Landroid/os/RemoteCallbackList;
.source "ProcessStubBindingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;


# direct methods
.method private constructor <init>(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$a;->a:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;
    .param p2, "x1"    # Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$a;-><init>(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;Ljava/lang/Object;)V
    .locals 5
    .param p1, "callback"    # Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 248
    const-string/jumbo v3, "ProcessStubBindingManager"

    const-string/jumbo v4, "onCallbackDied"

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 251
    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 252
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 253
    .local v2, "pid":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$a;->a:Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;->access$400(Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v2    # "pid":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ProcessStubBindingManager"

    const-string/jumbo v4, "onCallbackDied error"

    invoke-static {v3, v4, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 244
    check-cast p1, Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/greenplug/server/am/ProcessStubBindingManager$a;->a(Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;Ljava/lang/Object;)V

    return-void
.end method
