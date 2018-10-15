.class public abstract Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub;
.super Landroid/os/Binder;
.source "I2HeadsetAidlInterface.java"

# interfaces
.implements Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.plugin.mobius.I2HeadsetAidlInterface"

.field static final TRANSACTION_disconnectBluetooth:I = 0x4

.field static final TRANSACTION_onEvent:I = 0x3

.field static final TRANSACTION_registered:I = 0x1

.field static final TRANSACTION_unregistered:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "com.iflytek.plugin.mobius.I2HeadsetAidlInterface"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string/jumbo v1, "com.iflytek.plugin.mobius.I2HeadsetAidlInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 44
    :sswitch_0
    const-string/jumbo v2, "com.iflytek.plugin.mobius.I2HeadsetAidlInterface"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string/jumbo v2, "com.iflytek.plugin.mobius.I2HeadsetAidlInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub;->registered()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string/jumbo v2, "com.iflytek.plugin.mobius.I2HeadsetAidlInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub;->unregistered()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string/jumbo v2, "com.iflytek.plugin.mobius.I2HeadsetAidlInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    sget-object v2, Lcom/iflytek/plugin/mobius/event/PluginEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/plugin/mobius/event/PluginEvent;

    .line 71
    .local v0, "_arg0":Lcom/iflytek/plugin/mobius/event/PluginEvent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub;->onEvent(Lcom/iflytek/plugin/mobius/event/PluginEvent;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lcom/iflytek/plugin/mobius/event/PluginEvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/iflytek/plugin/mobius/event/PluginEvent;
    goto :goto_1

    .line 77
    .end local v0    # "_arg0":Lcom/iflytek/plugin/mobius/event/PluginEvent;
    :sswitch_4
    const-string/jumbo v2, "com.iflytek.plugin.mobius.I2HeadsetAidlInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub;->disconnectBluetooth()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
