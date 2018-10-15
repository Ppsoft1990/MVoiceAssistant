.class public final Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
.super Ljava/lang/Object;
.source "PluginInterface.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPluginData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBundleClassPath:Ljava/lang/String;

.field private mPluginAbilityClassPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSkinClassPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface$1;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface$1;-><init>()V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getBundleClassPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->mBundleClassPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginAbilityClassPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->mPluginAbilityClassPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkinClassPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->mSkinClassPath:Ljava/lang/String;

    return-object v0
.end method

.method public setBundleClassPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleClassPath"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->mBundleClassPath:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPluginAbilityClassPaths(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "pluginAbilityClassPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->mPluginAbilityClassPaths:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public setSkinClassPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "skinClassPath"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->mSkinClassPath:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->mBundleClassPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->mPluginAbilityClassPaths:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 65
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->mSkinClassPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
