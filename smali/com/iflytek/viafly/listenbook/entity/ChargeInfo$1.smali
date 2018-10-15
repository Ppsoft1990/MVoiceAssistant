.class final Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$1;
.super Ljava/lang/Object;
.source "ChargeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
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
        "Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 511
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 516
    new-array v0, p1, [Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$1;->a(Landroid/os/Parcel;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$1;->a(I)[Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v0

    return-object v0
.end method
