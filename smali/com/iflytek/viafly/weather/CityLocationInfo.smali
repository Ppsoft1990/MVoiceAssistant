.class public Lcom/iflytek/viafly/weather/CityLocationInfo;
.super Ljava/lang/Object;
.source "CityLocationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/weather/CityLocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x55c529dcac86da4bL


# instance fields
.field private area:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private landmark:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/iflytek/viafly/weather/CityLocationInfo$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/weather/CityLocationInfo$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/weather/CityLocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/weather/CityLocationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/CityLocationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->province:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/iflytek/viafly/weather/CityLocationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/CityLocationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/iflytek/viafly/weather/CityLocationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/CityLocationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->area:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/iflytek/viafly/weather/CityLocationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/weather/CityLocationInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->landmark:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getLandmark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->landmark:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->area:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->city:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setLandmark(Ljava/lang/String;)V
    .locals 0
    .param p1, "landmark"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->landmark:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->province:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    const-string/jumbo v0, ""

    .line 54
    .local v0, "toString":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->province:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->city:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->area:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->area:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->landmark:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->landmark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->area:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/iflytek/viafly/weather/CityLocationInfo;->landmark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
