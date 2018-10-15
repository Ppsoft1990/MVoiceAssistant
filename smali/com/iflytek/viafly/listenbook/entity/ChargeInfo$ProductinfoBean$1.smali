.class final Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean$1;
.super Ljava/lang/Object;
.source "ChargeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;
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
        "Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 107
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 112
    new-array v0, p1, [Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean$1;->a(Landroid/os/Parcel;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean$1;->a(I)[Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    move-result-object v0

    return-object v0
.end method
