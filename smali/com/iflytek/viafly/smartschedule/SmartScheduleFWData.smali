.class public Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
.super Ljava/lang/Object;
.source "SmartScheduleFWData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBottomAction:Ljava/lang/String;

.field private mBottomLeftAction:Ljava/lang/String;

.field private mBottomLeftText:Ljava/lang/String;

.field private mBottomText:Ljava/lang/String;

.field private mCardIcon:Ljava/lang/String;

.field private mCardIconUrl:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mFloatIcon:Ljava/lang/String;

.field private mFloatIconUrl:Ljava/lang/String;

.field private mFloatIconUrls:[Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mRepeatTime:I

.field private mScheduleType:I

.field private mShowTime:I

.field private mSubTitle:Ljava/lang/String;

.field private mTipText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mRepeatTime:I

    .line 129
    iput v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mScheduleType:I

    .line 130
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mRepeatTime:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mType:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mId:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mTitle:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mSubTitle:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mContent:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mTipText:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomLeftText:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomText:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomLeftAction:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomAction:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIconUrl:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mCardIconUrl:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIconUrls:[Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mShowTime:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mRepeatTime:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mScheduleType:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIcon:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mCardIcon:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public addShowTime()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mShowTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mShowTime:I

    .line 106
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getBottomAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomLeftAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomLeftAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomLeftText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomLeftText:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomText:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mCardIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mCardIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatIconUrls()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIconUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatTime()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mRepeatTime:I

    return v0
.end method

.method public getScheduleType()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mScheduleType:I

    return v0
.end method

.method public getShowTime()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mShowTime:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTipText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mTipText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setBottomAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBottomAction"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomAction:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setBottomLeftAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBottomLeftAction"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomLeftAction:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setBottomLeftText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBottomLeftText"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomLeftText:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBottomText"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomText:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCardIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardIcon"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mCardIcon:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setCardIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCardIconUrl"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mCardIconUrl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContent"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mContent:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setFloatIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "floatIcon"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIcon:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setFloatIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFloatIconUrl"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIconUrl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setFloatIconUrls([Ljava/lang/String;)V
    .locals 0
    .param p1, "floatIconUrls"    # [Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIconUrls:[Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRepeatTime(I)V
    .locals 0
    .param p1, "repeatTime"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mRepeatTime:I

    .line 118
    return-void
.end method

.method public setScheduleType(I)V
    .locals 0
    .param p1, "scheduleType"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mScheduleType:I

    .line 154
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subitle"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mSubTitle:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setTipText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTipText"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mTipText:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mTitle:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mType"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mType:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mTipText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomLeftText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomLeftAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mBottomAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mCardIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIconUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mShowTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mRepeatTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mScheduleType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mFloatIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->mCardIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    return-void
.end method
