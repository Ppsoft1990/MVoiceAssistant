.class final Lcom/iflytek/framework/plugin/internal/entities/PluginResource$1;
.super Ljava/lang/Object;
.source "PluginResource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
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
        "Lcom/iflytek/framework/plugin/internal/entities/PluginResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 101
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;-><init>()V

    .line 102
    .local v0, "pluginResource":Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setLibResPath(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setPicResPath(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setAudioResPath(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setFileResPath(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setInstallPath(Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 96
    new-array v0, p1, [Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource$1;->newArray(I)[Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    move-result-object v0

    return-object v0
.end method
