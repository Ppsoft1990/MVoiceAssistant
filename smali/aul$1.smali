.class Laul$1;
.super Ljava/lang/Object;
.source "SchedulePictureHelper.java"

# interfaces
.implements Lbdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laul;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Laul;


# direct methods
.method constructor <init>(Laul;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Laul;

    .prologue
    .line 81
    iput-object p1, p0, Laul$1;->c:Laul;

    iput p2, p0, Laul$1;->a:I

    iput-object p3, p0, Laul$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 135
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 18
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    if-nez p3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string/jumbo v2, "SchedulePictureHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " &&& "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/high16 v14, 0x3f800000    # 1.0f

    .line 99
    .local v14, "scale":F
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Laul$1;->a:I

    if-ne v2, v3, :cond_4

    .line 100
    const-wide v2, 0x4060400000000000L    # 130.0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v16

    div-double/2addr v2, v4

    double-to-float v14, v2

    .line 104
    :cond_2
    :goto_1
    const-string/jumbo v2, "SchedulePictureHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scale is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 107
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object/from16 v2, p3

    .line 107
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 109
    .local v11, "newBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v2, "SchedulePictureHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downLoad iamge "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Laul$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Laul$1;->b:Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v9, "dirFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 113
    .local v12, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 115
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 117
    :cond_3
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .local v13, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v11, v2, v3, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    if-eqz v13, :cond_6

    .line 124
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v13

    .line 127
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 101
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "dirFile":Ljava/io/File;
    .end local v11    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Laul$1;->a:I

    if-ne v2, v3, :cond_2

    .line 102
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v16

    div-double/2addr v2, v4

    double-to-float v14, v2

    goto/16 :goto_1

    .line 125
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "dirFile":Ljava/io/File;
    .restart local v11    # "newBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 126
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v2, "SchedulePictureHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v12, v13

    .line 127
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 119
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 120
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v2, "SchedulePictureHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    if-eqz v12, :cond_0

    .line 124
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 125
    :catch_2
    move-exception v10

    .line 126
    const-string/jumbo v2, "SchedulePictureHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 122
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v12, :cond_5

    .line 124
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    :cond_5
    :goto_4
    throw v2

    .line 125
    :catch_3
    move-exception v10

    .line 126
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "SchedulePictureHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 122
    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v12, v13

    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 119
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v10

    move-object v12, v13

    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :cond_6
    move-object v12, v13

    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 90
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 85
    return-void
.end method
