.class public Lcom/iflytek/yd/speech/ViaAsrResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mConfidence:I

.field public mContent:Ljava/lang/String;

.field public final mEngine:I

.field private mEntryMode:I

.field private mEntryType:I

.field public final mFocus:Ljava/lang/String;

.field private mJsonStr:Ljava/lang/String;

.field private mPromptMode:I

.field private mResultType:I

.field private mSessionId:Ljava/lang/String;

.field private mTestMode:B

.field private mTextSearchMode:B

.field private mTimeStamp:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;

.field private mWaitCloudDelay:I

.field public final mXmlDoc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iflytek/yd/speech/a;

    invoke-direct {v0}, Lcom/iflytek/yd/speech/a;-><init>()V

    sput-object v0, Lcom/iflytek/yd/speech/ViaAsrResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mWaitCloudDelay:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mPromptMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTextSearchMode:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTestMode:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mResultType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mWaitCloudDelay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mWaitCloudDelay:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mSessionId:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    iput p2, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I

    iput-object p6, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    iput p3, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    iput-object p5, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryMode:I

    iput v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryType:I

    iput v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mPromptMode:I

    iput-byte v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTextSearchMode:B

    iput-byte v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTestMode:B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTimeStamp:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mResultType:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mWaitCloudDelay:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIBBLjava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mWaitCloudDelay:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mSessionId:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    iput p3, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I

    iput-object p6, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    iput p2, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    iput-object p5, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    iput p7, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryMode:I

    iput p8, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryType:I

    iput p9, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mPromptMode:I

    iput-byte p10, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTextSearchMode:B

    iput-byte p11, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTestMode:B

    iput-object p12, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTimeStamp:Ljava/lang/String;

    iput p13, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mResultType:I

    iput-object p14, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfidence()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getEngine()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    return v0
.end method

.method public getEntryMode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryMode:I

    return v0
.end method

.method public getEntryType()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryType:I

    return v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    return-object v0
.end method

.method public getJSonObj()Lorg/json/JSONObject;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getJsonStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPromptMode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mPromptMode:I

    return v0
.end method

.method public getResultType()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mResultType:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTestMode()I
    .locals 1

    iget-byte v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTestMode:B

    return v0
.end method

.method public getTextSearchMode()B
    .locals 1

    iget-byte v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTextSearchMode:B

    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitCloudDelay()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mWaitCloudDelay:I

    return v0
.end method

.method public getXmlDoc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    return-object v0
.end method

.method public setEntryMode(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryMode:I

    return-void
.end method

.method public setEntryType(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryType:I

    return-void
.end method

.method public setJsonStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    return-void
.end method

.method public setPromptMode(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mPromptMode:I

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mSessionId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTestMode(B)V
    .locals 0

    iput-byte p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTestMode:B

    return-void
.end method

.method public setTextSearchMode(B)V
    .locals 0

    iput-byte p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTextSearchMode:B

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setWaitCloudDelay(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mWaitCloudDelay:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Ver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Engine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " XML="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " EntryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " EntryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " PromptMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mPromptMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " TextSearchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTextSearchMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mTestMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTestMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mResultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mResultType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mJsonStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WaitCloudDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mWaitCloudDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mEntryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mPromptMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTextSearchMode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTestMode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mJsonStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mWaitCloudDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/iflytek/yd/speech/ViaAsrResult;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
