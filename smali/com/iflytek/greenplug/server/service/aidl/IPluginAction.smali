.class public interface abstract Lcom/iflytek/greenplug/server/service/aidl/IPluginAction;
.super Ljava/lang/Object;
.source "IPluginAction.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/server/service/aidl/IPluginAction$Stub;
    }
.end annotation


# virtual methods
.method public abstract preDeletePlugin(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
