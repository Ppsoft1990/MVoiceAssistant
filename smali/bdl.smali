.class public Lbdl;
.super Ljava/lang/Object;
.source "ImageDecodingInfo.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lbde;

.field private final d:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final e:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

.field private final f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final g:Ljava/lang/Object;

.field private final h:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbde;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lbcu;)V
    .locals 2
    .param p1, "imageKey"    # Ljava/lang/String;
    .param p2, "imageUri"    # Ljava/lang/String;
    .param p3, "targetSize"    # Lbde;
    .param p4, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p5, "downloader"    # Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .param p6, "displayOptions"    # Lbcu;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lbdl;->a:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lbdl;->b:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lbdl;->c:Lbde;

    .line 54
    invoke-virtual {p6}, Lbcu;->m()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lbdl;->d:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 55
    iput-object p4, p0, Lbdl;->e:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    .line 57
    iput-object p5, p0, Lbdl;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 58
    invoke-virtual {p6}, Lbcu;->p()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbdl;->g:Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lbdl;->h:Landroid/graphics/BitmapFactory$Options;

    .line 61
    invoke-virtual {p6}, Lbcu;->n()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget-object v1, p0, Lbdl;->h:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, v0, v1}, Lbdl;->a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    .line 62
    return-void
.end method

.method private a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p1, "srcOptions"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "destOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 65
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 66
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 67
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 68
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 69
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 70
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 71
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 72
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 73
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 74
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 75
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lbdl;->b(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    .line 77
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lbdl;->c(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    .line 78
    :cond_1
    return-void
.end method

.method private b(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "srcOptions"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "destOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    .line 82
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 83
    return-void
.end method

.method private c(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "srcOptions"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "destOptions"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 87
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 88
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 89
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lbdl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lbdl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lbde;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lbdl;->c:Lbde;

    return-object v0
.end method

.method public d()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbdl;->d:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public e()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbdl;->e:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public f()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lbdl;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lbdl;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public h()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lbdl;->h:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method
