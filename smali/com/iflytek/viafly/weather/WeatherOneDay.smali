.class public Lcom/iflytek/viafly/weather/WeatherOneDay;
.super Ljava/lang/Object;
.source "WeatherOneDay.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x35859aba0c00f53dL


# instance fields
.field private mBgImage:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mErrorCode:Ljava/lang/String;

.field private mHighTemp:Ljava/lang/String;

.field private mImage:Ljava/lang/String;

.field private mImgPath:Ljava/lang/String;

.field private mLowTemp:Ljava/lang/String;

.field private mPm25:Ljava/lang/String;

.field private mSpeechText:Ljava/lang/String;

.field private mWind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mLowTemp:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mHighTemp:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mWind:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBgImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mBgImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHighTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mHighTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLowTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mLowTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getPm25()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mPm25:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mSpeechText:Ljava/lang/String;

    return-object v0
.end method

.method public getWind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mWind:Ljava/lang/String;

    return-object v0
.end method

.method public getmDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public setBgImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBgImage"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mBgImage:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCity"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mCity:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDescription"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mDescription:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mErrorCode"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mErrorCode:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setHighTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHighTemp"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mHighTemp:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mImage"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mImage:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setImgPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mImgPath"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mImgPath:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setLowTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLowTemp"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mLowTemp:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPm25(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPm25"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mPm25:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSpeechText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSpeechText"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mSpeechText:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setWind(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWind"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mWind:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setmDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDate"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mDate:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9519\u8bef\u7801="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/weather/WeatherOneDay;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5f53\u524d\u57ce\u5e02="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6700\u4f4e\u6e29\u5ea6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mLowTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6700\u9ad8\u6e29\u5ea6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mHighTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u98ce\u5411="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mWind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5929\u6c14="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/WeatherOneDay;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
