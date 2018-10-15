.class final Loy;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# direct methods
.method public static a(Lox;)Lcom/iflytek/common/permission/data/Permission;
    .locals 19
    .param p0, "sql"    # Lox;

    .prologue
    .line 244
    if-nez p0, :cond_1

    .line 245
    const/4 v10, 0x0

    .line 313
    :cond_0
    :goto_0
    return-object v10

    .line 248
    :cond_1
    new-instance v10, Lcom/iflytek/common/permission/data/Permission;

    invoke-direct {v10}, Lcom/iflytek/common/permission/data/Permission;-><init>()V

    .line 249
    .local v10, "permission":Lcom/iflytek/common/permission/data/Permission;
    new-instance v11, Lcom/iflytek/common/permission/data/PermissionApp;

    invoke-direct {v11}, Lcom/iflytek/common/permission/data/PermissionApp;-><init>()V

    .line 250
    .local v11, "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    new-instance v15, Lcom/iflytek/common/permission/data/PermissionInfo;

    invoke-direct {v15}, Lcom/iflytek/common/permission/data/PermissionInfo;-><init>()V

    .line 251
    .local v15, "permissionInfo":Lcom/iflytek/common/permission/data/PermissionInfo;
    invoke-virtual {v10, v11}, Lcom/iflytek/common/permission/data/Permission;->setPermissionApp(Lcom/iflytek/common/permission/data/PermissionApp;)V

    .line 252
    invoke-virtual {v10, v15}, Lcom/iflytek/common/permission/data/Permission;->setPermissionInfo(Lcom/iflytek/common/permission/data/PermissionInfo;)V

    .line 255
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lox;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/iflytek/common/permission/data/PermissionApp;->setAppId(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lox;->b()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/iflytek/common/permission/data/PermissionApp;->setAppName(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lox;->f()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/iflytek/common/permission/data/PermissionApp;->setAppPriority(I)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lox;->c()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/iflytek/common/permission/data/PermissionApp;->setPackageName(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lox;->d()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/iflytek/common/permission/data/PermissionApp;->setPackageVersion(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lox;->e()Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "info":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 263
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 264
    .local v7, "jsonObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 265
    const-string/jumbo v17, "permission_config"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 267
    .local v12, "permissionConfig":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 268
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v9, "permHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/common/permission/data/PermissionType;>;"
    const-string/jumbo v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 271
    .local v16, "permissions":[Ljava/lang/String;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_3

    .line 272
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_3

    .line 273
    aget-object v17, v16, v5

    const-string/jumbo v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, "maps":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 275
    const/16 v17, 0x0

    aget-object v17, v8, v17

    const/16 v18, 0x1

    aget-object v18, v8, v18

    .line 276
    invoke-static/range {v18 .. v18}, Loy;->a(Ljava/lang/String;)Lcom/iflytek/common/permission/data/PermissionType;

    move-result-object v18

    .line 275
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 280
    .end local v5    # "i":I
    .end local v8    # "maps":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v15, v12}, Lcom/iflytek/common/permission/data/PermissionInfo;->setInfoCache(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v15, v9}, Lcom/iflytek/common/permission/data/PermissionInfo;->setPermissionInfoMap(Ljava/util/HashMap;)V

    .line 283
    .end local v9    # "permHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/common/permission/data/PermissionType;>;"
    .end local v16    # "permissions":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v17, "permission_guide"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 285
    .local v4, "guideArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 286
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v14, v0, [Lcom/iflytek/common/permission/data/PermissionGuide;

    .line 287
    .local v14, "permissionGuides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 288
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 289
    .local v3, "guide":Lorg/json/JSONObject;
    new-instance v13, Lcom/iflytek/common/permission/data/PermissionGuide;

    invoke-direct {v13}, Lcom/iflytek/common/permission/data/PermissionGuide;-><init>()V

    .line 290
    .local v13, "permissionGuide":Lcom/iflytek/common/permission/data/PermissionGuide;
    const-string/jumbo v17, "permission_guidename"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuideName(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v17, "permission_guidepath"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuidePath(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v17, "permission_guideprompt"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuidePrompt(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v17, "permission_guidedesc"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuideDescription(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v17, "permission_guidepriority"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/iflytek/common/permission/data/PermissionGuide;->setGuidePriority(I)V

    .line 301
    aput-object v13, v14, v5

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 303
    .end local v3    # "guide":Lorg/json/JSONObject;
    .end local v13    # "permissionGuide":Lcom/iflytek/common/permission/data/PermissionGuide;
    :cond_5
    invoke-virtual {v10, v14}, Lcom/iflytek/common/permission/data/Permission;->setPermissionGuides([Lcom/iflytek/common/permission/data/PermissionGuide;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 309
    .end local v4    # "guideArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "info":Ljava/lang/String;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "permissionConfig":Ljava/lang/String;
    .end local v14    # "permissionGuides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    :catch_0
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "PermissionUtil"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/iflytek/common/permission/data/PermissionType;
    .locals 1
    .param p0, "permStr"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    .line 234
    :cond_0
    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Lcom/iflytek/common/permission/data/PermissionType;->FORBIDDEN:Lcom/iflytek/common/permission/data/PermissionType;

    goto :goto_0

    .line 236
    :cond_1
    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    sget-object v0, Lcom/iflytek/common/permission/data/PermissionType;->PERMIT:Lcom/iflytek/common/permission/data/PermissionType;

    goto :goto_0

    .line 239
    :cond_2
    sget-object v0, Lcom/iflytek/common/permission/data/PermissionType;->PROMPT:Lcom/iflytek/common/permission/data/PermissionType;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/common/permission/data/PermissionApp;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionApp"    # Lcom/iflytek/common/permission/data/PermissionApp;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v4

    .line 376
    :cond_1
    if-eqz p0, :cond_0

    .line 381
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageVersion()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "packageVersion":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 384
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 386
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 387
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 389
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x1

    .line 390
    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 391
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 394
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 395
    invoke-static {v6, v3}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 396
    goto :goto_0

    .line 399
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PermissionUtil"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lcom/iflytek/common/permission/data/Permission;)Z
    .locals 3
    .param p0, "permission"    # Lcom/iflytek/common/permission/data/Permission;

    .prologue
    const/4 v1, 0x0

    .line 317
    if-nez p0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v0

    .line 324
    .local v0, "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 13
    .param p0, "bContent"    # [B

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "bIn":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 52
    .local v2, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 53
    .local v8, "gOut":Ljava/util/zip/GZIPOutputStream;
    const/4 v5, 0x0

    .line 56
    .local v5, "data":[B
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .local v1, "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .local v3, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 61
    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .local v9, "gOut":Ljava/util/zip/GZIPOutputStream;
    const/16 v10, 0x2000

    :try_start_3
    new-array v5, v10, [B

    .line 62
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_3

    .line 63
    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 71
    .end local v4    # "count":I
    :catch_0
    move-exception v6

    move-object v8, v9

    .end local v9    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .line 72
    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, "gZip() error!"

    invoke-static {v10, v11, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    if-eqz v8, :cond_0

    .line 78
    :try_start_5
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 79
    const/4 v8, 0x0

    .line 85
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 87
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 88
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 89
    const/4 v2, 0x0

    .line 95
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 97
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 98
    const/4 v0, 0x0

    .line 105
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    return-object v5

    .line 65
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "count":I
    .restart local v9    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 67
    sget-object v10, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_4

    .line 68
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 70
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v5

    .line 76
    if-eqz v9, :cond_5

    .line 78
    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 79
    const/4 v8, 0x0

    .line 85
    .end local v9    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :goto_5
    if-eqz v3, :cond_6

    .line 87
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 88
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 89
    const/4 v2, 0x0

    .line 95
    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    :goto_6
    if-eqz v1, :cond_c

    .line 97
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 98
    const/4 v0, 0x0

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 80
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v7

    .line 81
    .local v7, "e2":Ljava/io/IOException;
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "e2":Ljava/io/IOException;
    :cond_5
    move-object v8, v9

    .end local v9    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    goto :goto_5

    .line 90
    :catch_2
    move-exception v7

    .line 91
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "e2":Ljava/io/IOException;
    :cond_6
    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 99
    :catch_3
    move-exception v7

    .line 100
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 101
    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 80
    .end local v4    # "count":I
    .end local v7    # "e2":Ljava/io/IOException;
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 81
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 90
    .end local v7    # "e2":Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 91
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 99
    .end local v7    # "e2":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 100
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 73
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e2":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 74
    .local v6, "e":Ljava/lang/NumberFormatException;
    :goto_7
    :try_start_c
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, "gZip() error!"

    invoke-static {v10, v11, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 76
    if-eqz v8, :cond_7

    .line 78
    :try_start_d
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 79
    const/4 v8, 0x0

    .line 85
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 87
    :try_start_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 88
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 89
    const/4 v2, 0x0

    .line 95
    :cond_8
    :goto_9
    if-eqz v0, :cond_2

    .line 97
    :try_start_f
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 98
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 80
    :catch_8
    move-exception v7

    .line 81
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 90
    .end local v7    # "e2":Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 91
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 99
    .end local v7    # "e2":Ljava/io/IOException;
    :catch_a
    move-exception v7

    .line 100
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v10, "PermissionUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 76
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_a
    if-eqz v8, :cond_9

    .line 78
    :try_start_10
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 79
    const/4 v8, 0x0

    .line 85
    :cond_9
    :goto_b
    if-eqz v2, :cond_a

    .line 87
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 88
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 89
    const/4 v2, 0x0

    .line 95
    :cond_a
    :goto_c
    if-eqz v0, :cond_b

    .line 97
    :try_start_12
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 98
    const/4 v0, 0x0

    .line 101
    :cond_b
    :goto_d
    throw v10

    .line 80
    :catch_b
    move-exception v7

    .line 81
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 90
    .end local v7    # "e2":Ljava/io/IOException;
    :catch_c
    move-exception v7

    .line 91
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 99
    .end local v7    # "e2":Ljava/io/IOException;
    :catch_d
    move-exception v7

    .line 100
    .restart local v7    # "e2":Ljava/io/IOException;
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 76
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v7    # "e2":Ljava/io/IOException;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_a

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v10

    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_a

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_a

    .line 73
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    :catch_e
    move-exception v6

    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_7

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catch_f
    move-exception v6

    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_7

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "gOut":Ljava/util/zip/GZIPOutputStream;
    :catch_10
    move-exception v6

    move-object v8, v9

    .end local v9    # "gOut":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gOut":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_7

    .line 71
    :catch_11
    move-exception v6

    goto/16 :goto_1

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    :catch_12
    move-exception v6

    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    :catch_13
    move-exception v6

    move-object v2, v3

    .end local v3    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "count":I
    :cond_c
    move-object v0, v1

    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4
.end method

.method public static final a([B[B)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "keyData"    # [B

    .prologue
    .line 175
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    array-length v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_2

    .line 176
    :cond_0
    const/4 p0, 0x0

    .line 181
    .end local p0    # "data":[B
    :cond_1
    return-object p0

    .line 178
    .restart local p0    # "data":[B
    :cond_2
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 179
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/iflytek/common/permission/data/Permission;)Ljava/lang/String;
    .locals 10
    .param p0, "permission"    # Lcom/iflytek/common/permission/data/Permission;

    .prologue
    const/4 v7, 0x0

    .line 332
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v8

    if-nez v8, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v7

    .line 337
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionInfo()Lcom/iflytek/common/permission/data/PermissionInfo;

    move-result-object v6

    .line 338
    .local v6, "permissionInfo":Lcom/iflytek/common/permission/data/PermissionInfo;
    invoke-virtual {p0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionGuides()[Lcom/iflytek/common/permission/data/PermissionGuide;

    move-result-object v5

    .line 339
    .local v5, "permissionGuides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 340
    .local v4, "jsonObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/iflytek/common/permission/data/PermissionInfo;->getInfoCache()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 341
    const-string/jumbo v8, "permission_config"

    .line 342
    invoke-virtual {v6}, Lcom/iflytek/common/permission/data/PermissionInfo;->getInfoCache()Ljava/lang/String;

    move-result-object v9

    .line 341
    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    :cond_2
    if-eqz v5, :cond_4

    array-length v8, v5

    if-lez v8, :cond_4

    .line 345
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 346
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_3

    .line 347
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v1, "guideObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "permission_guidename"

    aget-object v9, v5, v2

    .line 349
    invoke-virtual {v9}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuideName()Ljava/lang/String;

    move-result-object v9

    .line 348
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string/jumbo v8, "permission_guidepath"

    aget-object v9, v5, v2

    .line 351
    invoke-virtual {v9}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuidePath()Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string/jumbo v8, "permission_guidedesc"

    aget-object v9, v5, v2

    .line 353
    invoke-virtual {v9}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuideDescription()Ljava/lang/String;

    move-result-object v9

    .line 352
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string/jumbo v8, "permission_guideprompt"

    aget-object v9, v5, v2

    .line 355
    invoke-virtual {v9}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuidePrompt()Ljava/lang/String;

    move-result-object v9

    .line 354
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string/jumbo v8, "permission_guidepriority"

    aget-object v9, v5, v2

    .line 357
    invoke-virtual {v9}, Lcom/iflytek/common/permission/data/PermissionGuide;->getGuidePriority()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 356
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 361
    .end local v1    # "guideObject":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v8, "permission_guide"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 365
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "permissionGuides":[Lcom/iflytek/common/permission/data/PermissionGuide;
    .end local v6    # "permissionInfo":Lcom/iflytek/common/permission/data/PermissionInfo;
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "PermissionUtil"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static b([B)[B
    .locals 14
    .param p0, "bContent"    # [B

    .prologue
    .line 116
    array-length v11, p0

    mul-int/lit8 v11, v11, 0x64

    new-array v1, v11, [B

    .line 117
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 118
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    const/4 v8, 0x0

    .line 119
    .local v8, "pIn":Ljava/util/zip/GZIPInputStream;
    const/4 v6, 0x0

    .line 120
    .local v6, "objIn":Ljava/io/DataInputStream;
    const/4 v10, 0x0

    .line 122
    .local v10, "trueData":[B
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .local v4, "in":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .local v9, "pIn":Ljava/util/zip/GZIPInputStream;
    :try_start_2
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 125
    .end local v6    # "objIn":Ljava/io/DataInputStream;
    .local v7, "objIn":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 126
    .local v5, "len":I
    const/4 v0, 0x0

    .line 127
    .local v0, "count":I
    :goto_0
    add-int/lit16 v11, v5, 0x400

    :try_start_3
    invoke-virtual {v7, v1, v5, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    const/4 v11, -0x1

    if-eq v0, v11, :cond_0

    .line 128
    add-int/2addr v5, v0

    goto :goto_0

    .line 130
    :cond_0
    new-array v10, v5, [B

    .line 131
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v11, v10, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 135
    if-eqz v7, :cond_2

    .line 137
    :try_start_4
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 138
    const/4 v6, 0x0

    .line 144
    .end local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v6    # "objIn":Ljava/io/DataInputStream;
    :goto_1
    if-eqz v4, :cond_3

    .line 146
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 147
    const/4 v3, 0x0

    .line 153
    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    :goto_2
    if-eqz v9, :cond_9

    .line 155
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 156
    const/4 v8, 0x0

    .line 163
    .end local v0    # "count":I
    .end local v5    # "len":I
    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    :cond_1
    :goto_3
    return-object v10

    .line 139
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v6    # "objIn":Ljava/io/DataInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "count":I
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    move-object v6, v7

    .end local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v6    # "objIn":Ljava/io/DataInputStream;
    goto :goto_1

    .line 148
    :catch_1
    move-exception v2

    .line 149
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 157
    :catch_2
    move-exception v2

    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 159
    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    goto :goto_3

    .line 132
    .end local v0    # "count":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "len":I
    :catch_3
    move-exception v2

    .line 133
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, "unGZip() error!"

    invoke-static {v11, v12, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 135
    if-eqz v6, :cond_4

    .line 137
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 138
    const/4 v6, 0x0

    .line 144
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 146
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 147
    const/4 v3, 0x0

    .line 153
    :cond_5
    :goto_6
    if-eqz v8, :cond_1

    .line 155
    :try_start_a
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 156
    const/4 v8, 0x0

    goto :goto_3

    .line 139
    :catch_4
    move-exception v2

    .line 140
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 148
    :catch_5
    move-exception v2

    .line 149
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 157
    :catch_6
    move-exception v2

    .line 158
    const-string/jumbo v11, "PermissionUtil"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v6, :cond_6

    .line 137
    :try_start_b
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 138
    const/4 v6, 0x0

    .line 144
    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    .line 146
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 147
    const/4 v3, 0x0

    .line 153
    :cond_7
    :goto_9
    if-eqz v8, :cond_8

    .line 155
    :try_start_d
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 156
    const/4 v8, 0x0

    .line 159
    :cond_8
    :goto_a
    throw v11

    .line 139
    :catch_7
    move-exception v2

    .line 140
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "PermissionUtil"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 148
    .end local v2    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 149
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "PermissionUtil"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 158
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "PermissionUtil"

    const-string/jumbo v13, ""

    invoke-static {v12, v13, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v6    # "objIn":Ljava/io/DataInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "count":I
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v6    # "objIn":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 132
    .end local v0    # "count":I
    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v5    # "len":I
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catch_b
    move-exception v2

    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4

    .end local v3    # "in":Ljava/io/ByteArrayInputStream;
    .end local v6    # "objIn":Ljava/io/DataInputStream;
    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "count":I
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :catch_c
    move-exception v2

    move-object v6, v7

    .end local v7    # "objIn":Ljava/io/DataInputStream;
    .restart local v6    # "objIn":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "in":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4

    .end local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    :cond_9
    move-object v8, v9

    .end local v9    # "pIn":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "pIn":Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_3
.end method

.method public static c(Lcom/iflytek/common/permission/data/Permission;)Lox;
    .locals 3
    .param p0, "permission"    # Lcom/iflytek/common/permission/data/Permission;

    .prologue
    const/4 v2, 0x0

    .line 407
    if-nez p0, :cond_0

    move-object v1, v2

    .line 424
    :goto_0
    return-object v1

    .line 411
    :cond_0
    new-instance v1, Lox;

    invoke-direct {v1}, Lox;-><init>()V

    .line 412
    .local v1, "permissionSql":Lox;
    invoke-virtual {p0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v0

    .line 413
    .local v0, "permissionApp":Lcom/iflytek/common/permission/data/PermissionApp;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 414
    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lox;->a(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lox;->b(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Lox;->a(I)V

    .line 419
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lox;->d(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Lcom/iflytek/common/permission/data/PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lox;->c(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/iflytek/common/permission/data/Permission;->getPermissionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lox;->f(Ljava/lang/String;)V

    .line 422
    invoke-static {p0}, Loy;->b(Lcom/iflytek/common/permission/data/Permission;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lox;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
