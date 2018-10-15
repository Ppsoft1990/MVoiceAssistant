.class public Lcom/iflytek/viafly/weather/Weather;
.super Lcom/iflytek/yd/speech/FilterResult;
.source "Weather.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/weather/Weather;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5906768b46f7f25aL


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCityLocationInfo:Lcom/iflytek/viafly/weather/CityLocationInfo;

.field private mDetailUrl:Ljava/lang/String;

.field private mExpires:Ljava/lang/String;

.field private mForecasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/weather/Forecast;",
            ">;"
        }
    .end annotation
.end field

.field private mInterestDateTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClientPos:Z

.field private mLastUpdateDate:Ljava/lang/String;

.field private mLocJudgement:Ljava/lang/String;

.field private mTimeSpan:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/iflytek/viafly/weather/Weather$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/weather/Weather$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/weather/Weather;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/iflytek/yd/speech/FilterResult;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mLocJudgement:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mTimeSpan:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mExpires:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mDetailUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mRawText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mSpeechText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mTip:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/iflytek/viafly/weather/Weather;Lcom/iflytek/viafly/weather/CityLocationInfo;)Lcom/iflytek/viafly/weather/CityLocationInfo;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Lcom/iflytek/viafly/weather/CityLocationInfo;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mCityLocationInfo:Lcom/iflytek/viafly/weather/CityLocationInfo;

    return-object p1
.end method

.method static synthetic access$702(Lcom/iflytek/viafly/weather/Weather;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mLastUpdateDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/iflytek/viafly/weather/Weather;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mInterestDateTimes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$902(Lcom/iflytek/viafly/weather/Weather;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/Weather;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mForecasts:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mDetailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mExpires:Ljava/lang/String;

    return-object v0
.end method

.method public getForcasts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/weather/Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mForecasts:Ljava/util/List;

    return-object v0
.end method

.method public getInterestDateTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mInterestDateTimes:Ljava/util/List;

    return-object v0
.end method

.method public getLastUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mLastUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSpan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mTimeSpan:Ljava/lang/String;

    return-object v0
.end method

.method public getmLocJudgement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mLocJudgement:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public ismIsClientPos()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/iflytek/viafly/weather/Weather;->mIsClientPos:Z

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mCity:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDetailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDetailUrl"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mDetailUrl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExpires"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mExpires:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setForcasts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/weather/Forecast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "mForcasts":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/weather/Forecast;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mForecasts:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setInterestDateTime(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "interestDateTimes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mInterestDateTimes:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setLastUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastUpdateDate"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mLastUpdateDate:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "isSuccess"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mStatus:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTimeSpan(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimeSpan"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mTimeSpan:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setmCityLocationInfo(Lcom/iflytek/viafly/weather/CityLocationInfo;)V
    .locals 0
    .param p1, "mCityLocationInfo"    # Lcom/iflytek/viafly/weather/CityLocationInfo;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mCityLocationInfo:Lcom/iflytek/viafly/weather/CityLocationInfo;

    .line 81
    return-void
.end method

.method public setmIsClientPos(Z)V
    .locals 0
    .param p1, "mIsClientPos"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/iflytek/viafly/weather/Weather;->mIsClientPos:Z

    .line 77
    return-void
.end method

.method public setmLocJudgement(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLocJudgement"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/iflytek/viafly/weather/Weather;->mLocJudgement:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mRawText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mSpeechText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mCityLocationInfo:Lcom/iflytek/viafly/weather/CityLocationInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/weather/CityLocationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mLastUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mInterestDateTimes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mForecasts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mLocJudgement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mTimeSpan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mExpires:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/iflytek/viafly/weather/Weather;->mDetailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return-void
.end method
