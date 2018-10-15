.class public Lcom/iflytek/business/speech/RecognizerResult;
.super Ljava/lang/Object;
.source "RecognizerResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/business/speech/RecognizerResult;",
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

.field private mIsSearchText:B

.field private mPromptMode:I

.field private mTestMode:B

.field public final mVersion:Ljava/lang/String;

.field public final mXmlDoc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/iflytek/business/speech/RecognizerResult$1;

    invoke-direct {v0}, Lcom/iflytek/business/speech/RecognizerResult$1;-><init>()V

    sput-object v0, Lcom/iflytek/business/speech/RecognizerResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mVersion:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEngine:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mConfidence:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mFocus:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mContent:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mXmlDoc:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryMode:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryType:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mPromptMode:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mIsSearchText:B

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mTestMode:B

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Ljava/lang/String;
    .param p2, "confidence"    # I
    .param p3, "engine"    # I
    .param p4, "focus"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "xmlDoc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/iflytek/business/speech/RecognizerResult;->mVersion:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/iflytek/business/speech/RecognizerResult;->mFocus:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mConfidence:I

    .line 86
    iput-object p6, p0, Lcom/iflytek/business/speech/RecognizerResult;->mXmlDoc:Ljava/lang/String;

    .line 87
    iput p3, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEngine:I

    .line 88
    iput-object p5, p0, Lcom/iflytek/business/speech/RecognizerResult;->mContent:Ljava/lang/String;

    .line 89
    iput v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryMode:I

    .line 90
    iput v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryType:I

    .line 91
    iput v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mPromptMode:I

    .line 92
    iput-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mIsSearchText:B

    .line 93
    iput-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mTestMode:B

    .line 94
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getEntryMode()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryMode:I

    return v0
.end method

.method public getEntryType()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryType:I

    return v0
.end method

.method public getPromptMode()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mPromptMode:I

    return v0
.end method

.method public getTestMode()I
    .locals 1

    .prologue
    .line 190
    iget-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mTestMode:B

    return v0
.end method

.method public getXmlDoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mXmlDoc:Ljava/lang/String;

    return-object v0
.end method

.method public isSearchText()Z
    .locals 1

    .prologue
    .line 174
    iget-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mIsSearchText:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEntryMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryMode:I

    .line 155
    return-void
.end method

.method public setEntryType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryType:I

    .line 163
    return-void
.end method

.method public setIsSearchText(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mIsSearchText:B

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mIsSearchText:B

    goto :goto_0
.end method

.method public setPromptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/iflytek/business/speech/RecognizerResult;->mPromptMode:I

    .line 171
    return-void
.end method

.method public setTestMode(B)V
    .locals 0
    .param p1, "value"    # B

    .prologue
    .line 194
    iput-byte p1, p0, Lcom/iflytek/business/speech/RecognizerResult;->mTestMode:B

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Confidence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mConfidence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Engine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEngine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " XML="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mXmlDoc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " EntryMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " EntryType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " PromptMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mPromptMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IsSearchText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mIsSearchText:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mTestMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/iflytek/business/speech/RecognizerResult;->mTestMode:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "res":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEngine:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mConfidence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mFocus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mXmlDoc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mEntryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mPromptMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mIsSearchText:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 136
    iget-byte v0, p0, Lcom/iflytek/business/speech/RecognizerResult;->mTestMode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    return-void
.end method
