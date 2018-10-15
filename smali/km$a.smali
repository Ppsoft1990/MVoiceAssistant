.class public abstract Lkm$a;
.super Landroid/os/Binder;
.source "ISpeechService.java"

# interfaces
.implements Lkm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p0, p0, v0}, Lkm$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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

    const/4 v8, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 51
    :sswitch_0
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 65
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lkl$a;->a(Landroid/os/IBinder;)Lkl;

    move-result-object v2

    .line 66
    .local v2, "_arg1":Lkl;
    invoke-virtual {p0, v1, v2}, Lkm$a;->a(Landroid/content/Intent;Lkl;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Lkl;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 72
    .end local v1    # "_arg0":Landroid/content/Intent;
    :sswitch_2
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lkl$a;->a(Landroid/os/IBinder;)Lkl;

    move-result-object v1

    .line 75
    .local v1, "_arg0":Lkl;
    invoke-virtual {p0, v1}, Lkm$a;->c(Lkl;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v1    # "_arg0":Lkl;
    :sswitch_3
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lkl$a;->a(Landroid/os/IBinder;)Lkl;

    move-result-object v1

    .line 84
    .restart local v1    # "_arg0":Lkl;
    invoke-virtual {p0, v1}, Lkm$a;->a(Lkl;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v1    # "_arg0":Lkl;
    :sswitch_4
    const-string/jumbo v9, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lkl$a;->a(Landroid/os/IBinder;)Lkl;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg0":Lkl;
    invoke-virtual {p0, v1}, Lkm$a;->b(Lkl;)Z

    move-result v7

    .line 94
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v7, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v1    # "_arg0":Lkl;
    .end local v7    # "_result":Z
    :sswitch_5
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lkl$a;->a(Landroid/os/IBinder;)Lkl;

    move-result-object v3

    .line 107
    .local v3, "_arg2":Lkl;
    invoke-virtual {p0, v1, v2, v3}, Lkm$a;->a([Ljava/lang/String;Ljava/lang/String;Lkl;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lkl;
    :sswitch_6
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lkl$a;->a(Landroid/os/IBinder;)Lkl;

    move-result-object v3

    .line 120
    .restart local v3    # "_arg2":Lkl;
    invoke-virtual {p0, v1, v2, v3}, Lkm$a;->a(Ljava/lang/String;Ljava/lang/String;Lkl;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lkl;
    :sswitch_7
    const-string/jumbo v9, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 131
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lkm$a;->a(I[B)Z

    move-result v7

    .line 132
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v7, :cond_2

    move v0, v8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v7    # "_result":Z
    :sswitch_8
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 150
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":[Ljava/lang/String;
    move-object v0, p0

    .line 151
    invoke-virtual/range {v0 .. v6}, Lkm$a;->a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v7

    .line 152
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[Ljava/lang/String;
    .end local v7    # "_result":I
    :sswitch_9
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lkn$a;->a(Landroid/os/IBinder;)Lkn;

    move-result-object v3

    .line 165
    .local v3, "_arg2":Lkn;
    invoke-virtual {p0, v1, v2, v3}, Lkm$a;->a(Ljava/lang/String;[Ljava/lang/String;Lkn;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Lkn;
    :sswitch_a
    const-string/jumbo v9, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lkn$a;->a(Landroid/os/IBinder;)Lkn;

    move-result-object v1

    .line 174
    .local v1, "_arg0":Lkn;
    invoke-virtual {p0, v1}, Lkm$a;->a(Lkn;)Z

    move-result v7

    .line 175
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v7, :cond_3

    move v0, v8

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v1    # "_arg0":Lkn;
    .end local v7    # "_result":Z
    :sswitch_b
    const-string/jumbo v0, "com.iflytek.business.speech.ISpeechService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lkn$a;->a(Landroid/os/IBinder;)Lkn;

    move-result-object v1

    .line 184
    .restart local v1    # "_arg0":Lkn;
    invoke-virtual {p0, v1}, Lkm$a;->b(Lkn;)I

    move-result v7

    .line 185
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 47
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
