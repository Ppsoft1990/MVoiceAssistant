.class public Lcom/iflytek/common/lbs/XAddress;
.super Ljava/lang/Object;
.source "XAddress.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/common/lbs/XAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_ADDRESS_BEYOND_TIME_LIMIT:Lcom/iflytek/common/lbs/XAddress;

.field public static final ERROR_ADDRESS_ILLEGAL_RESULT:Lcom/iflytek/common/lbs/XAddress;

.field public static final ERROR_ADDRESS_NO_NETWORK:Lcom/iflytek/common/lbs/XAddress;

.field public static final ERROR_ADDRESS_NULL_RESULT:Lcom/iflytek/common/lbs/XAddress;

.field public static final ERROR_ADDRESS_SERVICE_DISCONNECTED:Lcom/iflytek/common/lbs/XAddress;

.field public static final ERROR_BEYOND_TIME_LIMIT:I = 0x2

.field public static final ERROR_EXCEPTION_HAPPENED:I = 0x6

.field public static final ERROR_ILLEGAL_RESULT:I = 0x4

.field public static final ERROR_NO_NETWORK:I = 0x1

.field public static final ERROR_NULL_RESULT:I = 0x3

.field public static final ERROR_OK:I = 0xc8

.field public static final ERROR_SERVICE_DISCONNECTED:I = 0x5

.field public static final ERROR_UNKOWN:I = -0x1

.field public static final LOCATE_FROM_BAIDU:I = 0x0

.field public static final LOCATE_FROM_CMCC:I = 0x1

.field private static final serialVersionUID:J = 0x1d21f92fac9db556L


# instance fields
.field private mAddressName:Ljava/lang/String;

.field private mArea:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCityCode:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mErrorCode:I

.field private mIsFromCache:Z

.field private mLatitude:Ljava/lang/String;

.field private mLocationFrom:I

.field private mLongitude:Ljava/lang/String;

.field private mProvince:Ljava/lang/String;

.field private mReserve:Ljava/lang/String;

.field private mStreet:Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/iflytek/common/lbs/XAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/iflytek/common/lbs/XAddress;-><init>(I)V

    sput-object v0, Lcom/iflytek/common/lbs/XAddress;->ERROR_ADDRESS_NO_NETWORK:Lcom/iflytek/common/lbs/XAddress;

    .line 35
    new-instance v0, Lcom/iflytek/common/lbs/XAddress;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/iflytek/common/lbs/XAddress;-><init>(I)V

    sput-object v0, Lcom/iflytek/common/lbs/XAddress;->ERROR_ADDRESS_BEYOND_TIME_LIMIT:Lcom/iflytek/common/lbs/XAddress;

    .line 36
    new-instance v0, Lcom/iflytek/common/lbs/XAddress;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/iflytek/common/lbs/XAddress;-><init>(I)V

    sput-object v0, Lcom/iflytek/common/lbs/XAddress;->ERROR_ADDRESS_NULL_RESULT:Lcom/iflytek/common/lbs/XAddress;

    .line 37
    new-instance v0, Lcom/iflytek/common/lbs/XAddress;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/iflytek/common/lbs/XAddress;-><init>(I)V

    sput-object v0, Lcom/iflytek/common/lbs/XAddress;->ERROR_ADDRESS_ILLEGAL_RESULT:Lcom/iflytek/common/lbs/XAddress;

    .line 38
    new-instance v0, Lcom/iflytek/common/lbs/XAddress;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/iflytek/common/lbs/XAddress;-><init>(I)V

    sput-object v0, Lcom/iflytek/common/lbs/XAddress;->ERROR_ADDRESS_SERVICE_DISCONNECTED:Lcom/iflytek/common/lbs/XAddress;

    .line 290
    new-instance v0, Lcom/iflytek/common/lbs/XAddress$1;

    invoke-direct {v0}, Lcom/iflytek/common/lbs/XAddress$1;-><init>()V

    sput-object v0, Lcom/iflytek/common/lbs/XAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLocationFrom:I

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mReserve:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLocationFrom:I

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mReserve:Ljava/lang/String;

    .line 64
    iput p1, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLocationFrom:I

    .line 56
    const/16 v1, 0xc8

    iput v1, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mReserve:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mLatitude:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mLongitude:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mAddressName:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mCountry:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mProvince:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mArea:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mCity:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mStreet:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mCityCode:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/common/lbs/XAddress;->mTimeStamp:J

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/iflytek/common/lbs/XAddress;->mIsFromCache:Z

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLocationFrom:I

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mReserve:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLocationFrom:I

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mReserve:Ljava/lang/String;

    .line 68
    const/4 v0, 0x6

    iput v0, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    .line 69
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mReserve:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private static strCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 222
    if-nez p0, :cond_1

    .line 223
    if-nez p1, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 199
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/iflytek/common/lbs/XAddress;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 200
    check-cast v0, Lcom/iflytek/common/lbs/XAddress;

    .line 201
    .local v0, "addr":Lcom/iflytek/common/lbs/XAddress;
    const/4 v1, 0x1

    .line 203
    .local v1, "ret":Z
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getAddressName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/lbs/XAddress;->mAddressName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/iflytek/common/lbs/XAddress;->strCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 204
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/lbs/XAddress;->mCity:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/iflytek/common/lbs/XAddress;->strCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 205
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getStreet()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/lbs/XAddress;->mStreet:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/iflytek/common/lbs/XAddress;->strCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 206
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLongtitude()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/lbs/XAddress;->mLongitude:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/iflytek/common/lbs/XAddress;->strCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 207
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getLatitude()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/lbs/XAddress;->mLatitude:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/iflytek/common/lbs/XAddress;->strCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 208
    invoke-virtual {v0}, Lcom/iflytek/common/lbs/XAddress;->getCityCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/lbs/XAddress;->mCityCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/iflytek/common/lbs/XAddress;->strCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 212
    .end local v0    # "addr":Lcom/iflytek/common/lbs/XAddress;
    .end local v1    # "ret":Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAddressName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mAddressName:Ljava/lang/String;

    return-object v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    return v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationFrom()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLocationFrom:I

    return v0
.end method

.method public getLongtitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getReserve()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mReserve:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/iflytek/common/lbs/XAddress;->mTimeStamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 175
    const/16 v0, 0x1f

    .line 176
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 177
    .local v1, "result":I
    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mAddressName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    .line 178
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 179
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mArea:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 180
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mCity:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 181
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mCityCode:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    .line 182
    :goto_3
    add-int v1, v4, v2

    .line 183
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mCountry:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    .line 184
    :goto_4
    add-int v1, v4, v2

    .line 185
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/iflytek/common/lbs/XAddress;->mIsFromCache:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x4cf

    :goto_5
    add-int v1, v4, v2

    .line 186
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mLatitude:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    .line 187
    :goto_6
    add-int v1, v4, v2

    .line 188
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mLongitude:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    .line 189
    :goto_7
    add-int v1, v4, v2

    .line 190
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mProvince:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    .line 191
    :goto_8
    add-int v1, v4, v2

    .line 192
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/iflytek/common/lbs/XAddress;->mStreet:Ljava/lang/String;

    if-nez v4, :cond_9

    :goto_9
    add-int v1, v2, v3

    .line 193
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/iflytek/common/lbs/XAddress;->mTimeStamp:J

    iget-wide v6, p0, Lcom/iflytek/common/lbs/XAddress;->mTimeStamp:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 194
    return v1

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mAddressName:Ljava/lang/String;

    .line 178
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mArea:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mCity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 181
    :cond_3
    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mCityCode:Ljava/lang/String;

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mCountry:Ljava/lang/String;

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 185
    :cond_5
    const/16 v2, 0x4d5

    goto :goto_5

    .line 186
    :cond_6
    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mLatitude:Ljava/lang/String;

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 188
    :cond_7
    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mLongitude:Ljava/lang/String;

    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 190
    :cond_8
    iget-object v2, p0, Lcom/iflytek/common/lbs/XAddress;->mProvince:Ljava/lang/String;

    .line 191
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    .line 192
    :cond_9
    iget-object v3, p0, Lcom/iflytek/common/lbs/XAddress;->mStreet:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_9
.end method

.method public isFromCache()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/iflytek/common/lbs/XAddress;->mIsFromCache:Z

    return v0
.end method

.method public setAddressName(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mAddressName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "mArea"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mArea:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mCity:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityCode"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mCityCode:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mCountry:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    .line 86
    return-void
.end method

.method public setFromCache(Z)V
    .locals 0
    .param p1, "isFromCache"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/iflytek/common/lbs/XAddress;->mIsFromCache:Z

    .line 152
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mLatitude:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setLocationFrom(I)V
    .locals 1
    .param p1, "locationFrom"    # I

    .prologue
    .line 167
    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 168
    const/4 p1, 0x0

    .line 170
    :cond_0
    iput p1, p0, Lcom/iflytek/common/lbs/XAddress;->mLocationFrom:I

    .line 171
    return-void
.end method

.method public setLongtitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longtitude"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mLongitude:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mProvince:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setReserve(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserve"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mReserve:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "street"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/iflytek/common/lbs/XAddress;->mStreet:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/iflytek/common/lbs/XAddress;->mTimeStamp:J

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "XAddress [mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mLatitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mLongitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAddressName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mAddressName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mProvince="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mProvince:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStreet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mStreet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCityCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/lbs/XAddress;->mCityCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/iflytek/common/lbs/XAddress;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsFromCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/common/lbs/XAddress;->mIsFromCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLocationFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/common/lbs/XAddress;->mLocationFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mAddressName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mProvince:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mStreet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mCityCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-wide v0, p0, Lcom/iflytek/common/lbs/XAddress;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-boolean v0, p0, Lcom/iflytek/common/lbs/XAddress;->mIsFromCache:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 286
    iget v0, p0, Lcom/iflytek/common/lbs/XAddress;->mLocationFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Lcom/iflytek/common/lbs/XAddress;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v0, p0, Lcom/iflytek/common/lbs/XAddress;->mReserve:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
