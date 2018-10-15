.class public abstract Lsp$a;
.super Landroid/os/Binder;
.source "SynthesizerListener.java"

# interfaces
.implements Lsp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsp$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lsp;
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
    const-string/jumbo v1, "com.iflytek.speech.SynthesizerListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lsp;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lsp;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lsp$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lsp$a$a;-><init>(Landroid/os/IBinder;)V

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

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string/jumbo v2, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string/jumbo v2, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lsp$a;->a()V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string/jumbo v2, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lsp$a;->b()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string/jumbo v2, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lsp$a;->c()V

    goto :goto_0

    .line 69
    :sswitch_4
    const-string/jumbo v2, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lsp$a;->a(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v2, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lsp$a;->b(I)V

    goto :goto_0

    .line 85
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v2, "com.iflytek.speech.SynthesizerListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lsp$a;->c(I)V

    goto :goto_0

    .line 42
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
