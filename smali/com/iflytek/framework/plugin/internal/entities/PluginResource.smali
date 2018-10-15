.class public final Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
.super Ljava/lang/Object;
.source "PluginResource.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPluginData;
.implements Lcom/iflytek/yd/plugin/IPluginResource;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/framework/plugin/internal/entities/PluginResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioResPath:Ljava/lang/String;

.field private mFileResPath:Ljava/lang/String;

.field private mInstallPath:Ljava/lang/String;

.field private mLibResPath:Ljava/lang/String;

.field private mPicResPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource$1;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource$1;-><init>()V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAudioResPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mAudioResPath:Ljava/lang/String;

    return-object v0
.end method

.method private getFileResPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mFileResPath:Ljava/lang/String;

    return-object v0
.end method

.method private getInstallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mInstallPath:Ljava/lang/String;

    return-object v0
.end method

.method private getLibResPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mLibResPath:Ljava/lang/String;

    return-object v0
.end method

.method private getPicResPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mPicResPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getPluginAudioPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->getAudioResPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->getFileResPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginInstallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->getInstallPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginLibPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->getLibResPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginPicResPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->getPicResPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAudioResPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioResPath"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mAudioResPath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setFileResPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileResPath"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mFileResPath:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setInstallPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "installPath"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mInstallPath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setLibResPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "libResPath"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mLibResPath:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPicResPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "picResPath"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mPicResPath:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mLibResPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mPicResPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mAudioResPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mFileResPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->mInstallPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
