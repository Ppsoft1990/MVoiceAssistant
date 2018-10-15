.class public abstract Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub;
.super Landroid/os/Binder;
.source "ILockScreen.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

.field static final TRANSACTION_appendOpLog:I = 0x2

.field static final TRANSACTION_getLockScreenConfig:I = 0x1

.field static final TRANSACTION_getReTrainFileList:I = 0x5

.field static final TRANSACTION_getReTraningWord:I = 0x4

.field static final TRANSACTION_getRetrainByteMap:I = 0x6

.field static final TRANSACTION_noticeLxLockStatus:I = 0x7

.field static final TRANSACTION_uploadByteData:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen;
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
    const-string/jumbo v1, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 46
    :sswitch_0
    const-string/jumbo v0, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string/jumbo v0, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub;->getLockScreenConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 67
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 70
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .local v5, "_arg3":Ljava/util/Map;
    move-object v0, p0

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub;->appendOpLog(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/util/Map;
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    :sswitch_3
    const-string/jumbo v0, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 85
    .local v1, "_arg0":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub;->uploadByteData(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .line 91
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v0, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub;->getReTraningWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 109
    .local v1, "_arg0":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub;->getReTrainFileList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v6

    .line 110
    .local v6, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 107
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v6    # "_result":Ljava/util/List;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_2

    .line 116
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v0, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 124
    .restart local v1    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub;->getRetrainByteMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v6

    .line 125
    .local v6, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 122
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v6    # "_result":Ljava/util/Map;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 131
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v0, "com.iflytek.framework.plugin.interfaces.lockscreen.ILockScreen"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/plugin/interfaces/lockscreen/ILockScreen$Stub;->noticeLxLockStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 137
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v6, :cond_3

    move v0, v8

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
