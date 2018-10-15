.class final Lcom/iflytek/framework/plugin/internal/entities/PluginInterface$1;
.super Ljava/lang/Object;
.source "PluginInterface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
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
        "Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 78
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;-><init>()V

    .line 79
    .local v0, "pluginInterface":Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->setBundleClassPath(Ljava/lang/String;)V

    .line 80
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->setPluginAbilityClassPaths(Ljava/util/ArrayList;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->setSkinClassPath(Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 72
    new-array v0, p1, [Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface$1;->newArray(I)[Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    move-result-object v0

    return-object v0
.end method
