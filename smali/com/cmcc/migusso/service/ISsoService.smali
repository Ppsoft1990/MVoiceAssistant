.class public interface abstract Lcom/cmcc/migusso/service/ISsoService;
.super Ljava/lang/Object;
.source "ISsoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/service/ISsoService$Stub;
    }
.end annotation


# virtual methods
.method public abstract callback(Landroid/os/Bundle;Lcom/cmcc/migusso/service/IPCCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateAppRespDate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
