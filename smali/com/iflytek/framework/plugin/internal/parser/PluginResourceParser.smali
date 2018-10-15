.class public final Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;
.super Ljava/lang/Object;
.source "PluginResourceParser.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/parser/IPluginParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iflytek/framework/plugin/internal/parser/IPluginParser",
        "<",
        "Lcom/iflytek/framework/plugin/internal/entities/PluginResource;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginResourceParser"


# instance fields
.field private mPluginId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->mPluginId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private static convertResPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fromPath"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_0
    return-object p0
.end method


# virtual methods
.method public parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
    .locals 10
    .param p1, "parseData"    # Ljava/util/Properties;

    .prologue
    const/4 v7, 0x0

    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 30
    :cond_0
    const-string/jumbo v8, "PluginResourceParser"

    const-string/jumbo v9, "parseData map is null or size 0"

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 78
    :cond_1
    :goto_0
    return-object v6

    .line 34
    :cond_2
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->mPluginId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 35
    const-string/jumbo v8, "PluginResourceParser"

    const-string/jumbo v9, "parseData pluginId is null"

    invoke-static {v8, v9}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 36
    goto :goto_0

    .line 39
    :cond_3
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->mPluginId:Ljava/lang/String;

    invoke-static {v8}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->getInstallPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "resPath":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    invoke-direct {v6}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;-><init>()V

    .line 44
    .local v6, "resource":Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
    const-string/jumbo v8, "lib_path"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "libPath":Ljava/lang/String;
    const-string/jumbo v8, "file_path"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "filePath":Ljava/lang/String;
    const-string/jumbo v8, "audio_path"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "audioPath":Ljava/lang/String;
    const-string/jumbo v8, "pic_path"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "picPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->convertResPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v6, v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setLibResPath(Ljava/lang/String;)V

    .line 54
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->convertResPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v6, v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setFileResPath(Ljava/lang/String;)V

    .line 59
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->convertResPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v6, v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setAudioResPath(Ljava/lang/String;)V

    .line 64
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->convertResPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {v6, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setPicResPath(Ljava/lang/String;)V

    .line 69
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 70
    invoke-virtual {v6, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginResource;->setInstallPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 74
    .end local v0    # "audioPath":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "libPath":Ljava/lang/String;
    .end local v4    # "picPath":Ljava/lang/String;
    .end local v6    # "resource":Lcom/iflytek/framework/plugin/internal/entities/PluginResource;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "PluginResourceParser"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 78
    goto/16 :goto_0
.end method

.method public bridge synthetic parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/interfaces/IPluginData;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/parser/PluginResourceParser;->parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginResource;

    move-result-object v0

    return-object v0
.end method
