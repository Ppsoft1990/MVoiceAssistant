.class public Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
.super Ljava/lang/Object;
.source "NetPluginInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetPlugin"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3230328512d986b2L


# instance fields
.field private mAndroidLv:I

.field private mAuthor:Ljava/lang/String;

.field private mDesc:Ljava/lang/String;

.field private mDownloadCount:I

.field private mId:Ljava/lang/String;

.field private mImageUrl:Ljava/lang/String;

.field private mIsAutoDownload:Ljava/lang/String;

.field private mIsAutoInstall:Ljava/lang/String;

.field private mKind:Ljava/lang/String;

.field private mLinkUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mPluginId:Ljava/lang/String;

.field private mPreUrl:Ljava/lang/String;

.field private mScore:Ljava/lang/String;

.field private mShareText:Ljava/lang/String;

.field private mSize:Ljava/lang/String;

.field private mType:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidLv()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mAndroidLv:I

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mDownloadCount:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mKind:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mPluginId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mPreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mScore:Ljava/lang/String;

    return-object v0
.end method

.method public getShareText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mShareText:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mSize:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mType:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoDownload()Z
    .locals 2

    .prologue
    .line 242
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mIsAutoDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAutoInstall()Z
    .locals 2

    .prologue
    .line 250
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mIsAutoInstall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAndroidLv(I)V
    .locals 0
    .param p1, "androidLv"    # I

    .prologue
    .line 258
    iput p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mAndroidLv:I

    .line 259
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mAuthor:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setAutoDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "isAutoDownload"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mIsAutoDownload:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setAutoInstall(Ljava/lang/String;)V
    .locals 0
    .param p1, "isAutoInstall"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mIsAutoInstall:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mDesc:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0
    .param p1, "downloadCount"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mDownloadCount:I

    .line 223
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mImageUrl:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mKind:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mLinkUrl:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mPkgName:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setPluginId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mPluginId:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setPreUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "preUrl"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mPreUrl:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .param p1, "score"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mScore:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setShareText(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareText"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mShareText:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mSize:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mType:I

    .line 183
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mVersion:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetPlugin [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPluginId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mPluginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAuthor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLinkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mPreUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mScore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDownloadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mDownloadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mShareText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mShareText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsAutoDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mIsAutoDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsAutoInstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mIsAutoInstall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAndroidLv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->mAndroidLv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
