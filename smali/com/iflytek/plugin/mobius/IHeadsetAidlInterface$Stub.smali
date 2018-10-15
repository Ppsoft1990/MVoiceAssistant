.class public abstract Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;
.super Landroid/os/Binder;
.source "IHeadsetAidlInterface.java"

# interfaces
.implements Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

.field static final TRANSACTION_appendFTOpLog:I = 0xd

.field static final TRANSACTION_appendLXCPALog:I = 0xe

.field static final TRANSACTION_basicTypes:I = 0x1

.field static final TRANSACTION_checkPluginUpdate:I = 0xf

.field static final TRANSACTION_getAddress:I = 0x2

.field static final TRANSACTION_getBaseConfig:I = 0xa

.field static final TRANSACTION_getToken:I = 0x3

.field static final TRANSACTION_getUseInfo:I = 0x9

.field static final TRANSACTION_pluginUpdate:I = 0x10

.field static final TRANSACTION_refreshUserInfo:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0xb

.field static final TRANSACTION_startLoginActivity:I = 0x4

.field static final TRANSACTION_startShare:I = 0x8

.field static final TRANSACTION_startTransShare:I = 0x7

.field static final TRANSACTION_startUserInfoActivity:I = 0x6

.field static final TRANSACTION_unregisterCallback:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    invoke-virtual {p0, p0, v0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface;
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
    const-string/jumbo v1, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 19
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 208
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 44
    :sswitch_0
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 53
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 55
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    .line 57
    .local v6, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 59
    .local v7, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 61
    .local v8, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg5":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 62
    invoke-virtual/range {v2 .. v10}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->basicTypes(IJZFDLjava/lang/String;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v2, 0x1

    goto :goto_0

    .line 55
    .end local v6    # "_arg2":Z
    .end local v7    # "_arg3":F
    .end local v8    # "_arg4":D
    .end local v10    # "_arg5":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 68
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    :sswitch_2
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->getAddress()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v17

    .line 70
    .local v17, "_result":Lcom/iflytek/common/lbs/XAddress;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v17, :cond_1

    .line 72
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/common/lbs/XAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 82
    .end local v17    # "_result":Lcom/iflytek/common/lbs/XAddress;
    :sswitch_3
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->getToken()Ljava/lang/String;

    move-result-object v17

    .line 84
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    const/4 v2, 0x1

    goto :goto_0

    .line 90
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->startLoginActivity()V

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 97
    :sswitch_5
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->refreshUserInfo()V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 104
    :sswitch_6
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->startUserInfoActivity()V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 111
    :sswitch_7
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->startTransShare(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 122
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg4":Ljava/lang/String;
    move-object/from16 v11, p0

    move-object v12, v3

    move-object v13, v4

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    .line 133
    invoke-virtual/range {v11 .. v16}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->startShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 139
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->getUseInfo()Ljava/lang/String;

    move-result-object v17

    .line 141
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 147
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->getBaseConfig()Ljava/lang/String;

    move-result-object v17

    .line 149
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 155
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    move-result-object v3

    .line 158
    .local v3, "_arg0":Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->registerCallback(Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 164
    .end local v3    # "_arg0":Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;
    :sswitch_c
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    move-result-object v3

    .line 167
    .restart local v3    # "_arg0":Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->unregisterCallback(Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 173
    .end local v3    # "_arg0":Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;
    :sswitch_d
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    .line 178
    .local v18, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 179
    .local v4, "_arg1":Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->appendFTOpLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 185
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/util/Map;
    .end local v18    # "cl":Ljava/lang/ClassLoader;
    :sswitch_e
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->appendLXCPALog(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 194
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->checkPluginUpdate()Z

    move-result v17

    .line 196
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v17, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 197
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 202
    .end local v17    # "_result":Z
    :sswitch_10
    const-string/jumbo v2, "com.iflytek.plugin.mobius.IHeadsetAidlInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->pluginUpdate()V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 40
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
