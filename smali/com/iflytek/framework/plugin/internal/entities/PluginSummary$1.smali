.class final Lcom/iflytek/framework/plugin/internal/entities/PluginSummary$1;
.super Ljava/lang/Object;
.source "PluginSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 229
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;-><init>()V

    .line 230
    .local v0, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setId(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setAuthor(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setDescription(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setPlatform(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setVersion(I)V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setPackageName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setIcon(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setRequireAppMinVersion(I)V

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setRequireOSApi(I)V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setType(I)V

    .line 241
    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setRequirePluginMap(Ljava/util/HashMap;)V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setInstallPath(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setIsApk(I)V

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setCustom(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setEntryType(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setKind(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->setVisibility(I)V

    .line 248
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 253
    new-array v0, p1, [Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary$1;->newArray(I)[Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    return-object v0
.end method
