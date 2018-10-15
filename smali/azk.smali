.class public final Lazk;
.super Ljava/lang/Object;
.source "IflyHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "mmp"

    sput-object v0, Lazk;->a:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    .line 57
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lazk;->b:Ljava/util/regex/Pattern;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual {v0, v1}, Lil;->d(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-static {p0}, Lhl;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 268
    const/4 v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    invoke-static {p0}, Lhl;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccVERSION_CODE"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 270
    const/4 v0, 0x2

    goto :goto_0

    .line 272
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 497
    invoke-static {p0}, Lhl;->d(Landroid/content/Context;)I

    move-result v0

    .line 498
    .local v0, "width":I
    mul-int v1, v0, p1

    div-int/lit16 v1, v1, 0x2d0

    return v1
.end method

.method public static a(Landroid/content/Context;Laau;)Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Laau;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 399
    const/4 v4, 0x0

    .line 400
    .local v4, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-nez p1, :cond_0

    move-object v5, v4

    .line 420
    .end local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    .local v5, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :goto_0
    return-object v5

    .line 404
    .end local v5    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_0
    invoke-virtual {p1}, Laau;->c()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 405
    invoke-virtual {p1}, Laau;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v8, v6, :cond_1

    .line 406
    invoke-virtual {p1}, Laau;->d()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 407
    invoke-virtual {p1}, Laau;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v8, v6, :cond_1

    .line 409
    invoke-virtual {p1}, Laau;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Laau;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 411
    .local v1, "number":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v2, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 413
    .local v3, "numberTypeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const v6, 0x7f0c0072

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v4, Lcom/iflytek/base/contacts/entities/ContactSet;

    .end local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    const/4 v6, 0x0

    invoke-direct {v4, v0, v6}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .restart local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v4, v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 417
    invoke-virtual {v4, v3}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumberTypeHashMap(Ljava/util/HashMap;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "numberTypeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v5, v4

    .line 420
    .end local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v5    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/iflytek/base/contacts/entities/ContactSet;"
        }
    .end annotation

    .prologue
    .local p1, "pNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "pNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 432
    const/4 v4, 0x0

    .line 433
    .local v4, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v5, v4

    .line 451
    .end local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    .local v5, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :goto_0
    return-object v5

    .line 437
    .end local v5    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v8, v6, :cond_2

    .line 438
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v8, v6, :cond_2

    .line 440
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    .local v1, "number":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v2, "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 444
    .local v3, "numberTypeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    const v6, 0x7f0c0072

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v4, Lcom/iflytek/base/contacts/entities/ContactSet;

    .end local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    const/4 v6, 0x0

    invoke-direct {v4, v0, v6}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .restart local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v4, v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 448
    invoke-virtual {v4, v3}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumberTypeHashMap(Ljava/util/HashMap;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "numberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "numberTypeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object v5, v4

    .line 451
    .end local v4    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v5    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 14
    .param p0, "size"    # J

    .prologue
    const-wide/16 v12, 0x400

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 552
    const-wide/16 v4, 0x400

    .line 553
    .local v4, "kb":J
    mul-long v6, v4, v12

    .line 554
    .local v6, "mb":J
    mul-long v2, v6, v12

    .line 556
    .local v2, "gb":J
    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    .line 557
    const-string/jumbo v1, "%.1f GB"

    new-array v8, v9, [Ljava/lang/Object;

    long-to-float v9, p0

    long-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 565
    :goto_0
    return-object v1

    .line 558
    :cond_0
    cmp-long v1, p0, v6

    if-ltz v1, :cond_2

    .line 559
    long-to-float v1, p0

    long-to-float v8, v6

    div-float v0, v1, v8

    .line 560
    .local v0, "f":F
    cmpl-float v1, v0, v10

    if-lez v1, :cond_1

    const-string/jumbo v1, "%.0f MB"

    :goto_1
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "%.1f MB"

    goto :goto_1

    .line 561
    .end local v0    # "f":F
    :cond_2
    cmp-long v1, p0, v4

    if-ltz v1, :cond_4

    .line 562
    long-to-float v1, p0

    long-to-float v8, v4

    div-float v0, v1, v8

    .line 563
    .restart local v0    # "f":F
    cmpl-float v1, v0, v10

    if-lez v1, :cond_3

    const-string/jumbo v1, "%.0f KB"

    :goto_2
    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "%.1f KB"

    goto :goto_2

    .line 565
    .end local v0    # "f":F
    :cond_4
    const-string/jumbo v1, "%d B"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isCover"    # Z

    .prologue
    .line 130
    const/4 v2, 0x0

    .line 132
    .local v2, "fOut":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 133
    .local v4, "file":Ljava/io/File;
    :try_start_0
    const-string/jumbo v9, ""

    .line 134
    .local v9, "url":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 135
    .local v6, "fileDstPath":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->checkSDCardStatus()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ViaFly"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lazk;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ViaFly"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v7, "homeDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 146
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 149
    :cond_0
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ViaFly"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lazk;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v8, "mmpDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 154
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 168
    .end local v7    # "homeDir":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz p3, :cond_3

    .line 172
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 174
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .local v3, "fOut":Ljava/io/FileOutputStream;
    :try_start_2
    const-string/jumbo v10, ".jpg"

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 177
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x4b

    invoke-virtual {v0, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 181
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 185
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "?rc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 187
    const-string/jumbo v10, "IflyHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "saveDrawableToFile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " success, save path is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    if-eqz v2, :cond_4

    .line 196
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 199
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileDstPath":Ljava/lang/String;
    .end local v8    # "mmpDir":Ljava/io/File;
    .end local v9    # "url":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v9

    .line 158
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fileDstPath":Ljava/lang/String;
    .restart local v9    # "url":Ljava/lang/String;
    .restart local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lazk;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lazk;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v8    # "mmpDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 164
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 190
    .end local v6    # "fileDstPath":Ljava/lang/String;
    .end local v8    # "mmpDir":Ljava/io/File;
    .end local v9    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 191
    .end local p2    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string/jumbo v10, "IflyHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "saveDrawableToFile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    const/4 v9, 0x0

    .line 194
    if-eqz v2, :cond_4

    .line 196
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 197
    :catch_1
    move-exception v1

    .line 198
    const-string/jumbo v10, "IflyHelper"

    const-string/jumbo v11, "saveDrawableToFile, close error"

    invoke-static {v10, v11, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileDstPath":Ljava/lang/String;
    .restart local v8    # "mmpDir":Ljava/io/File;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_6
    :try_start_8
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v0, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 190
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 197
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_3
    move-exception v1

    .line 198
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "IflyHelper"

    const-string/jumbo v11, "saveDrawableToFile, close error"

    invoke-static {v10, v11, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileDstPath":Ljava/lang/String;
    .end local v8    # "mmpDir":Ljava/io/File;
    .end local v9    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v2, :cond_7

    .line 196
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 199
    :cond_7
    :goto_5
    throw v10

    .line 197
    :catch_4
    move-exception v1

    .line 198
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "IflyHelper"

    const-string/jumbo v12, "saveDrawableToFile, close error"

    invoke-static {v11, v12, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileDstPath":Ljava/lang/String;
    .restart local v8    # "mmpDir":Ljava/io/File;
    .restart local v9    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 190
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 212
    const-string/jumbo v4, "IflyHelper"

    const-string/jumbo v5, "the input parameter of jsonCharFilter is null"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string/jumbo v2, ""

    .line 256
    :goto_0
    return-object v2

    .line 216
    :cond_0
    const-string/jumbo v4, "IflyHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "jsonCharFilter begin, sourceStr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 250
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :sswitch_0
    const-string/jumbo v4, "\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 226
    :sswitch_1
    const-string/jumbo v4, "\\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 229
    :sswitch_2
    const-string/jumbo v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 232
    :sswitch_3
    const-string/jumbo v4, "\\/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 235
    :sswitch_4
    const-string/jumbo v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 238
    :sswitch_5
    const-string/jumbo v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 241
    :sswitch_6
    const-string/jumbo v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 244
    :sswitch_7
    const-string/jumbo v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 247
    :sswitch_8
    const-string/jumbo v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 254
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v4, "IflyHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "jsonCharFilter end, resultStr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_4
        0x9 -> :sswitch_8
        0xa -> :sswitch_6
        0xc -> :sswitch_5
        0xd -> :sswitch_7
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
        0x2f -> :sswitch_3
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 572
    const/4 v2, 0x0

    .line 576
    .local v2, "fileName":Ljava/lang/String;
    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 577
    invoke-static {p1}, Lazk;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 578
    if-eqz v2, :cond_0

    .line 579
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 580
    .local v3, "index":I
    if-lez v3, :cond_0

    .line 581
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 587
    .end local v3    # "index":I
    :cond_0
    if-nez v2, :cond_1

    .line 590
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "decodeUrl":Ljava/lang/String;
    const-string/jumbo v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 593
    .restart local v3    # "index":I
    if-le v3, v5, :cond_2

    .line 594
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lazk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    .end local v0    # "decodeUrl":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_1
    :goto_0
    return-object v2

    .line 596
    .restart local v0    # "decodeUrl":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_2
    invoke-static {v0}, Lazk;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 598
    .end local v0    # "decodeUrl":Ljava/lang/String;
    .end local v3    # "index":I
    :catch_0
    move-exception v1

    .line 599
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 600
    .restart local v3    # "index":I
    if-le v3, v5, :cond_3

    .line 601
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lazk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 603
    :cond_3
    invoke-static {p0}, Lazk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_1

    .line 462
    const/4 v1, 0x0

    .line 469
    :cond_0
    return-object v1

    .line 465
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 466
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 467
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.iflytek.cmcc.action.LINGXI_SETTING"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lil;->a(Ljava/lang/String;Z)V

    .line 477
    if-ne p2, v2, :cond_0

    .line 478
    .local v2, "value":I
    :goto_0
    const-string/jumbo v4, "CALL_NOTIFY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    const-string/jumbo v4, "com.iflytek.cmcc.action.CALLOPENSTATE"

    invoke-static {p0, v4, v2, v3}, Lip;->a(Landroid/content/Context;Ljava/lang/String;IZ)I

    .line 481
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 482
    const-string/jumbo v4, "SMS_NOTIFY"

    .line 483
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "SMS_NOTIFY"

    invoke-virtual {v5, v6, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v3

    .line 482
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    :goto_1
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Landroid/content/Intent;)V

    .line 494
    return-void

    .end local v2    # "value":I
    :cond_0
    move v2, v3

    .line 477
    goto :goto_0

    .line 486
    .restart local v2    # "value":I
    :cond_1
    const-string/jumbo v4, "com.iflytek.cmcc.action.CALLOPENSTATE"

    invoke-static {p0, v4, v2, v3}, Lip;->a(Landroid/content/Context;Ljava/lang/String;IZ)I

    .line 487
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "CALL_NOTIFY"

    invoke-virtual {v4, v5, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 489
    .local v1, "temp":Z
    const-string/jumbo v3, "CALL_NOTIFY"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 12
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 641
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "answerString":Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 646
    .local v6, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    const-string/jumbo v5, "((http|ftp|https)://)(([a-zA-Z0-9\\._-]+\\.[a-zA-Z]{2,6})|([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}))(:[0-9]{1,4})*(/[a-zA-Z0-9\\&%_\\./-~-]*)?|(([a-zA-Z0-9\\._-]+\\.[a-zA-Z]{2,6})|([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}))(:[0-9]{1,4})*(/[a-zA-Z0-9\\&%_\\./-~-]*)?"

    .line 651
    .local v5, "patternString":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 653
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 655
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 657
    const-string/jumbo v9, "IflyHelper"

    const-string/jumbo v10, "find matcher"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 661
    .local v7, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 663
    .local v2, "end":I
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 665
    .local v8, "url":Ljava/lang/String;
    const-string/jumbo v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "www"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 667
    :cond_0
    const-string/jumbo v9, "IflyHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "url "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v1, Lafa;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9, v8}, Lafa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 670
    .local v1, "customUrlSpan":Lafa;
    const/16 v9, 0x11

    invoke-virtual {v6, v1, v7, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 676
    const-string/jumbo v9, "\u6253\u5f00\u94fe\u63a5"

    invoke-virtual {v6, v7, v2, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 678
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    invoke-static {p0}, Lazk;->a(Landroid/widget/TextView;)V

    .line 684
    .end local v1    # "customUrlSpan":Lafa;
    :cond_1
    const-string/jumbo v9, "IflyHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "spannableStringBuilder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v2    # "end":I
    .end local v7    # "start":I
    .end local v8    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 687
    :cond_2
    const-string/jumbo v9, "IflyHelper"

    const-string/jumbo v10, "not find matcher, return"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string/jumbo v9, "IflyHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "spannableStringBuilder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activitySimpleName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 366
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v5, v6

    .line 381
    :cond_1
    :goto_0
    return v5

    .line 369
    :cond_2
    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 370
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 371
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 372
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 373
    .local v2, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "runPackage":Ljava/lang/String;
    iget-object v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "activity":Ljava/lang/String;
    const-string/jumbo v7, "IflyHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isActivityRunFront(), topPackage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", topActivity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string/jumbo v7, "com.iflytek.cmcc"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    .line 377
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .end local v0    # "activity":Ljava/lang/String;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "runPackage":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 381
    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 502
    invoke-static {p0}, Lhl;->e(Landroid/content/Context;)I

    move-result v0

    .line 503
    .local v0, "width":I
    mul-int v1, v0, p1

    div-int/lit16 v1, v1, 0x500

    return v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 281
    .local v2, "pid":I
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 283
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 284
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 285
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 288
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 507
    const/4 v3, 0x0

    .line 509
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 513
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 514
    .local v2, "mGetMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mGetMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 515
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 517
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 528
    const-string/jumbo v3, "IflyHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHost(), url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    :goto_0
    return-object v2

    .line 534
    :cond_0
    :try_start_0
    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 538
    :goto_1
    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 539
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 540
    .end local v1    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v3, "IflyHelper"

    const-string/jumbo v4, "get host exception"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 535
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 295
    const-string/jumbo v2, "com.iflytek.cmcc"

    .line 296
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "activity"

    .line 297
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 299
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "currentRunningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 301
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 302
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 307
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mobileNum"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 699
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-object p0

    .line 703
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 705
    .local v0, "length_num":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, -0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 707
    add-int/lit8 v0, v0, 0x1

    .line 709
    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x9

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, -0x9

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 715
    add-int/lit8 v0, v0, 0x1

    .line 717
    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0xd

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, -0xd

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    const-string/jumbo v1, "keyguard"

    .line 319
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 320
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 613
    :try_start_0
    sget-object v2, Lazk;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 614
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 620
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :goto_0
    return-object v2

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "IflyHelper"

    const-string/jumbo v3, "parseContentDisposition exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 343
    if-nez p0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v4

    .line 346
    :cond_1
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 347
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 348
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 349
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 350
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "runPackage":Ljava/lang/String;
    const-string/jumbo v6, "IflyHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isAppRunFront(), topPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string/jumbo v6, "com.iflytek.cmcc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 353
    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, "title":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 626
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 627
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 628
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 632
    .end local v0    # "index":I
    :cond_0
    return-object v1
.end method
