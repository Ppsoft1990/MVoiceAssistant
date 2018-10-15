.class public abstract Laqx$a;
.super Landroid/os/Binder;
.source "IPlaybackService.java"

# interfaces
.implements Laqx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqx$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p0, p0, v0}, Laqx$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Laqx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v1, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Laqx;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Laqx;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Laqx$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Laqx$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string/jumbo v2, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v4, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Laqx$a;->a()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    sget-object v4, Lcom/iflytek/viafly/player/entity/Audio;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/player/entity/Audio;

    .line 63
    .local v0, "_arg0":Lcom/iflytek/viafly/player/entity/Audio;
    :goto_1
    invoke-virtual {p0, v0}, Laqx$a;->a(Lcom/iflytek/viafly/player/entity/Audio;)Z

    move-result v1

    .line 64
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Lcom/iflytek/viafly/player/entity/Audio;
    .end local v1    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/iflytek/viafly/player/entity/Audio;
    goto :goto_1

    .line 70
    .end local v0    # "_arg0":Lcom/iflytek/viafly/player/entity/Audio;
    :sswitch_3
    const-string/jumbo v4, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Laqx$a;->b()Lcom/iflytek/viafly/player/entity/Audio;

    move-result-object v1

    .line 72
    .local v1, "_result":Lcom/iflytek/viafly/player/entity/Audio;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v1, p3, v3}, Lcom/iflytek/viafly/player/entity/Audio;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1    # "_result":Lcom/iflytek/viafly/player/entity/Audio;
    :sswitch_4
    const-string/jumbo v2, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    sget-object v2, Lcom/iflytek/viafly/player/entity/Audio;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/player/entity/Audio;

    .line 92
    .restart local v0    # "_arg0":Lcom/iflytek/viafly/player/entity/Audio;
    :goto_2
    invoke-virtual {p0, v0}, Laqx$a;->b(Lcom/iflytek/viafly/player/entity/Audio;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":Lcom/iflytek/viafly/player/entity/Audio;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/iflytek/viafly/player/entity/Audio;
    goto :goto_2

    .line 98
    .end local v0    # "_arg0":Lcom/iflytek/viafly/player/entity/Audio;
    :sswitch_5
    const-string/jumbo v4, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Laqx$a;->c()Z

    move-result v1

    .line 100
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 106
    .end local v1    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Laqx$a;->d()Z

    move-result v1

    .line 108
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v1    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Laqx$a;->e()Z

    move-result v1

    .line 116
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v1    # "_result":Z
    :sswitch_8
    const-string/jumbo v2, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Laqx$a;->f()I

    move-result v1

    .line 124
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v1    # "_result":I
    :sswitch_9
    const-string/jumbo v2, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Laqx$a;->g()I

    move-result v1

    .line 132
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v1    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Laqx$a;->a(I)Z

    move-result v1

    .line 142
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_b
    const-string/jumbo v2, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Laqw$a;->a(Landroid/os/IBinder;)Laqw;

    move-result-object v0

    .line 151
    .local v0, "_arg0":Laqw;
    invoke-virtual {p0, v0}, Laqx$a;->a(Laqw;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    .end local v0    # "_arg0":Laqw;
    :sswitch_c
    const-string/jumbo v2, "com.iflytek.viafly.player.base.IPlaybackService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Laqw$a;->a(Landroid/os/IBinder;)Laqw;

    move-result-object v0

    .line 160
    .restart local v0    # "_arg0":Laqw;
    invoke-virtual {p0, v0}, Laqx$a;->b(Laqw;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
