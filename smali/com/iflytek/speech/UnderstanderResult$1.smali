.class final Lcom/iflytek/speech/UnderstanderResult$1;
.super Ljava/lang/Object;
.source "UnderstanderResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/speech/UnderstanderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/speech/UnderstanderResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/speech/UnderstanderResult;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    new-instance v0, Lcom/iflytek/speech/UnderstanderResult;

    invoke-direct {v0, p1}, Lcom/iflytek/speech/UnderstanderResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/speech/UnderstanderResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Lcom/iflytek/speech/UnderstanderResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/iflytek/speech/UnderstanderResult$1;->a(Landroid/os/Parcel;)Lcom/iflytek/speech/UnderstanderResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/iflytek/speech/UnderstanderResult$1;->a(I)[Lcom/iflytek/speech/UnderstanderResult;

    move-result-object v0

    return-object v0
.end method
