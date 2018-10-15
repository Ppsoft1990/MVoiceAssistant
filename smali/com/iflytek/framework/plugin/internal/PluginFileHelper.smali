.class public final Lcom/iflytek/framework/plugin/internal/PluginFileHelper;
.super Ljava/lang/Object;
.source "PluginFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/plugin/internal/PluginFileHelper$FileNameSelector;
    }
.end annotation


# static fields
.field private static final APK_INI_PATH:Ljava/lang/String; = "assets/plugin.ini"

.field public static final FILE_END:Ljava/lang/String; = "/"

.field private static final INI_PATH:Ljava/lang/String; = "plugin.ini"

.field private static final INI_SUFFIX:Ljava/lang/String; = ".ini"

.field private static final TAG:Ljava/lang/String; = "PluginFileHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkIniFile(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "zipFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 244
    .local v0, "iniName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 245
    .local v1, "zipFile":Ljava/lang/String;
    const-string/jumbo v3, ".ini"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    move-object v0, v1

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "plugin.ini"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "assets/plugin.ini"

    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    :cond_1
    const/4 v2, 0x1

    .line 253
    .end local v1    # "zipFile":Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkZipPluginFile(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->checkFilePath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v2

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v1, "zipFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->readZipFiles(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 65
    invoke-static {v1}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->checkIniFile(Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 69
    goto :goto_0

    .line 70
    .end local v1    # "zipFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PluginFileHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAssetPluginIniFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getCachePluginIniFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v3, 0x0

    .line 107
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 111
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 112
    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v1, v5

    .line 113
    .local v4, "tmpFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "plugin.ini"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 126
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "tmpFile":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-object v3

    .line 112
    .restart local v1    # "fileList":[Ljava/io/File;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v4    # "tmpFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "tmpFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "plugin.ini"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "inputStream":Ljava/io/InputStream;
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static getInstallPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "resPath":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/iflytek/framework/plugin/internal/entities/PluginConstants;->PLUGIN_INSTALL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getJarDexPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "installPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 194
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    new-instance v6, Lcom/iflytek/framework/plugin/internal/PluginFileHelper$FileNameSelector;

    const-string/jumbo v8, "src"

    invoke-direct {v6, v8}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper$FileNameSelector;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 197
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    array-length v6, v2

    if-lez v6, :cond_2

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "dexPath":Ljava/lang/String;
    array-length v9, v2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v5, v2, v8

    .line 200
    .local v5, "tmpFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    new-instance v6, Lcom/iflytek/framework/plugin/internal/PluginFileHelper$FileNameSelector;

    const-string/jumbo v10, ".jar"

    invoke-direct {v6, v10}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper$FileNameSelector;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 203
    .local v4, "jarFiles":[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 204
    array-length v10, v4

    move v6, v7

    :goto_1
    if-ge v6, v10, :cond_0

    aget-object v3, v4, v6

    .line 205
    .local v3, "jarFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ".jar"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .end local v3    # "jarFile":Ljava/io/File;
    .end local v4    # "jarFiles":[Ljava/io/File;
    :cond_0
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 204
    .restart local v3    # "jarFile":Ljava/io/File;
    .restart local v4    # "jarFiles":[Ljava/io/File;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "dexPath":Ljava/lang/String;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "jarFile":Ljava/io/File;
    .end local v4    # "jarFiles":[Ljava/io/File;
    .end local v5    # "tmpFile":Ljava/io/File;
    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method private static getRomAvailSpace()J
    .locals 8

    .prologue
    .line 153
    new-instance v2, Landroid/os/StatFs;

    const-string/jumbo v3, "/data"

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "mDataFileStats":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    .line 155
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    mul-long v0, v4, v6

    .line 156
    .local v0, "freeStorage":J
    return-wide v0
.end method

.method public static getZipPluginIniFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 84
    .local v4, "zipfile":Ljava/util/zip/ZipFile;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 86
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 88
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "plugin.ini"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "assets/plugin.ini"

    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 96
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static isRomAvailSpaceEnough()Z
    .locals 6

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->getRomAvailSpace()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 166
    .local v0, "availSpace":J
    const-wide/32 v4, 0x1e00000

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 167
    const/4 v3, 0x0

    .line 173
    .end local v0    # "availSpace":J
    :goto_0
    return v3

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PluginFileHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static parsePluginInfo([B)Ljava/io/InputStream;
    .locals 1
    .param p0, "pluginData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 184
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    return-object v0
.end method

.method private static readZipFiles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "zipFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "zipfile":Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 224
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 226
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    return-void
.end method
