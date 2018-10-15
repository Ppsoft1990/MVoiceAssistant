.class public Laqc;
.super Ljava/lang/Object;
.source "MusicCoverHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqc$a;
    }
.end annotation


# direct methods
.method static synthetic a(I)Lbcu;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 33
    invoke-static {p0}, Laqc;->b(I)Lbcu;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "localPath"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laqc$4;

    invoke-direct {v1, p0, p2, p1}, Laqc$4;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    return-void
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Laqc;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 42
    return-void
.end method

.method public static a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 50
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    invoke-static {p2}, Laqc;->b(I)Lbcu;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 51
    return-void
.end method

.method public static a(Landroid/widget/RemoteViews;Ljava/lang/String;Laqc$a;)V
    .locals 5
    .param p0, "imageView"    # Landroid/widget/RemoteViews;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Laqc$a;

    .prologue
    const v4, 0x7f020129

    const v3, 0x7f0b053c

    .line 76
    if-eqz p1, :cond_2

    .line 78
    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v2

    invoke-virtual {v2}, Lbcv;->b()Lbce;

    move-result-object v2

    invoke-static {p1, v2}, Lbdb;->a(Ljava/lang/String;Lbce;)Ljava/io/File;

    move-result-object v1

    .line 79
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbab;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 100
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 84
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 87
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 88
    new-instance v2, Laqc$2;

    invoke-direct {v2, p2}, Laqc$2;-><init>(Laqc$a;)V

    invoke-static {p1, v2}, Laqc;->b(Ljava/lang/String;Laqc$a;)V

    goto :goto_0

    .line 98
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Laqc$a;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Laqc$a;

    .prologue
    .line 59
    new-instance v0, Laqc$1;

    invoke-direct {v0, p1}, Laqc$1;-><init>(Laqc$a;)V

    invoke-static {p0, v0}, Laqc;->b(Ljava/lang/String;Laqc$a;)V

    .line 67
    return-void
.end method

.method private static b(I)Lbcu;
    .locals 3
    .param p0, "resId"    # I

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    const p0, 0x7f020128

    .line 164
    :cond_0
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 166
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 170
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    .line 172
    invoke-virtual {v1, p0}, Lbcu$a;->a(I)Lbcu$a;

    move-result-object v1

    .line 173
    invoke-virtual {v1, p0}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 174
    invoke-virtual {v1, p0}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 175
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 177
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method private static b(Ljava/lang/String;Laqc$a;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Laqc$a;

    .prologue
    .line 104
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string/jumbo v0, "MusicCoverHelper"

    const-string/jumbo v1, " no sdcard "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1}, Laqc$a;->a()V

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Laqc$3;

    invoke-direct {v1, p0, p1}, Laqc$3;-><init>(Ljava/lang/String;Laqc$a;)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0
.end method
