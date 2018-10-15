.class public Lazb;
.super Ljava/lang/Object;
.source "ApkUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 38
    invoke-static {p0, p1}, Lazb;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lazb;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 53
    :cond_0
    const-string/jumbo v23, "ApkUtils"

    const-string/jumbo v24, "getApkIcon | context or apkpath is null"

    invoke-static/range {v23 .. v24}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v10, 0x0

    .line 144
    :cond_1
    :goto_0
    return-object v10

    .line 57
    :cond_2
    const-string/jumbo v23, ".apk"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 58
    const-string/jumbo v23, "ApkUtils"

    const-string/jumbo v24, "getApkIcon | it is not a apk"

    invoke-static/range {v23 .. v24}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v10, 0x0

    goto :goto_0

    .line 62
    :cond_3
    const/4 v10, 0x0

    .line 63
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v3, "android.content.pm.PackageParser"

    .line 64
    .local v3, "PATH_PackageParser":Ljava/lang/String;
    const-string/jumbo v2, "android.content.res.AssetManager"

    .line 70
    .local v2, "PATH_AssetManager":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 71
    .local v15, "pkgParserCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 72
    .local v21, "typeArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v21, v23

    .line 73
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 74
    .local v16, "pkgParserCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 75
    .local v22, "valueArgs":[Ljava/lang/Object;
    const/16 v23, 0x0

    aput-object p1, v22, v23

    .line 76
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 79
    .local v14, "pkgParser":Ljava/lang/Object;
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    .local v13, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v13}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 81
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 82
    const/16 v23, 0x0

    const-class v24, Ljava/io/File;

    aput-object v24, v21, v23

    .line 83
    const/16 v23, 0x1

    const-class v24, Ljava/lang/String;

    aput-object v24, v21, v23

    .line 84
    const/16 v23, 0x2

    const-class v24, Landroid/util/DisplayMetrics;

    aput-object v24, v21, v23

    .line 85
    const/16 v23, 0x3

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v21, v23

    .line 86
    const-string/jumbo v23, "parsePackage"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 88
    .local v18, "pkgParser_parsePackageMtd":Ljava/lang/reflect/Method;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 89
    const/16 v23, 0x0

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v24, v22, v23

    .line 90
    const/16 v23, 0x1

    aput-object p1, v22, v23

    .line 91
    const/16 v23, 0x2

    aput-object v13, v22, v23

    .line 92
    const/16 v23, 0x3

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    .line 93
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 97
    .local v17, "pkgParserPkg":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v24, "applicationInfo"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 100
    .local v4, "appInfoFld":Ljava/lang/reflect/Field;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 102
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v23, "ApkUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "getApkIcon | pkg:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " uid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 110
    .local v6, "assetMagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    check-cast v23, [Ljava/lang/Class;

    .line 111
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 112
    .local v7, "assetMagCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v23, 0x0

    check-cast v23, [Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 113
    .local v5, "assetMag":Ljava/lang/Object;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 114
    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v21, v23

    .line 115
    const-string/jumbo v23, "addAssetPath"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 117
    .local v8, "assetMag_addAssetPathMtd":Ljava/lang/reflect/Method;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 118
    const/16 v23, 0x0

    aput-object p1, v22, v23

    .line 119
    move-object/from16 v0, v22

    invoke-virtual {v8, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 121
    .local v19, "res":Landroid/content/res/Resources;
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 122
    const/16 v23, 0x0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v21, v23

    .line 123
    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v21, v23

    .line 124
    const/16 v23, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v21, v23

    .line 125
    const-class v23, Landroid/content/res/Resources;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v20

    .line 126
    .local v20, "resCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    .line 127
    const/16 v23, 0x0

    aput-object v5, v22, v23

    .line 128
    const/16 v23, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    aput-object v24, v22, v23

    .line 129
    const/16 v23, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    aput-object v24, v22, v23

    .line 130
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "res":Landroid/content/res/Resources;
    check-cast v19, Landroid/content/res/Resources;

    .line 131
    .restart local v19    # "res":Landroid/content/res/Resources;
    const/4 v12, 0x0

    .line 132
    .local v12, "label":Ljava/lang/CharSequence;
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 133
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 136
    :cond_4
    const-string/jumbo v23, "ApkUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "getApkIcon | label = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 139
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_0

    .line 141
    .end local v4    # "appInfoFld":Ljava/lang/reflect/Field;
    .end local v5    # "assetMag":Ljava/lang/Object;
    .end local v6    # "assetMagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "assetMagCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "assetMag_addAssetPathMtd":Ljava/lang/reflect/Method;
    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "label":Ljava/lang/CharSequence;
    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    .end local v14    # "pkgParser":Ljava/lang/Object;
    .end local v15    # "pkgParserCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "pkgParserCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "pkgParserPkg":Ljava/lang/Object;
    .end local v18    # "pkgParser_parsePackageMtd":Ljava/lang/reflect/Method;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "resCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v21    # "typeArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v22    # "valueArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 142
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "ApkUtils"

    const-string/jumbo v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 155
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 156
    :cond_0
    const-string/jumbo v22, "ApkUtils"

    const-string/jumbo v23, "getApkIcon | context or apkpath is null"

    invoke-static/range {v22 .. v23}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v10, 0x0

    .line 236
    :cond_1
    :goto_0
    return-object v10

    .line 160
    :cond_2
    const-string/jumbo v22, ".apk"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 161
    const-string/jumbo v22, "ApkUtils"

    const-string/jumbo v23, "getApkIcon | it is not a apk"

    invoke-static/range {v22 .. v23}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v10, 0x0

    goto :goto_0

    .line 165
    :cond_3
    const/4 v10, 0x0

    .line 166
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v3, "android.content.pm.PackageParser"

    .line 167
    .local v3, "PATH_PackageParser":Ljava/lang/String;
    const-string/jumbo v2, "android.content.res.AssetManager"

    .line 173
    .local v2, "PATH_AssetManager":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 174
    .local v14, "pkgParserCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 175
    .local v15, "pkgParserCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 177
    .local v13, "pkgParser":Ljava/lang/Object;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 178
    .local v20, "typeArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v22, 0x0

    const-class v23, Ljava/io/File;

    aput-object v23, v20, v22

    .line 179
    const/16 v22, 0x1

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v20, v22

    .line 180
    const-string/jumbo v22, "parsePackage"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 182
    .local v17, "pkgParser_parsePackageMtd":Ljava/lang/reflect/Method;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 183
    .local v21, "valueArgs":[Ljava/lang/Object;
    const/16 v22, 0x0

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v23, v21, v22

    .line 184
    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    .line 185
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 189
    .local v16, "pkgParserPkg":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string/jumbo v23, "applicationInfo"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 192
    .local v4, "appInfoFld":Ljava/lang/reflect/Field;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 194
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v22, "ApkUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getApkIcon | pkg:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " uid="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 202
    .local v6, "assetMagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Class;

    .line 203
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 204
    .local v7, "assetMagCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 205
    .local v5, "assetMag":Ljava/lang/Object;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 206
    const/16 v22, 0x0

    const-class v23, Ljava/lang/String;

    aput-object v23, v20, v22

    .line 207
    const-string/jumbo v22, "addAssetPath"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 209
    .local v8, "assetMag_addAssetPathMtd":Ljava/lang/reflect/Method;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 210
    const/16 v22, 0x0

    aput-object p1, v21, v22

    .line 211
    move-object/from16 v0, v21

    invoke-virtual {v8, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 213
    .local v18, "res":Landroid/content/res/Resources;
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 214
    const/16 v22, 0x0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    aput-object v23, v20, v22

    .line 215
    const/16 v22, 0x1

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    aput-object v23, v20, v22

    .line 216
    const/16 v22, 0x2

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    aput-object v23, v20, v22

    .line 217
    const-class v22, Landroid/content/res/Resources;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    .line 218
    .local v19, "resCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 219
    const/16 v22, 0x0

    aput-object v5, v21, v22

    .line 220
    const/16 v22, 0x1

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    aput-object v23, v21, v22

    .line 221
    const/16 v22, 0x2

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    aput-object v23, v21, v22

    .line 222
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "res":Landroid/content/res/Resources;
    check-cast v18, Landroid/content/res/Resources;

    .line 223
    .restart local v18    # "res":Landroid/content/res/Resources;
    const/4 v12, 0x0

    .line 224
    .local v12, "label":Ljava/lang/CharSequence;
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 225
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 228
    :cond_4
    const-string/jumbo v22, "ApkUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getApkIcon | label = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 231
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_0

    .line 233
    .end local v4    # "appInfoFld":Ljava/lang/reflect/Field;
    .end local v5    # "assetMag":Ljava/lang/Object;
    .end local v6    # "assetMagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "assetMagCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "assetMag_addAssetPathMtd":Ljava/lang/reflect/Method;
    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "label":Ljava/lang/CharSequence;
    .end local v13    # "pkgParser":Ljava/lang/Object;
    .end local v14    # "pkgParserCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "pkgParserCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v16    # "pkgParserPkg":Ljava/lang/Object;
    .end local v17    # "pkgParser_parsePackageMtd":Ljava/lang/reflect/Method;
    .end local v18    # "res":Landroid/content/res/Resources;
    .end local v19    # "resCt":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v20    # "typeArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v21    # "valueArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 234
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "ApkUtils"

    const-string/jumbo v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
