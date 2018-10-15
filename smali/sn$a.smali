.class public abstract Lsn$a;
.super Landroid/os/Binder;
.source "SpeechUnderstanderListener.java"

# interfaces
.implements Lsn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsn$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lsn;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string/jumbo v1, "com.iflytek.speech.SpeechUnderstanderListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lsn;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lsn;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lsn$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lsn$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
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

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string/jumbo v2, "com.iflytek.speech.SpeechUnderstanderListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string/jumbo v2, "com.iflytek.speech.SpeechUnderstanderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lsn$a;->a(I)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v2, "com.iflytek.speech.SpeechUnderstanderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lsn$a;->a()V

    goto :goto_0

    .line 66
    :sswitch_3
    const-string/jumbo v2, "com.iflytek.speech.SpeechUnderstanderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lsn$a;->b()V

    goto :goto_0

    .line 72
    :sswitch_4
    const-string/jumbo v2, "com.iflytek.speech.SpeechUnderstanderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    sget-object v2, Lcom/iflytek/speech/UnderstanderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/speech/UnderstanderResult;

    .line 80
    .local v0, "_arg0":Lcom/iflytek/speech/UnderstanderResult;
    :goto_1
    invoke-virtual {p0, v0}, Lsn$a;->a(Lcom/iflytek/speech/UnderstanderResult;)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Lcom/iflytek/speech/UnderstanderResult;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/iflytek/speech/UnderstanderResult;
    goto :goto_1

    .line 85
    .end local v0    # "_arg0":Lcom/iflytek/speech/UnderstanderResult;
    :sswitch_5
    const-string/jumbo v2, "com.iflytek.speech.SpeechUnderstanderListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lsn$a;->b(I)V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
