.class public Lcom/iflytek/viafly/weather/Forecast;
.super Ljava/lang/Object;
.source "Forecast.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/weather/Forecast;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2ba5ef92e329e0f2L


# instance fields
.field private mAqi:Ljava/lang/String;

.field private mAqiRemind:Ljava/lang/String;

.field private mBadWeatheRemind:Ljava/lang/String;

.field private mBgImage:Ljava/lang/String;

.field private mCoolingRemind:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mHighTemp:Ljava/lang/String;

.field private mHumidity:Ljava/lang/String;

.field private mImage:Ljava/lang/String;

.field private mLowTemp:Ljava/lang/String;

.field private mPM25:Ljava/lang/String;

.field private mSuggestion:Ljava/lang/String;

.field private mTemperature:Ljava/lang/String;

.field private mWind:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/iflytek/viafly/weather/Forecast$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/weather/Forecast$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/weather/Forecast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mDate:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mTemperature:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mLowTemp:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mHighTemp:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mHumidity:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mWind:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mPM25:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mAqi:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mAqi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mTemperature:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mSuggestion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mCoolingRemind:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mBadWeatheRemind:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mAqiRemind:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mLowTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mHighTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mHumidity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mWind:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mBgImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mImage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/iflytek/viafly/weather/Forecast;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Forecast;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mPM25:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getAqi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mAqi:Ljava/lang/String;

    return-object v0
.end method

.method public getAqiRemind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mAqiRemind:Ljava/lang/String;

    return-object v0
.end method

.method public getBadWeatheRemind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mBadWeatheRemind:Ljava/lang/String;

    return-object v0
.end method

.method public getBgImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mBgImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCoolingRemind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mCoolingRemind:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHighTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mHighTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mHumidity:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLowTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mLowTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getPM25()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mPM25:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mSuggestion:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mTemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getWind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mWind:Ljava/lang/String;

    return-object v0
.end method

.method public setAqi(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAqi"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mAqi:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setAqiRemind(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAqiRemind"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mAqiRemind:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setBadWeatheRemind(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBadWeatheRemind"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mBadWeatheRemind:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setBgImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBgImage"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mBgImage:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCoolingRemind(Ljava/lang/String;)V
    .locals 0
    .param p1, "coolingRemind"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mCoolingRemind:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mDate:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDescription"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mDescription:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setHighTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "highTemp"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mHighTemp:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setHumidity(Ljava/lang/String;)V
    .locals 0
    .param p1, "humidity"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mHumidity:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mImage"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mImage:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setLowTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "lowTemp"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mLowTemp:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPM25(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPM25"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mPM25:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSuggestion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSuggestion"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mSuggestion:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTemperature(Ljava/lang/String;)V
    .locals 0
    .param p1, "temperature"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mTemperature:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setWind(Ljava/lang/String;)V
    .locals 0
    .param p1, "wind"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Forecast;->mWind:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mTemperature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mLowTemp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mHighTemp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mHumidity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mWind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mBgImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mPM25:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mAqi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mSuggestion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mCoolingRemind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mBadWeatheRemind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Forecast;->mAqiRemind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    return-void
.end method
