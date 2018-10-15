.class public Lcom/iflytek/common/download/entities/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x232e510a8ed1a152L


# instance fields
.field protected mCover:Z

.field protected mCurrentBytes:J

.field protected mDeleteDB:Z

.field protected mETag:Ljava/lang/String;

.field protected mEntryType:Ljava/lang/String;

.field protected mErrorCode:I

.field protected mExtra:Ljava/lang/String;

.field protected mFilePath:Ljava/lang/String;

.field protected mForeground:Z

.field protected mId:J

.field protected mMimeType:Ljava/lang/String;

.field protected mRange:Z

.field protected mRedirectUrl:Ljava/lang/String;

.field protected mRetryCnt:I

.field protected mSpecifiedPath:Ljava/lang/String;

.field protected mStatus:I

.field protected mTitle:Ljava/lang/String;

.field protected mTotalBytes:J

.field protected mType:I

.field protected mUrl:Ljava/lang/String;

.field protected mViewFlag:Z

.field protected mVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;IZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "entryType"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "fileName"    # Ljava/lang/String;
    .param p8, "specifiedPath"    # Ljava/lang/String;
    .param p9, "mimeType"    # Ljava/lang/String;
    .param p10, "status"    # I
    .param p11, "error"    # I
    .param p12, "totalBytes"    # J
    .param p14, "currentBytes"    # J
    .param p16, "visibility"    # I
    .param p17, "eTag"    # Ljava/lang/String;
    .param p18, "retryCnt"    # I
    .param p19, "foreground"    # Z
    .param p20, "isView"    # Z
    .param p21, "range"    # Z
    .param p22, "rename"    # Z
    .param p23, "deleteDB"    # Z
    .param p24, "redirectUrl"    # Ljava/lang/String;
    .param p25, "extra"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-wide p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mId:J

    .line 107
    iput p3, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mType:I

    .line 108
    iput-object p4, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mEntryType:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mUrl:Ljava/lang/String;

    .line 111
    iput-object p7, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mFilePath:Ljava/lang/String;

    .line 112
    iput-object p8, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mSpecifiedPath:Ljava/lang/String;

    .line 113
    iput-object p9, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 114
    iput p10, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mStatus:I

    .line 115
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mTotalBytes:J

    .line 116
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mCurrentBytes:J

    .line 117
    move/from16 v0, p16

    iput v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mVisibility:I

    .line 118
    iput p11, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mErrorCode:I

    .line 119
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mETag:Ljava/lang/String;

    .line 120
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRange:Z

    .line 121
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mCover:Z

    .line 122
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mDeleteDB:Z

    .line 123
    move/from16 v0, p18

    iput v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRetryCnt:I

    .line 124
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mForeground:Z

    .line 125
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRedirectUrl:Ljava/lang/String;

    .line 126
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mViewFlag:Z

    .line 127
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mExtra:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mId:J

    .line 81
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mType:I

    .line 82
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mEntryType:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mUrl:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mFilePath:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mStatus:I

    .line 88
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mTotalBytes:J

    .line 89
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mCurrentBytes:J

    .line 90
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mVisibility:I

    .line 91
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mErrorCode:I

    .line 92
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getETag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mETag:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isForeground()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mForeground:Z

    .line 94
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isCover()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mCover:Z

    .line 95
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isRange()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRange:Z

    .line 96
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isDeleteDB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mDeleteDB:Z

    .line 97
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getRetryCnt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRetryCnt:I

    .line 98
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRedirectUrl:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->isView()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mViewFlag:Z

    .line 100
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mExtra:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public getCurrentBytes()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mCurrentBytes:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mETag:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mEntryType:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mErrorCode:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCnt()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRetryCnt:I

    return v0
.end method

.method public getSpecifiedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mSpecifiedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mStatus:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotleBytes()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mVisibility:I

    return v0
.end method

.method public isCover()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mCover:Z

    return v0
.end method

.method public isDeleteDB()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mDeleteDB:Z

    return v0
.end method

.method public isDownloadListVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 300
    iget v1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mVisibility:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mVisibility:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mForeground:Z

    return v0
.end method

.method public isNotificationVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 291
    iget v1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mVisibility:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mVisibility:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRange()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRange:Z

    return v0
.end method

.method public isView()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mViewFlag:Z

    return v0
.end method

.method public setCover(Z)V
    .locals 0
    .param p1, "cover"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mCover:Z

    .line 196
    return-void
.end method

.method public setCurrentBytes(J)V
    .locals 1
    .param p1, "currentBytes"    # J

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mCurrentBytes:J

    .line 132
    return-void
.end method

.method public setDeleteDB(Z)V
    .locals 0
    .param p1, "deleteDB"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mDeleteDB:Z

    .line 268
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mETag:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setEntryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "entryType"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mEntryType:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mErrorCode:I

    .line 140
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mExtra:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mFilePath:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setForeground(Z)V
    .locals 0
    .param p1, "foreground"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mForeground:Z

    .line 260
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mId:J

    .line 172
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setRange(Z)V
    .locals 0
    .param p1, "range"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRange:Z

    .line 188
    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRedirectUrl:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setRetryCnt(I)V
    .locals 0
    .param p1, "retryCnt"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mRetryCnt:I

    .line 204
    return-void
.end method

.method public setSpecifiedPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "specifiedPath"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mSpecifiedPath:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mStatus:I

    .line 212
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setTotleBytes(J)V
    .locals 1
    .param p1, "totleBytes"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mTotalBytes:J

    .line 220
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mType:I

    .line 228
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mUrl:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setViewFlag(Z)V
    .locals 0
    .param p1, "viewFlag"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mViewFlag:Z

    .line 288
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/iflytek/common/download/entities/DownloadInfo;->mVisibility:I

    .line 244
    return-void
.end method
