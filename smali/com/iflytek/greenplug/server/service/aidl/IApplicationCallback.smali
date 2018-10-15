.class public interface abstract Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;
.super Ljava/lang/Object;
.source "IApplicationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallback(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
