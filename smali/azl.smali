.class public Lazl;
.super Ljava/lang/Object;
.source "ImageLoaderUtil.java"


# static fields
.field private static d:Lazl;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lazl;->d:Lazl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "ImageLoaderUtil"

    iput-object v0, p0, Lazl;->a:Ljava/lang/String;

    .line 24
    const/high16 v0, 0xa00000

    iput v0, p0, Lazl;->b:I

    .line 26
    const/high16 v0, 0x3200000

    iput v0, p0, Lazl;->c:I

    .line 35
    invoke-direct {p0}, Lazl;->c()V

    .line 36
    return-void
.end method

.method public static a()Lazl;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lazl;->d:Lazl;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lazl;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lazl;->d:Lazl;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lazl;

    invoke-direct {v0}, Lazl;-><init>()V

    sput-object v0, Lazl;->d:Lazl;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lazl;->d:Lazl;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 50
    new-instance v1, Lbcw$a;

    .line 51
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lbcw$a;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v1, v3}, Lbcw$a;->b(I)Lbcw$a;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v3}, Lbcw$a;->a(I)Lbcw$a;

    move-result-object v1

    const/high16 v2, 0xa00000

    .line 54
    invoke-virtual {v1, v2}, Lbcw$a;->c(I)Lbcw$a;

    move-result-object v1

    const/high16 v2, 0x3200000

    .line 55
    invoke-virtual {v1, v2}, Lbcw$a;->d(I)Lbcw$a;

    move-result-object v1

    new-instance v2, Lbcr;

    invoke-direct {v2}, Lbcr;-><init>()V

    .line 56
    invoke-virtual {v1, v2}, Lbcw$a;->a(Lbcn;)Lbcw$a;

    move-result-object v1

    const/16 v2, 0x1e0

    const/16 v3, 0x320

    .line 57
    invoke-virtual {v1, v2, v3}, Lbcw$a;->a(II)Lbcw$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 58
    invoke-virtual {v1, v2}, Lbcw$a;->a(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lbcw$a;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lbcw$a;->a()Lbcw;

    move-result-object v0

    .line 60
    .local v0, "config":Lbcw;
    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbcv;->a(Lbcw;)V

    .line 61
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 74
    const-string/jumbo v0, "ImageLoaderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "displayImage uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbcv;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lbcu;

    .prologue
    .line 79
    const-string/jumbo v0, "ImageLoaderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "displayImage uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbcv;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;Lbdd;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lbcu;
    .param p4, "listener"    # Lbdd;

    .prologue
    .line 89
    const-string/jumbo v0, "ImageLoaderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "displayImage uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbcv;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;Lbdd;)V

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;Lbcu;Lbdd;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "options"    # Lbcu;
    .param p3, "listener"    # Lbdd;

    .prologue
    .line 69
    const-string/jumbo v0, "ImageLoaderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadImage uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbcv;->a(Ljava/lang/String;Lbcu;Lbdd;)V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;Lbdd;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "listener"    # Lbdd;

    .prologue
    .line 64
    const-string/jumbo v0, "ImageLoaderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadImage uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbcv;->a(Ljava/lang/String;Lbdd;)V

    .line 66
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v0

    invoke-virtual {v0}, Lbcv;->c()V

    .line 95
    return-void
.end method
