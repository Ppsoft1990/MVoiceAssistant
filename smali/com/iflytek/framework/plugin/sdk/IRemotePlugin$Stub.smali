.class public abstract Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;
.super Landroid/os/Binder;
.source "IRemotePlugin.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.framework.plugin.sdk.IRemotePlugin"

.field static final TRANSACTION_getEnterPluginIntent:I = 0x3

.field static final TRANSACTION_getPluginInfo:I = 0x1

.field static final TRANSACTION_onVersionCheck:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.iflytek.framework.plugin.sdk.IRemotePlugin"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string/jumbo v1, "com.iflytek.framework.plugin.sdk.IRemotePlugin"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string/jumbo v3, "com.iflytek.framework.plugin.sdk.IRemotePlugin"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string/jumbo v3, "com.iflytek.framework.plugin.sdk.IRemotePlugin"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;->getPluginInfo()[B

    move-result-object v1

    .line 53
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 59
    .end local v1    # "_result":[B
    :sswitch_2
    const-string/jumbo v3, "com.iflytek.framework.plugin.sdk.IRemotePlugin"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 62
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;->onVersionCheck(Z)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v3, "com.iflytek.framework.plugin.sdk.IRemotePlugin"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/framework/plugin/sdk/IRemotePlugin$Stub;->getEnterPluginIntent()Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v1, p3, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
