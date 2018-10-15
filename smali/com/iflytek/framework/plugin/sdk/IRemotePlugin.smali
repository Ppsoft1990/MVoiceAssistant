.class public interface abstract Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;
.super Ljava/lang/Object;
.source "IRemotePlugin.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;
    }
.end annotation


# virtual methods
.method public abstract getEnterPluginIntent()Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPluginInfo()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVersionCheck(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
