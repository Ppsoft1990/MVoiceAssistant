.class final Lcom/iflytek/common/lbs/XAddress$1;
.super Ljava/lang/Object;
.source "XAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/lbs/XAddress;
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
        "Lcom/iflytek/common/lbs/XAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/common/lbs/XAddress;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 305
    new-instance v0, Lcom/iflytek/common/lbs/XAddress;

    invoke-direct {v0, p1}, Lcom/iflytek/common/lbs/XAddress;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/common/lbs/XAddress;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 297
    new-array v0, p1, [Lcom/iflytek/common/lbs/XAddress;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/iflytek/common/lbs/XAddress$1;->a(Landroid/os/Parcel;)Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/iflytek/common/lbs/XAddress$1;->a(I)[Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    return-object v0
.end method
