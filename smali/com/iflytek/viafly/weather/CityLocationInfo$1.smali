.class final Lcom/iflytek/viafly/weather/CityLocationInfo$1;
.super Ljava/lang/Object;
.source "CityLocationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/weather/CityLocationInfo;
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
        "Lcom/iflytek/viafly/weather/CityLocationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/viafly/weather/CityLocationInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    new-instance v0, Lcom/iflytek/viafly/weather/CityLocationInfo;

    invoke-direct {v0}, Lcom/iflytek/viafly/weather/CityLocationInfo;-><init>()V

    .line 75
    .local v0, "cityLocationInfo":Lcom/iflytek/viafly/weather/CityLocationInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/CityLocationInfo;->access$002(Lcom/iflytek/viafly/weather/CityLocationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/CityLocationInfo;->access$102(Lcom/iflytek/viafly/weather/CityLocationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/CityLocationInfo;->access$202(Lcom/iflytek/viafly/weather/CityLocationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/CityLocationInfo;->access$302(Lcom/iflytek/viafly/weather/CityLocationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    return-object v0
.end method

.method public a(I)[Lcom/iflytek/viafly/weather/CityLocationInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    new-array v0, p1, [Lcom/iflytek/viafly/weather/CityLocationInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/weather/CityLocationInfo$1;->a(Landroid/os/Parcel;)Lcom/iflytek/viafly/weather/CityLocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/weather/CityLocationInfo$1;->a(I)[Lcom/iflytek/viafly/weather/CityLocationInfo;

    move-result-object v0

    return-object v0
.end method
