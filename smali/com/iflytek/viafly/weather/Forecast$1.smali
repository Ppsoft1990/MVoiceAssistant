.class final Lcom/iflytek/viafly/weather/Forecast$1;
.super Ljava/lang/Object;
.source "Forecast.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/weather/Forecast;
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
        "Lcom/iflytek/viafly/weather/Forecast;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/viafly/weather/Forecast;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 141
    new-instance v0, Lcom/iflytek/viafly/weather/Forecast;

    invoke-direct {v0}, Lcom/iflytek/viafly/weather/Forecast;-><init>()V

    .line 142
    .local v0, "forcast":Lcom/iflytek/viafly/weather/Forecast;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$002(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$102(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$202(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$302(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$402(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$502(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$602(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$702(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$802(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$902(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$1002(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$1102(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$1202(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$1302(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/weather/Forecast;->access$1402(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    return-object v0
.end method

.method public a(I)[Lcom/iflytek/viafly/weather/Forecast;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 162
    new-array v0, p1, [Lcom/iflytek/viafly/weather/Forecast;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/weather/Forecast$1;->a(Landroid/os/Parcel;)Lcom/iflytek/viafly/weather/Forecast;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/weather/Forecast$1;->a(I)[Lcom/iflytek/viafly/weather/Forecast;

    move-result-object v0

    return-object v0
.end method
