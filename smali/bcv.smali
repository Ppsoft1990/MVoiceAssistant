.class public Lbcv;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile f:Lbcv;


# instance fields
.field private b:Lbcw;

.field private c:Lbcx;

.field private final d:Lbdd;

.field private final e:Lbdm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lbcv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbcv;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lbdg;

    invoke-direct {v0}, Lbdg;-><init>()V

    iput-object v0, p0, Lbcv;->d:Lbdd;

    .line 62
    new-instance v0, Lbdn;

    invoke-direct {v0}, Lbdn;-><init>()V

    iput-object v0, p0, Lbcv;->e:Lbdm;

    .line 79
    return-void
.end method

.method public static a()Lbcv;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lbcv;->f:Lbcv;

    if-nez v0, :cond_1

    .line 69
    const-class v1, Lbcv;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lbcv;->f:Lbcv;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lbcv;

    invoke-direct {v0}, Lbcv;-><init>()V

    sput-object v0, Lbcv;->f:Lbcv;

    .line 73
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    sget-object v0, Lbcv;->f:Lbcv;

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lbcv;->b:Lbcw;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lbcw;)V
    .locals 2
    .param p1, "configuration"    # Lbcw;

    .prologue
    .line 90
    monitor-enter p0

    if-nez p1, :cond_0

    .line 91
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbcv;->b:Lbcw;

    if-nez v0, :cond_2

    .line 94
    iget-boolean v0, p1, Lbcw;->t:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbdw;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_1
    new-instance v0, Lbcx;

    invoke-direct {v0, p1}, Lbcx;-><init>(Lbcw;)V

    iput-object v0, p0, Lbcv;->c:Lbcx;

    .line 96
    iput-object p1, p0, Lbcv;->b:Lbcw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_2
    :try_start_2
    const-string/jumbo v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, p2, v0, v0}, Lbcv;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;Lbdd;)V

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lbcu;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbcv;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;Lbdd;)V

    .line 142
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;Lbdd;)V
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lbcu;
    .param p4, "listener"    # Lbdd;

    .prologue
    const/4 v5, 0x0

    .line 179
    invoke-direct {p0}, Lbcv;->d()V

    .line 180
    if-nez p2, :cond_0

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    if-nez p4, :cond_1

    .line 184
    iget-object p4, p0, Lbcv;->d:Lbdd;

    .line 186
    :cond_1
    if-nez p3, :cond_2

    .line 187
    iget-object v1, p0, Lbcv;->b:Lbcw;

    iget-object p3, v1, Lbcw;->s:Lbcu;

    .line 190
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 191
    :cond_3
    iget-object v1, p0, Lbcv;->c:Lbcx;

    invoke-virtual {v1, p2}, Lbcx;->b(Landroid/widget/ImageView;)V

    .line 192
    invoke-interface {p4, p1, p2}, Lbdd;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 193
    invoke-virtual {p3}, Lbcu;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    invoke-virtual {p3}, Lbcu;->h()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    :goto_0
    invoke-interface {p4, p1, p2, v5}, Lbdd;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 234
    :goto_1
    return-void

    .line 196
    :cond_4
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 202
    :cond_5
    iget-object v1, p0, Lbcv;->b:Lbcw;

    iget v1, v1, Lbcw;->b:I

    iget-object v2, p0, Lbcv;->b:Lbcw;

    iget v2, v2, Lbcw;->c:I

    invoke-static {p2, v1, v2}, Lbdu;->a(Landroid/widget/ImageView;II)Lbde;

    move-result-object v3

    .line 204
    .local v3, "targetSize":Lbde;
    invoke-static {p1, v3}, Lbdf;->a(Ljava/lang/String;Lbde;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "memoryCacheKey":Ljava/lang/String;
    iget-object v1, p0, Lbcv;->c:Lbcx;

    invoke-virtual {v1, p2, v4}, Lbcx;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 207
    invoke-interface {p4, p1, p2}, Lbdd;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 208
    iget-object v1, p0, Lbcv;->b:Lbcw;

    iget-object v1, v1, Lbcw;->o:Lbcn;

    invoke-interface {v1, v4}, Lbcn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 209
    .local v8, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 210
    iget-object v1, p0, Lbcv;->b:Lbcw;

    iget-boolean v1, v1, Lbcw;->t:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "Load image from memory cache [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_6
    invoke-virtual {p3}, Lbcu;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 213
    new-instance v0, Lbcy;

    iget-object v1, p0, Lbcv;->c:Lbcx;

    invoke-virtual {v1, p1}, Lbcx;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lbcy;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lbde;Ljava/lang/String;Lbcu;Lbdd;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 215
    .local v0, "imageLoadingInfo":Lbcy;
    new-instance v9, Lbda;

    iget-object v1, p0, Lbcv;->c:Lbcx;

    invoke-virtual {p3}, Lbcu;->t()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v9, v1, v8, v0, v2}, Lbda;-><init>(Lbcx;Landroid/graphics/Bitmap;Lbcy;Landroid/os/Handler;)V

    .line 216
    .local v9, "displayTask":Lbda;
    iget-object v1, p0, Lbcv;->c:Lbcx;

    invoke-virtual {v1, v9}, Lbcx;->a(Lbda;)V

    goto :goto_1

    .line 218
    .end local v0    # "imageLoadingInfo":Lbcy;
    .end local v9    # "displayTask":Lbda;
    :cond_7
    invoke-virtual {p3}, Lbcu;->s()Lbdm;

    move-result-object v1

    invoke-interface {v1, v8, p2}, Lbdm;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    .line 219
    invoke-interface {p4, p1, p2, v8}, Lbdd;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 222
    :cond_8
    invoke-virtual {p3}, Lbcu;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 223
    invoke-virtual {p3}, Lbcu;->g()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    :cond_9
    :goto_2
    new-instance v0, Lbcy;

    iget-object v1, p0, Lbcv;->c:Lbcx;

    invoke-virtual {v1, p1}, Lbcx;->a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lbcy;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lbde;Ljava/lang/String;Lbcu;Lbdd;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 231
    .restart local v0    # "imageLoadingInfo":Lbcy;
    new-instance v9, Lbcz;

    iget-object v1, p0, Lbcv;->c:Lbcx;

    invoke-virtual {p3}, Lbcu;->t()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v9, v1, v0, v2}, Lbcz;-><init>(Lbcx;Lbcy;Landroid/os/Handler;)V

    .line 232
    .local v9, "displayTask":Lbcz;
    iget-object v1, p0, Lbcv;->c:Lbcx;

    invoke-virtual {v1, v9}, Lbcx;->a(Lbcz;)V

    goto/16 :goto_1

    .line 225
    .end local v0    # "imageLoadingInfo":Lbcy;
    .end local v9    # "displayTask":Lbcz;
    :cond_a
    invoke-virtual {p3}, Lbcu;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 226
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lbcu;Lbdd;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lbcu;
    .param p3, "listener"    # Lbdd;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lbcv;->a(Ljava/lang/String;Lbde;Lbcu;Lbdd;)V

    .line 288
    return-void
.end method

.method public a(Ljava/lang/String;Lbdd;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lbdd;

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, v0, v0, p2}, Lbcv;->a(Ljava/lang/String;Lbde;Lbcu;Lbdd;)V

    .line 249
    return-void
.end method

.method public a(Ljava/lang/String;Lbde;Lbcu;Lbdd;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "targetImageSize"    # Lbde;
    .param p3, "options"    # Lbcu;
    .param p4, "listener"    # Lbdd;

    .prologue
    .line 311
    invoke-direct {p0}, Lbcv;->d()V

    .line 312
    if-nez p2, :cond_0

    .line 313
    new-instance p2, Lbde;

    .end local p2    # "targetImageSize":Lbde;
    iget-object v2, p0, Lbcv;->b:Lbcw;

    iget v2, v2, Lbcw;->b:I

    iget-object v3, p0, Lbcv;->b:Lbcw;

    iget v3, v3, Lbcw;->c:I

    invoke-direct {p2, v2, v3}, Lbde;-><init>(II)V

    .line 315
    .restart local p2    # "targetImageSize":Lbde;
    :cond_0
    if-nez p3, :cond_1

    .line 316
    iget-object v2, p0, Lbcv;->b:Lbcw;

    iget-object p3, v2, Lbcw;->s:Lbcu;

    .line 320
    :cond_1
    invoke-virtual {p3}, Lbcu;->s()Lbdm;

    move-result-object v2

    instance-of v2, v2, Lbdn;

    if-eqz v2, :cond_2

    .line 321
    move-object v1, p3

    .line 326
    .local v1, "optionsWithFakeDisplayer":Lbcu;
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lbcv;->b:Lbcw;

    iget-object v2, v2, Lbcw;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, "fakeImage":Landroid/widget/ImageView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2}, Lbde;->a()I

    move-result v3

    invoke-virtual {p2}, Lbde;->b()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 330
    invoke-virtual {p0, p1, v0, v1, p4}, Lbcv;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;Lbdd;)V

    .line 331
    return-void

    .line 323
    .end local v0    # "fakeImage":Landroid/widget/ImageView;
    .end local v1    # "optionsWithFakeDisplayer":Lbcu;
    :cond_2
    new-instance v2, Lbcu$a;

    invoke-direct {v2}, Lbcu$a;-><init>()V

    invoke-virtual {v2, p3}, Lbcu$a;->a(Lbcu;)Lbcu$a;

    move-result-object v2

    iget-object v3, p0, Lbcv;->e:Lbdm;

    invoke-virtual {v2, v3}, Lbcu$a;->a(Lbdm;)Lbcu$a;

    move-result-object v2

    invoke-virtual {v2}, Lbcu$a;->c()Lbcu;

    move-result-object v1

    .restart local v1    # "optionsWithFakeDisplayer":Lbcu;
    goto :goto_0
.end method

.method public b()Lbce;
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lbcv;->d()V

    .line 371
    iget-object v0, p0, Lbcv;->b:Lbcw;

    iget-object v0, v0, Lbcw;->p:Lbce;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lbcv;->c:Lbcx;

    invoke-virtual {v0}, Lbcx;->a()V

    .line 442
    return-void
.end method
