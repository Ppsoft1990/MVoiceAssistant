.class public Lcom/iflytek/viafly/voicenote/SharePicNoteView;
.super Landroid/app/Activity;
.source "SharePicNoteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string/jumbo v0, "SharePicNoteView"

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "picName"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "getImg()"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-nez p1, :cond_0

    .line 219
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "view=null | return!"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v6, 0x0

    .line 280
    :goto_0
    return-object v6

    .line 223
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 224
    :cond_1
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "path or picName = null | return!"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v6, 0x0

    goto :goto_0

    .line 229
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 231
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_3

    .line 232
    const/4 v6, 0x0

    goto :goto_0

    .line 235
    .end local v2    # "dir":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 236
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "getScreenShot()"

    invoke-static {v9, v10, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    const/4 v6, 0x0

    goto :goto_0

    .line 240
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dir":Ljava/io/File;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "pathFile":Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v7, "picFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 245
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 246
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "delete fail"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 254
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 255
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 257
    .local v8, "width":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 259
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 261
    if-eqz v0, :cond_5

    .line 263
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 264
    .local v5, "out":Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x4b

    invoke-virtual {v0, v9, v10, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 265
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pic file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " output ok."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 272
    :catch_1
    move-exception v3

    .line 273
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "getScreenShot()"

    invoke-static {v9, v10, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 249
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "height":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "picFile":Ljava/io/File;
    .end local v8    # "width":I
    :catch_2
    move-exception v3

    .line 250
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "getScreenShot()"

    invoke-static {v9, v10, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 267
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "height":I
    .restart local v7    # "picFile":Ljava/io/File;
    .restart local v8    # "width":I
    :catch_3
    move-exception v3

    .line 268
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "getScreenShot()"

    invoke-static {v9, v10, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    :try_start_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 280
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 272
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 273
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "getScreenShot()"

    invoke-static {v9, v10, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 270
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 271
    :try_start_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 274
    :goto_2
    throw v9

    .line 272
    :catch_5
    move-exception v3

    .line 273
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v11, "getScreenShot()"

    invoke-static {v10, v11, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 278
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v10, "screenShot get fail!"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 79
    const v0, 0x7f0b084d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->b:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0b084e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->c:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0b084f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->d:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0b0852

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->e:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->e:Landroid/widget/TextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->e:Landroid/widget/TextView;

    const v1, 0x7f0202d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 91
    const v0, 0x7f0b0856

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->f:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0b0855

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->g:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0b0854

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->h:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f0b0853

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->i:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method private a(I)V
    .locals 4
    .param p1, "selected"    # I

    .prologue
    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v0, "share_param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "switchBg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v1, "d_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v1

    const-string/jumbo v2, "FT89404"

    .line 205
    invoke-virtual {v1, v2, v0}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 206
    return-void
.end method

.method private a(II)V
    .locals 3
    .param p1, "textId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->f:Landroid/widget/ImageView;

    const v1, 0x7f0202dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->g:Landroid/widget/ImageView;

    const v1, 0x7f0202dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->h:Landroid/widget/ImageView;

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->i:Landroid/widget/ImageView;

    const v1, 0x7f0202df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    return-void
.end method

.method private c()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x400

    .line 289
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 290
    .local v6, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->l:Ljava/lang/String;

    .line 291
    const-string/jumbo v8, "mounted"

    iput-object v8, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->m:Ljava/lang/String;

    .line 293
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 294
    .local v7, "statFs":Landroid/os/StatFs;
    iget-object v8, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->l:Ljava/lang/String;

    iget-object v9, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 296
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 298
    .local v0, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v2, v8

    .line 299
    .local v2, "blockavailable":J
    mul-long v8, v0, v2

    div-long/2addr v8, v10

    div-long v4, v8, v10

    .line 300
    .local v4, "blockavailableTotal":J
    iget-object v8, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "blockavailableTotal = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v0    # "blockSize":J
    .end local v2    # "blockavailable":J
    .end local v4    # "blockavailableTotal":J
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0c0300

    const v9, 0x7f0b0850

    const-wide v6, 0x3ff3333333333333L    # 1.2

    const v4, 0x7f0202e0

    const/4 v8, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->finish()V

    goto :goto_0

    .line 118
    :pswitch_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v1, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "d_type"

    const-string/jumbo v4, "saveImg"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v3

    const-string/jumbo v4, "FT89404"

    .line 121
    invoke-virtual {v3, v4, v1}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 123
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-direct {p0, v5, v8}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(II)V

    .line 125
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v4, "SD card is not mounted -> return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->c()J

    move-result-wide v4

    long-to-double v4, v4

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_1

    .line 129
    const v3, 0x7f0c0308

    invoke-direct {p0, v3, v8}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(II)V

    .line 130
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v4, "SD card no space -> return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    sget-object v4, Lnk;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "share_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->j:Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    const v3, 0x7f0c0209

    invoke-direct {p0, v3, v8}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(II)V

    goto/16 :goto_0

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPicUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c02ef

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 143
    .end local v1    # "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v2, "share_param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "d_type"

    const-string/jumbo v4, "share"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v3, "d_category"

    const-string/jumbo v4, "touch"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v3

    const-string/jumbo v4, "FT89403"

    .line 147
    invoke-virtual {v3, v4, v2}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 149
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 150
    invoke-direct {p0, v5, v8}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(II)V

    .line 151
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v4, "SD card is not mounted -> return null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 154
    :cond_3
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->c()J

    move-result-wide v4

    long-to-double v4, v4

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_4

    .line 155
    const v3, 0x7f0c0308

    invoke-direct {p0, v3, v8}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(II)V

    .line 156
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    const-string/jumbo v4, "SD card no space -> return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    :cond_4
    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    sget-object v4, Lnk;->b:Ljava/lang/String;

    const-string/jumbo v5, "share.png"

    invoke-direct {p0, v3, v4, v5}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->j:Ljava/lang/String;

    .line 160
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->j:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 161
    const v3, 0x7f0c0208

    invoke-direct {p0, v3, v8}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(II)V

    goto/16 :goto_0

    .line 164
    :cond_5
    const v3, 0x7f0c0207

    invoke-direct {p0, v3, v8}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(II)V

    .line 165
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 166
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->imagePath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 167
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lazu;->a(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    goto/16 :goto_0

    .line 171
    .end local v0    # "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .end local v2    # "share_param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_4
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->b()V

    .line 172
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 173
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->e:Landroid/widget/TextView;

    const v4, 0x7f0202d4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 174
    invoke-direct {p0, v8}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(I)V

    goto/16 :goto_0

    .line 177
    :pswitch_5
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->b()V

    .line 178
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 179
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->e:Landroid/widget/TextView;

    const v4, 0x7f0202d5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 180
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(I)V

    goto/16 :goto_0

    .line 183
    :pswitch_6
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->b()V

    .line 184
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->h:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 185
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->e:Landroid/widget/TextView;

    const v4, 0x7f0202d6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 186
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(I)V

    goto/16 :goto_0

    .line 189
    :pswitch_7
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->b()V

    .line 190
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 191
    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->e:Landroid/widget/TextView;

    const v4, 0x7f0202d7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 192
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a(I)V

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b084d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "shareText"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->k:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get ShareNoteContent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const v1, 0x7f03016d

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->a()V

    .line 70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 72
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 74
    .local v0, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/SharePicNoteView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 76
    .end local v0    # "statusBarColor":I
    :cond_0
    return-void
.end method
