.class public final Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
.super Ljava/lang/Object;
.source "PluginSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPluginData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mCustom:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mEntryType:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mInstallPath:Ljava/lang/String;

.field private mIsApk:I

.field private mKind:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPlatform:Ljava/lang/String;

.field private mRequireAppMinVersion:I

.field private mRequireOSApi:I

.field private mRequirePluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mVersion:I

.field private mVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary$1;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary$1;-><init>()V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getCustom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mCustom:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mEntryType:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mInstallPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsApk()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mIsApk:I

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mKind:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mPlatform:Ljava/lang/String;

    return-object v0
.end method

.method public getRequireAppMinVersion()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mRequireAppMinVersion:I

    return v0
.end method

.method public getRequireOSApi()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mRequireOSApi:I

    return v0
.end method

.method public getRequirePluginMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mRequirePluginMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mType:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mVersion:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mVisibility:I

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mAuthor:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setCustom(Ljava/lang/String;)V
    .locals 0
    .param p1, "custom"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mCustom:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mDescription:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setEntryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "entryType"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mEntryType:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mIcon:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mId:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setInstallPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "installPath"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mInstallPath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setIsApk(I)V
    .locals 0
    .param p1, "isApk"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mIsApk:I

    .line 171
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mKind:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mPackageName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mPlatform:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setRequireAppMinVersion(I)V
    .locals 0
    .param p1, "requireAppMinVersion"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mRequireAppMinVersion:I

    .line 147
    return-void
.end method

.method public setRequireOSApi(I)V
    .locals 0
    .param p1, "requireOSApi"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mRequireOSApi:I

    .line 151
    return-void
.end method

.method public setRequirePluginMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "requirePluginMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mRequirePluginMap:Ljava/util/HashMap;

    .line 163
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mType:I

    .line 155
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mVersion:I

    .line 139
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mVisibility:I

    .line 195
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mAuthor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mPlatform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mRequireAppMinVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mRequireOSApi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mRequirePluginMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 216
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mInstallPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mIsApk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mCustom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mEntryType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mKind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->mVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    return-void
.end method
