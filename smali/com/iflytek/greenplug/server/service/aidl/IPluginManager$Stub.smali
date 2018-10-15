.class public abstract Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;
.super Landroid/os/Binder;
.source "IPluginManager.java"

# interfaces
.implements Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.greenplug.server.service.aidl.IPluginManager"

.field static final TRANSACTION_addService:I = 0x6

.field static final TRANSACTION_bindStubActivity:I = 0x22

.field static final TRANSACTION_bindStubReceiver:I = 0x28

.field static final TRANSACTION_bindStubService:I = 0x25

.field static final TRANSACTION_checkSignatures:I = 0x1d

.field static final TRANSACTION_clearApplicationUserData:I = 0x1c

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x1b

.field static final TRANSACTION_deletePackage:I = 0x2

.field static final TRANSACTION_forceStopPackage:I = 0x2e

.field static final TRANSACTION_getActivityInfo:I = 0xd

.field static final TRANSACTION_getAllPackageInfos:I = 0xa

.field static final TRANSACTION_getAllPermissionGroups:I = 0x21

.field static final TRANSACTION_getApplicationInfo:I = 0x11

.field static final TRANSACTION_getBindingPluginServiceComponent:I = 0x26

.field static final TRANSACTION_getBindingStubActivityName:I = 0x23

.field static final TRANSACTION_getInstalledApplications:I = 0xb

.field static final TRANSACTION_getLaunchIntentForPackage:I = 0x9

.field static final TRANSACTION_getPackageInfo:I = 0xc

.field static final TRANSACTION_getPackageNameByPid:I = 0x29

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x20

.field static final TRANSACTION_getPermissionInfo:I = 0x1e

.field static final TRANSACTION_getProcessNameByPid:I = 0x2a

.field static final TRANSACTION_getProviderInfo:I = 0x10

.field static final TRANSACTION_getReceiverInfo:I = 0xe

.field static final TRANSACTION_getReceiverIntentFilter:I = 0x13

.field static final TRANSACTION_getReceivers:I = 0x12

.field static final TRANSACTION_getService:I = 0x5

.field static final TRANSACTION_getServiceInfo:I = 0xf

.field static final TRANSACTION_installPackage:I = 0x1

.field static final TRANSACTION_isPluginPackage:I = 0x3

.field static final TRANSACTION_isPluginRunning:I = 0x4

.field static final TRANSACTION_killApplicationProcess:I = 0x2d

.field static final TRANSACTION_killBackgroundProcesses:I = 0x2c

.field static final TRANSACTION_queryIntentActivities:I = 0x14

.field static final TRANSACTION_queryIntentContentProviders:I = 0x17

.field static final TRANSACTION_queryIntentReceivers:I = 0x15

.field static final TRANSACTION_queryIntentServices:I = 0x16

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x1f

.field static final TRANSACTION_registerApplicationCallback:I = 0x2b

.field static final TRANSACTION_resolveContentProvider:I = 0x1a

.field static final TRANSACTION_resolveIntent:I = 0x18

.field static final TRANSACTION_resolveService:I = 0x19

.field static final TRANSACTION_startActivity:I = 0x7

.field static final TRANSACTION_startService:I = 0x8

.field static final TRANSACTION_unBindStubActivity:I = 0x24

.field static final TRANSACTION_unBindStubService:I = 0x27


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;
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
    const-string/jumbo v1, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub$a;-><init>(Landroid/os/IBinder;)V

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
    .locals 14
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 745
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    :goto_0
    return v13

    .line 46
    :sswitch_0
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v13, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->installPackage(Ljava/lang/String;)I

    move-result v4

    .line 55
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v13, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_2
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->deletePackage(Ljava/lang/String;)I

    move-result v4

    .line 65
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v13, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_3
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->isPluginPackage(Ljava/lang/String;)Z

    move-result v4

    .line 75
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v4, :cond_0

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v13, 0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    .line 81
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->isPluginRunning(Ljava/lang/String;)Z

    move-result v4

    .line 85
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v4, :cond_1

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v13, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    .line 91
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_5
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 95
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 97
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 106
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_7
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    .line 115
    sget-object v13, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 120
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->startActivity(Landroid/content/Intent;)I

    move-result v4

    .line 121
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 118
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v4    # "_result":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_3

    .line 127
    .end local v1    # "_arg0":Landroid/content/Intent;
    :sswitch_8
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    .line 130
    sget-object v13, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 135
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->startService(Landroid/content/Intent;)I

    move-result v4

    .line 136
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 133
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v4    # "_result":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_4

    .line 142
    .end local v1    # "_arg0":Landroid/content/Intent;
    :sswitch_9
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 146
    .local v4, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_4

    .line 148
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_5
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 152
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 158
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/Intent;
    :sswitch_a
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getAllPackageInfos(I)Ljava/util/List;

    move-result-object v8

    .line 162
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 164
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 168
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_b
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    .line 172
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 174
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 178
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_c
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 184
    .local v4, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v4, :cond_5

    .line 186
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 192
    :goto_6
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 190
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 196
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_d
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_6

    .line 199
    sget-object v13, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 205
    .local v1, "_arg0":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 207
    .local v4, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v4, :cond_7

    .line 209
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 215
    :goto_8
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 202
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    .line 213
    .restart local v2    # "_arg1":I
    .restart local v4    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 219
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_e
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_8

    .line 222
    sget-object v13, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 228
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 230
    .restart local v4    # "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v4, :cond_9

    .line 232
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 238
    :goto_a
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 225
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 236
    .restart local v2    # "_arg1":I
    .restart local v4    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 242
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_f
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_a

    .line 245
    sget-object v13, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 251
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 253
    .local v4, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v4, :cond_b

    .line 255
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 261
    :goto_c
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 248
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 259
    .restart local v2    # "_arg1":I
    .restart local v4    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 265
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_10
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_c

    .line 268
    sget-object v13, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 274
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 276
    .local v4, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v4, :cond_d

    .line 278
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    :goto_e
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 271
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 282
    .restart local v2    # "_arg1":I
    .restart local v4    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_d
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 288
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_11
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 294
    .local v4, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v4, :cond_e

    .line 296
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    :goto_f
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 300
    :cond_e
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 306
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_12
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getReceivers(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 312
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 314
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 318
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    :sswitch_13
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_f

    .line 321
    sget-object v13, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 326
    .local v1, "_arg0":Landroid/content/pm/ActivityInfo;
    :goto_10
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getReceiverIntentFilter(Landroid/content/pm/ActivityInfo;)Ljava/util/List;

    move-result-object v5

    .line 327
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 329
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 324
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_10

    .line 333
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :sswitch_14
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_10

    .line 336
    sget-object v13, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 342
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 346
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 348
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 339
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_11

    .line 352
    .end local v1    # "_arg0":Landroid/content/Intent;
    :sswitch_15
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_11

    .line 355
    sget-object v13, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 361
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 365
    .restart local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 367
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 358
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_12

    .line 371
    .end local v1    # "_arg0":Landroid/content/Intent;
    :sswitch_16
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_12

    .line 374
    sget-object v13, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 380
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 383
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 384
    .restart local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 386
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 377
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_13

    .line 390
    .end local v1    # "_arg0":Landroid/content/Intent;
    :sswitch_17
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_13

    .line 393
    sget-object v13, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 399
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 402
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 403
    .restart local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 405
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 396
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_13
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_14

    .line 409
    .end local v1    # "_arg0":Landroid/content/Intent;
    :sswitch_18
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_14

    .line 412
    sget-object v13, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 418
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 420
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 421
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 422
    .local v4, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    if-eqz v4, :cond_15

    .line 424
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 430
    :goto_16
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 415
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_15

    .line 428
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":I
    .restart local v4    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_15
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 434
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_19
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_16

    .line 437
    sget-object v13, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 443
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 446
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 447
    .restart local v4    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v4, :cond_17

    .line 449
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 455
    :goto_18
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 440
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_17

    .line 453
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":I
    .restart local v4    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_17
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 459
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_1a
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 465
    .local v4, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    if-eqz v4, :cond_18

    .line 467
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 473
    :goto_19
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 471
    :cond_18
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 477
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_1b
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;

    move-result-object v2

    .line 482
    .local v2, "_arg1":Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;)V

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 488
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;
    :sswitch_1c
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;

    move-result-object v2

    .line 493
    .restart local v2    # "_arg1":Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->clearApplicationUserData(Ljava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 499
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/iflytek/greenplug/server/service/aidl/IPackageDataObserver;
    :sswitch_1d
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 503
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 505
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 511
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1e
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 516
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 517
    .local v4, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v4, :cond_19

    .line 519
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 525
    :goto_1a
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 523
    :cond_19
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 529
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_1f
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 534
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 535
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 537
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 541
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_20
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 545
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 546
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4

    .line 547
    .local v4, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v4, :cond_1a

    .line 549
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 555
    :goto_1b
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 553
    :cond_1a
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 559
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_21
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 562
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v9

    .line 563
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 565
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 569
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_22
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1b

    .line 572
    sget-object v13, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 577
    .local v1, "_arg0":Landroid/content/pm/ActivityInfo;
    :goto_1c
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->bindStubActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 575
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_1c

    .line 584
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :sswitch_23
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1c

    .line 587
    sget-object v13, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 592
    .restart local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :goto_1d
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getBindingStubActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    .line 593
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 590
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_1d

    .line 599
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :sswitch_24
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1d

    .line 602
    sget-object v13, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 607
    .restart local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :goto_1e
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->unBindStubActivity(Landroid/content/pm/ActivityInfo;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 605
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :cond_1d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_1e

    .line 613
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :sswitch_25
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1e

    .line 616
    sget-object v13, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 621
    .local v1, "_arg0":Landroid/content/pm/ServiceInfo;
    :goto_1f
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->bindStubService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v4

    .line 622
    .local v4, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    if-eqz v4, :cond_1f

    .line 624
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 630
    :goto_20
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 619
    .end local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    .end local v4    # "_result":Landroid/content/ComponentName;
    :cond_1e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    goto :goto_1f

    .line 628
    .restart local v4    # "_result":Landroid/content/ComponentName;
    :cond_1f
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 634
    .end local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    .end local v4    # "_result":Landroid/content/ComponentName;
    :sswitch_26
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_20

    .line 637
    sget-object v13, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 642
    .restart local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    :goto_21
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getBindingPluginServiceComponent(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v4

    .line 643
    .restart local v4    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v4, :cond_21

    .line 645
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 651
    :goto_22
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 640
    .end local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    .end local v4    # "_result":Landroid/content/ComponentName;
    :cond_20
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    goto :goto_21

    .line 649
    .restart local v4    # "_result":Landroid/content/ComponentName;
    :cond_21
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 655
    .end local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    .end local v4    # "_result":Landroid/content/ComponentName;
    :sswitch_27
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_22

    .line 658
    sget-object v13, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 663
    .restart local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    :goto_23
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->unBindStubService(Landroid/content/pm/ServiceInfo;)V

    .line 664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 661
    .end local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    :cond_22
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    goto :goto_23

    .line 669
    .end local v1    # "_arg0":Landroid/content/pm/ServiceInfo;
    :sswitch_28
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_23

    .line 672
    sget-object v13, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 677
    .local v1, "_arg0":Landroid/content/pm/ActivityInfo;
    :goto_24
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->bindStubReceiver(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 675
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_23
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_24

    .line 684
    .end local v1    # "_arg0":Landroid/content/pm/ActivityInfo;
    :sswitch_29
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 687
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getPackageNameByPid(I)Ljava/util/List;

    move-result-object v12

    .line 688
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 690
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 694
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2a
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 697
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v4

    .line 698
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 704
    .end local v1    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2b
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;

    move-result-object v2

    .line 709
    .local v2, "_arg1":Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->registerApplicationCallback(Ljava/lang/String;Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;)Z

    move-result v4

    .line 710
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v4, :cond_24

    const/4 v13, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 711
    :cond_24
    const/4 v13, 0x0

    goto :goto_25

    .line 716
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/iflytek/greenplug/server/service/aidl/IApplicationCallback;
    .end local v4    # "_result":Z
    :sswitch_2c
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 719
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->killBackgroundProcesses(Ljava/lang/String;)Z

    move-result v4

    .line 720
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v4, :cond_25

    const/4 v13, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 721
    :cond_25
    const/4 v13, 0x0

    goto :goto_26

    .line 726
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_2d
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 729
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->killApplicationProcess(Ljava/lang/String;)Z

    move-result v4

    .line 730
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    if-eqz v4, :cond_26

    const/4 v13, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 731
    :cond_26
    const/4 v13, 0x0

    goto :goto_27

    .line 736
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_2e
    const-string/jumbo v13, "com.iflytek.greenplug.server.service.aidl.IPluginManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 739
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/iflytek/greenplug/server/service/aidl/IPluginManager$Stub;->forceStopPackage(Ljava/lang/String;)Z

    move-result v4

    .line 740
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    if-eqz v4, :cond_27

    const/4 v13, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 741
    :cond_27
    const/4 v13, 0x0

    goto :goto_28

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
