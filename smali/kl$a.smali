.class public abstract Lkl$a;
.super Landroid/os/Binder;
.source "IRecognitionListener.java"

# interfaces
.implements Lkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lkl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string/jumbo v1, "com.iflytek.business.speech.IRecognitionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lkl;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lkl;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lkl$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lkl$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 48
    :sswitch_0
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lkl$a;->a()V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lkl$a;->b()V

    goto :goto_0

    .line 65
    :sswitch_3
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lkl$a;->a(I)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lkl$a;->b(I)V

    goto :goto_0

    .line 81
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    sget-object v5, Lcom/iflytek/business/speech/RecognizerResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/business/speech/RecognizerResult;>;"
    invoke-virtual {p0, v1}, Lkl$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 89
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/business/speech/RecognizerResult;>;"
    :sswitch_6
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    sget-object v5, Lcom/iflytek/business/speech/RecognizerResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/business/speech/RecognizerResult;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lkl$a;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 99
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/business/speech/RecognizerResult;>;"
    .end local v2    # "_arg1":I
    :sswitch_7
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    sget-object v5, Lcom/iflytek/business/speech/RecognizerResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/business/speech/RecognizerResult;>;"
    invoke-virtual {p0, v1}, Lkl$a;->b(Ljava/util/List;)V

    goto :goto_0

    .line 107
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/business/speech/RecognizerResult;>;"
    :sswitch_8
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lkl$a;->a(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_9
    const-string/jumbo v5, "com.iflytek.business.speech.IRecognitionListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 123
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lkl$a;->a([BI)V

    goto/16 :goto_0

    .line 44
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
