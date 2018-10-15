.class public final Lauthcommon/bn;
.super Lcom/cmcc/migusso/service/ISsoService$Stub;
.source "SsoService.java"


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/service/SsoService;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/service/SsoService;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/bn;->a:Lcom/cmcc/migusso/service/SsoService;

    invoke-direct {p0}, Lcom/cmcc/migusso/service/ISsoService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lauthcommon/bn;->a:Lcom/cmcc/migusso/service/SsoService;

    invoke-static {v0}, Lcom/cmcc/migusso/service/SsoService;->a(Lcom/cmcc/migusso/service/SsoService;)Lauthcommon/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lauthcommon/bn;->a:Lcom/cmcc/migusso/service/SsoService;

    invoke-static {v0}, Lcom/cmcc/migusso/service/SsoService;->a(Lcom/cmcc/migusso/service/SsoService;)Lauthcommon/ac;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lauthcommon/ac;->a(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public final updateAppRespDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
