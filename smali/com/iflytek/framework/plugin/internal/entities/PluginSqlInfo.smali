.class public final Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
.super Ljava/lang/Object;
.source "PluginSqlInfo.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPluginData;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPluginId:Ljava/lang/String;

.field private mPluginKind:Ljava/lang/String;

.field private mPluginPath:Ljava/lang/String;

.field private mPluginType:I

.field private mPluginVersion:I

.field private mPluignState:I

.field private mPluingMinApp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginId:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginKind:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginType:I

    return v0
.end method

.method public getPluginVersion()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginVersion:I

    return v0
.end method

.method public getPluignState()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluignState:I

    return v0
.end method

.method public getPluingMinApp()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluingMinApp:I

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPackageName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPluginId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setPluginKind(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginKind"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginKind:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPluginPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginPath:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPluginType(I)V
    .locals 0
    .param p1, "pluginType"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginType:I

    .line 94
    return-void
.end method

.method public setPluginVersion(I)V
    .locals 0
    .param p1, "pluginVersion"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluginVersion:I

    .line 90
    return-void
.end method

.method public setPluignState(I)V
    .locals 0
    .param p1, "pluignState"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluignState:I

    .line 102
    return-void
.end method

.method public setPluingMinApp(I)V
    .locals 0
    .param p1, "pluingMinApp"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->mPluingMinApp:I

    .line 106
    return-void
.end method
