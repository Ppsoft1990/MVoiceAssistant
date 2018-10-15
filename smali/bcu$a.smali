.class public Lbcu$a;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private h:Landroid/graphics/BitmapFactory$Options;

.field private i:I

.field private j:Ljava/lang/Object;

.field private k:Lbdt;

.field private l:Lbdt;

.field private m:Lbdm;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput v1, p0, Lbcu$a;->a:I

    .line 181
    iput v1, p0, Lbcu$a;->b:I

    .line 182
    iput v1, p0, Lbcu$a;->c:I

    .line 183
    iput-boolean v1, p0, Lbcu$a;->d:Z

    .line 184
    iput-boolean v1, p0, Lbcu$a;->e:Z

    .line 185
    iput-boolean v1, p0, Lbcu$a;->f:Z

    .line 186
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    iput-object v0, p0, Lbcu$a;->g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 187
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lbcu$a;->h:Landroid/graphics/BitmapFactory$Options;

    .line 188
    iput v1, p0, Lbcu$a;->i:I

    .line 189
    iput-object v2, p0, Lbcu$a;->j:Ljava/lang/Object;

    .line 190
    iput-object v2, p0, Lbcu$a;->k:Lbdt;

    .line 191
    iput-object v2, p0, Lbcu$a;->l:Lbdt;

    .line 192
    invoke-static {}, Lbcs;->b()Lbdm;

    move-result-object v0

    iput-object v0, p0, Lbcu$a;->m:Lbdm;

    .line 193
    iput-object v2, p0, Lbcu$a;->n:Landroid/os/Handler;

    .line 196
    iget-object v0, p0, Lbcu$a;->h:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 197
    iget-object v0, p0, Lbcu$a;->h:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 198
    return-void
.end method

.method static synthetic a(Lbcu$a;)I
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget v0, p0, Lbcu$a;->a:I

    return v0
.end method

.method static synthetic b(Lbcu$a;)I
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget v0, p0, Lbcu$a;->b:I

    return v0
.end method

.method static synthetic c(Lbcu$a;)I
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget v0, p0, Lbcu$a;->c:I

    return v0
.end method

.method static synthetic d(Lbcu$a;)Z
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-boolean v0, p0, Lbcu$a;->d:Z

    return v0
.end method

.method static synthetic e(Lbcu$a;)Z
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-boolean v0, p0, Lbcu$a;->e:Z

    return v0
.end method

.method static synthetic f(Lbcu$a;)Z
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-boolean v0, p0, Lbcu$a;->f:Z

    return v0
.end method

.method static synthetic g(Lbcu$a;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-object v0, p0, Lbcu$a;->g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic h(Lbcu$a;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-object v0, p0, Lbcu$a;->h:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic i(Lbcu$a;)I
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget v0, p0, Lbcu$a;->i:I

    return v0
.end method

.method static synthetic j(Lbcu$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-object v0, p0, Lbcu$a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lbcu$a;)Lbdt;
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-object v0, p0, Lbcu$a;->k:Lbdt;

    return-object v0
.end method

.method static synthetic l(Lbcu$a;)Lbdt;
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-object v0, p0, Lbcu$a;->l:Lbdt;

    return-object v0
.end method

.method static synthetic m(Lbcu$a;)Lbdm;
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-object v0, p0, Lbcu$a;->m:Lbdm;

    return-object v0
.end method

.method static synthetic n(Lbcu$a;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lbcu$a;

    .prologue
    .line 179
    iget-object v0, p0, Lbcu$a;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lbcu$a;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbcu$a;->e:Z

    .line 241
    return-object p0
.end method

.method public a(I)Lbcu$a;
    .locals 0
    .param p1, "stubImageRes"    # I

    .prologue
    .line 206
    iput p1, p0, Lbcu$a;->a:I

    .line 207
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)Lbcu$a;
    .locals 1
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 261
    iget-object v0, p0, Lbcu$a;->h:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 262
    return-object p0
.end method

.method public a(Lbcu;)Lbcu$a;
    .locals 1
    .param p1, "options"    # Lbcu;

    .prologue
    .line 329
    invoke-static {p1}, Lbcu;->a(Lbcu;)I

    move-result v0

    iput v0, p0, Lbcu$a;->a:I

    .line 330
    invoke-static {p1}, Lbcu;->b(Lbcu;)I

    move-result v0

    iput v0, p0, Lbcu$a;->b:I

    .line 331
    invoke-static {p1}, Lbcu;->c(Lbcu;)I

    move-result v0

    iput v0, p0, Lbcu$a;->c:I

    .line 332
    invoke-static {p1}, Lbcu;->d(Lbcu;)Z

    move-result v0

    iput-boolean v0, p0, Lbcu$a;->d:Z

    .line 333
    invoke-static {p1}, Lbcu;->e(Lbcu;)Z

    move-result v0

    iput-boolean v0, p0, Lbcu$a;->e:Z

    .line 334
    invoke-static {p1}, Lbcu;->f(Lbcu;)Z

    move-result v0

    iput-boolean v0, p0, Lbcu$a;->f:Z

    .line 335
    invoke-static {p1}, Lbcu;->g(Lbcu;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lbcu$a;->g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 336
    invoke-static {p1}, Lbcu;->h(Lbcu;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lbcu$a;->h:Landroid/graphics/BitmapFactory$Options;

    .line 337
    invoke-static {p1}, Lbcu;->i(Lbcu;)I

    move-result v0

    iput v0, p0, Lbcu$a;->i:I

    .line 338
    invoke-static {p1}, Lbcu;->j(Lbcu;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbcu$a;->j:Ljava/lang/Object;

    .line 339
    invoke-static {p1}, Lbcu;->k(Lbcu;)Lbdt;

    move-result-object v0

    iput-object v0, p0, Lbcu$a;->k:Lbdt;

    .line 340
    invoke-static {p1}, Lbcu;->l(Lbcu;)Lbdt;

    move-result-object v0

    iput-object v0, p0, Lbcu$a;->l:Lbdt;

    .line 341
    invoke-static {p1}, Lbcu;->m(Lbcu;)Lbdm;

    move-result-object v0

    iput-object v0, p0, Lbcu$a;->m:Lbdm;

    .line 342
    invoke-static {p1}, Lbcu;->n(Lbcu;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lbcu$a;->n:Landroid/os/Handler;

    .line 343
    return-object p0
.end method

.method public a(Lbdm;)Lbcu$a;
    .locals 0
    .param p1, "displayer"    # Lbdm;

    .prologue
    .line 314
    iput-object p1, p0, Lbcu$a;->m:Lbdm;

    .line 315
    return-object p0
.end method

.method public a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;
    .locals 0
    .param p1, "imageScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .prologue
    .line 255
    iput-object p1, p0, Lbcu$a;->g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 256
    return-object p0
.end method

.method public b()Lbcu$a;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbcu$a;->f:Z

    .line 247
    return-object p0
.end method

.method public b(I)Lbcu$a;
    .locals 0
    .param p1, "imageRes"    # I

    .prologue
    .line 217
    iput p1, p0, Lbcu$a;->b:I

    .line 218
    return-object p0
.end method

.method public c(I)Lbcu$a;
    .locals 0
    .param p1, "imageRes"    # I

    .prologue
    .line 228
    iput p1, p0, Lbcu$a;->c:I

    .line 229
    return-object p0
.end method

.method public c()Lbcu;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lbcu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbcu;-><init>(Lbcu$a;Lbcu$1;)V

    return-object v0
.end method
