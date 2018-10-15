.class Lcom/iflytek/lms/telephony/TelephonyInfo$1;
.super Ljava/lang/Object;
.source "TelephonyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/lms/telephony/TelephonyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/lms/telephony/TelephonyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/lms/telephony/TelephonyInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    new-instance v0, Lcom/iflytek/lms/telephony/TelephonyInfo;

    invoke-direct {v0, p1}, Lcom/iflytek/lms/telephony/TelephonyInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/lms/telephony/TelephonyInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    new-array v0, p1, [Lcom/iflytek/lms/telephony/TelephonyInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/iflytek/lms/telephony/TelephonyInfo$1;->a(Landroid/os/Parcel;)Lcom/iflytek/lms/telephony/TelephonyInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/iflytek/lms/telephony/TelephonyInfo$1;->a(I)[Lcom/iflytek/lms/telephony/TelephonyInfo;

    move-result-object v0

    return-object v0
.end method
