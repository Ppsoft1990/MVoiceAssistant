.class final Lcom/iflytek/viafly/weather/Weather$1;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/weather/Weather;
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
        "Lcom/iflytek/viafly/weather/Weather;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/viafly/weather/Weather;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 109
    new-instance v0, Lcom/iflytek/viafly/weather/Weather;

    invoke-direct {v0}, Lcom/iflytek/viafly/weather/Weather;-><init>()V

    .line 110
    .local v0, "weather":Lcom/iflytek/viafly/weather/Weather;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$002(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$102(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$202(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$302(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$402(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$502(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    const-class v1, Lcom/iflytek/viafly/weather/CityLocationInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/weather/CityLocationInfo;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$602(Lcom/iflytek/viafly/weather/Weather;Lcom/iflytek/viafly/weather/CityLocationInfo;)Lcom/iflytek/viafly/weather/CityLocationInfo;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$702(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$802(Lcom/iflytek/viafly/weather/Weather;Ljava/util/List;)Ljava/util/List;

    .line 119
    const-class v1, Lcom/iflytek/viafly/weather/Forecast;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$902(Lcom/iflytek/viafly/weather/Weather;Ljava/util/List;)Ljava/util/List;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$1002(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$1102(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$1202(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Weather;->access$1302(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    return-object v0
.end method

.method public a(I)[Lcom/iflytek/viafly/weather/Weather;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 128
    new-array v0, p1, [Lcom/iflytek/viafly/weather/Weather;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/weather/Weather$1;->a(Landroid/os/Parcel;)Lcom/iflytek/viafly/weather/Weather;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/weather/Weather$1;->a(I)[Lcom/iflytek/viafly/weather/Weather;

    move-result-object v0

    return-object v0
.end method
