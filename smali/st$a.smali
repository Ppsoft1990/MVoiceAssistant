.class public abstract Lst$a;
.super Landroid/os/Binder;
.source "ISpeechSynthesizer.java"

# interfaces
.implements Lst;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    invoke-virtual {p0, p0, v0}, Lst$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v3, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string/jumbo v3, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 59
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lso$a;->a(Landroid/os/IBinder;)Lso;

    move-result-object v1

    .line 60
    .local v1, "_arg1":Lso;
    invoke-virtual {p0, v0, v1}, Lst$a;->a(Landroid/content/Intent;Lso;)I

    move-result v2

    .line 61
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Lso;
    .end local v2    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 67
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_2
    const-string/jumbo v3, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 76
    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lsp$a;->a(Landroid/os/IBinder;)Lsp;

    move-result-object v1

    .line 77
    .local v1, "_arg1":Lsp;
    invoke-virtual {p0, v0, v1}, Lst$a;->a(Landroid/content/Intent;Lsp;)I

    move-result v2

    .line 78
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Lsp;
    .end local v2    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_2

    .line 84
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_3
    const-string/jumbo v3, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lsp$a;->a(Landroid/os/IBinder;)Lsp;

    move-result-object v0

    .line 87
    .local v0, "_arg0":Lsp;
    invoke-virtual {p0, v0}, Lst$a;->a(Lsp;)I

    move-result v2

    .line 88
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":Lsp;
    .end local v2    # "_result":I
    :sswitch_4
    const-string/jumbo v3, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lsp$a;->a(Landroid/os/IBinder;)Lsp;

    move-result-object v0

    .line 97
    .restart local v0    # "_arg0":Lsp;
    invoke-virtual {p0, v0}, Lst$a;->b(Lsp;)I

    move-result v2

    .line 98
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v0    # "_arg0":Lsp;
    .end local v2    # "_result":I
    :sswitch_5
    const-string/jumbo v3, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lsp$a;->a(Landroid/os/IBinder;)Lsp;

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":Lsp;
    invoke-virtual {p0, v0}, Lst$a;->c(Lsp;)I

    move-result v2

    .line 108
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":Lsp;
    .end local v2    # "_result":I
    :sswitch_6
    const-string/jumbo v3, "com.iflytek.speech.aidl.ISpeechSynthesizer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lst$a;->a()Z

    move-result v2

    .line 116
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
