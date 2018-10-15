.class final Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "WeatherCirclePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;
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
        "Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 576
    new-instance v0, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 581
    new-array v0, p1, [Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState$1;->a(Landroid/os/Parcel;)Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState$1;->a(I)[Lcom/iflytek/viafly/homepage/cityweather/ui/WeatherCirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
