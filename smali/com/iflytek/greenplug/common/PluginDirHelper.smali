.class public Lcom/iflytek/greenplug/common/PluginDirHelper;
.super Ljava/lang/Object;
.source "PluginDirHelper.java"


# static fields
.field private static sBaseDir:Ljava/io/File;

.field private static sPendingDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/iflytek/greenplug/common/PluginDirHelper;->sBaseDir:Ljava/io/File;

    .line 22
    sput-object v0, Lcom/iflytek/greenplug/common/PluginDirHelper;->sPendingDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanOptimizedDirectory(Ljava/lang/String;)V
    .locals 5
    .param p0, "optimizedDirectory"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 128
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 129
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 130
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 139
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static enforceDirExists(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->init(Landroid/content/Context;)V

    .line 60
    sget-object v0, Lcom/iflytek/greenplug/common/PluginDirHelper;->sBaseDir:Ljava/io/File;

    invoke-static {v0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContextDataDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "data/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "dataDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPluginApkDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfoPackageName"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginApkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfoPackageName"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginApkDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "base-1.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginDalvikCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfoPackageName"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dalvik-cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginDalvikCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfoPackageName"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginDalvikCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "dalvikCacheDir":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginApkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "pluginApkFile":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "apkName":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    const-string/jumbo v5, "@"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "dexName":Ljava/lang/String;
    const-string/jumbo v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@classes.dex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getPluginDalvikCacheUniqueDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfoPackageName"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginDalvikCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "optimizedDirectory":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 91
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 92
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 93
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 99
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    return-object v3

    .line 92
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getPluginDataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfoPackageName"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginNativeLibraryDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfoPackageName"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginPendingDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->init(Landroid/content/Context;)V

    .line 65
    sget-object v0, Lcom/iflytek/greenplug/common/PluginDirHelper;->sPendingDir:Ljava/io/File;

    invoke-static {v0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluginSignatureDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfoPackageName"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Signature/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 25
    sget-object v1, Lcom/iflytek/greenplug/common/PluginDirHelper;->sBaseDir:Ljava/io/File;

    if-nez v1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 27
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 28
    const-string/jumbo v1, "cache"

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 31
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "plugins"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/iflytek/greenplug/common/PluginDirHelper;->sBaseDir:Ljava/io/File;

    .line 32
    sget-object v1, Lcom/iflytek/greenplug/common/PluginDirHelper;->sBaseDir:Ljava/io/File;

    invoke-static {v1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    .line 34
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    sget-object v1, Lcom/iflytek/greenplug/common/PluginDirHelper;->sPendingDir:Ljava/io/File;

    if-nez v1, :cond_3

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 36
    .restart local v0    # "cacheDir":Ljava/io/File;
    if-nez v0, :cond_2

    .line 37
    const-string/jumbo v1, "cache"

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 41
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "plugins_pending"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/iflytek/greenplug/common/PluginDirHelper;->sPendingDir:Ljava/io/File;

    .line 42
    sget-object v1, Lcom/iflytek/greenplug/common/PluginDirHelper;->sPendingDir:Ljava/io/File;

    invoke-static {v1}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    .line 44
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_3
    return-void
.end method

.method public static makePluginBaseDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfoPackageName"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->init(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/iflytek/greenplug/common/PluginDirHelper;->sBaseDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/greenplug/common/PluginDirHelper;->enforceDirExists(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
