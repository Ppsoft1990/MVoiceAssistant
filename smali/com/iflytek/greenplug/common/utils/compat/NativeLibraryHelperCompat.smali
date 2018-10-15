.class public Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;
.super Ljava/lang/Object;
.source "NativeLibraryHelperCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final copyNativeBinaries(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "sharedLibraryDir"    # Ljava/io/File;

    .prologue
    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->copyNativeBinariesAfterL(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)I

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->copyNativeBinariesBeforeL(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)I

    move-result v0

    goto :goto_0
.end method

.method private static copyNativeBinariesAfterL(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)I
    .locals 13
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "sharedLibraryDir"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 60
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "copyNativeBinariesAfterL begin, apkFile is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,sharedLibraryDir is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v6, -0x1

    .line 63
    .local v6, "result":I
    :try_start_0
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->handleClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "create"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v8, v9, v10}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 64
    .local v5, "handleInstance":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 65
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "copyNativeBinariesAfterL fail, handleInstance is null"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "copyNativeBinariesAfterL end, apkFile is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 121
    .end local v5    # "handleInstance":Ljava/lang/Object;
    .end local v6    # "result":I
    .local v7, "result":I
    :goto_0
    return v7

    .line 70
    .end local v7    # "result":I
    .restart local v5    # "handleInstance":Ljava/lang/Object;
    .restart local v6    # "result":I
    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, "abi":Ljava/lang/String;
    invoke-static {p0}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->isVM64(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 72
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "copyNativeBinariesAfterL, isVM64 is true"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_3

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->getAbisFromApk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 75
    .local v2, "abis":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 76
    :cond_1
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "copyNativeBinariesAfterL, abis empty, so return"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v6, 0x0

    .line 78
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "copyNativeBinariesAfterL end, apkFile is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 79
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto :goto_0

    .line 81
    .end local v7    # "result":I
    .restart local v6    # "result":I
    :cond_2
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->nativeLibraryHelperClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "findSupportedAbi"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    sget-object v12, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 82
    .local v1, "abiIndex":I
    if-ltz v1, :cond_3

    .line 83
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v8, v1

    .line 103
    .end local v1    # "abiIndex":I
    .end local v2    # "abis":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    if-nez v0, :cond_7

    .line 104
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "copyNativeBinariesAfterL, abis is null"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "copyNativeBinariesAfterL end, apkFile is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 106
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto/16 :goto_0

    .line 87
    .end local v7    # "result":I
    .restart local v6    # "result":I
    :cond_4
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "copyNativeBinariesAfterL, isVM64 is false"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v8, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_3

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->getAbisFromApk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 90
    .restart local v2    # "abis":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 91
    :cond_5
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "copyNativeBinariesAfterL, abis empty, so return"

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v6, 0x0

    .line 93
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "copyNativeBinariesAfterL end, apkFile is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 94
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto/16 :goto_0

    .line 96
    .end local v7    # "result":I
    .restart local v6    # "result":I
    :cond_6
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->nativeLibraryHelperClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "findSupportedAbi"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    sget-object v12, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    .restart local v1    # "abiIndex":I
    if-ltz v1, :cond_3

    .line 98
    sget-object v8, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v8, v1

    goto/16 :goto_1

    .line 109
    .end local v1    # "abiIndex":I
    .end local v2    # "abis":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "copyNativeBinariesAfterL, findSupportedAbi:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,so call android method copyNativeBinaries"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v8, 0x3

    new-array v3, v8, [Ljava/lang/Object;

    .line 112
    .local v3, "args":[Ljava/lang/Object;
    const/4 v8, 0x0

    aput-object v5, v3, v8

    .line 113
    const/4 v8, 0x1

    aput-object p2, v3, v8

    .line 114
    const/4 v8, 0x2

    aput-object v0, v3, v8

    .line 115
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->nativeLibraryHelperClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "copyNativeBinaries"

    invoke-static {v8, v9, v3}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 120
    .end local v0    # "abi":Ljava/lang/String;
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v5    # "handleInstance":Ljava/lang/Object;
    :goto_2
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "copyNativeBinariesAfterL end, apkFile is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ,result is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 121
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto/16 :goto_0

    .line 116
    .end local v7    # "result":I
    .restart local v6    # "result":I
    :catch_0
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "copyNativeBinariesAfterL error"

    invoke-static {v8, v9, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static copyNativeBinariesBeforeL(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "sharedLibraryDir"    # Ljava/io/File;

    .prologue
    .line 38
    sget-object v3, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "copyNativeBinariesBeforeL begin, apkFile is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,sharedLibraryDir is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v2, -0x1

    .line 41
    .local v2, "result":I
    const/4 v3, 0x2

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 42
    .local v0, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 43
    const/4 v3, 0x1

    aput-object p2, v0, v3

    .line 44
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 45
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->nativeLibraryHelperClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "copyNativeBinariesIfNeededLI"

    invoke-static {v3, v4, v0}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 54
    .end local v0    # "args":[Ljava/lang/Object;
    :goto_0
    sget-object v3, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "copyNativeBinariesBeforeL end, apkFile is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v2

    .line 48
    .restart local v0    # "args":[Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->nativeLibraryHelperClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "copyNativeBinariesLI"

    invoke-static {v3, v4, v0}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 50
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "copyNativeBinariesBeforeL error"

    invoke-static {v3, v4, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getAbisFromApk(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .param p0, "apk"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "apkFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 148
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v6, "supportedAbis":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 151
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v7, "../"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 155
    const-string/jumbo v7, "lib/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, ".so"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 156
    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "supportedAbi":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v0    # "apkFile":Ljava/util/zip/ZipFile;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "supportedAbi":Ljava/lang/String;
    .end local v6    # "supportedAbis":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getAbisFromApk failure"

    invoke-static {v7, v8, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    const/4 v6, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 160
    .restart local v0    # "apkFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v6    # "supportedAbis":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    sget-object v7, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAbisFromApk end,supportedAbis"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static final handleClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 26
    const-string/jumbo v0, "com.android.internal.content.NativeLibraryHelper$Handle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static isVM64(Landroid/content/Context;)Z
    .locals 6
    .param p0, "hostContext"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v2

    .line 130
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/iflytek/greenplug/common/utils/compat/NativeLibraryHelperCompat;->getAbisFromApk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 131
    .local v1, "supportedAbis":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 132
    goto :goto_0

    .line 135
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "supportedAbi":Ljava/lang/String;
    const-string/jumbo v5, "arm64-v8a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "x86_64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "mips64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_5
    move v2, v3

    .line 137
    goto :goto_0
.end method

.method private static final nativeLibraryHelperClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 22
    const-string/jumbo v0, "com.android.internal.content.NativeLibraryHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
