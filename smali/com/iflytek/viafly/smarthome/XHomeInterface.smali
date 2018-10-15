.class public interface abstract Lcom/iflytek/viafly/smarthome/XHomeInterface;
.super Ljava/lang/Object;
.source "XHomeInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smarthome/XHomeInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDevices()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
