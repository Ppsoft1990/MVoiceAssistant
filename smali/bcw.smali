.class public final Lbcw;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcw$1;,
        Lbcw$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Landroid/graphics/Bitmap$CompressFormat;

.field final g:I

.field final h:Ljava/util/concurrent/Executor;

.field final i:Ljava/util/concurrent/Executor;

.field final j:Z

.field final k:Z

.field final l:I

.field final m:I

.field final n:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field final o:Lbcn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbcn",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final p:Lbce;

.field final q:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final r:Lbdk;

.field final s:Lbcu;

.field final t:Z

.field final u:Lbce;

.field final v:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final w:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# direct methods
.method private constructor <init>(Lbcw$a;)V
    .locals 2
    .param p1, "builder"    # Lbcw$a;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lbcw$a;->a(Lbcw$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbcw;->a:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Lbcw$a;->b(Lbcw$a;)I

    move-result v0

    iput v0, p0, Lbcw;->b:I

    .line 83
    invoke-static {p1}, Lbcw$a;->c(Lbcw$a;)I

    move-result v0

    iput v0, p0, Lbcw;->c:I

    .line 84
    invoke-static {p1}, Lbcw$a;->d(Lbcw$a;)I

    move-result v0

    iput v0, p0, Lbcw;->d:I

    .line 85
    invoke-static {p1}, Lbcw$a;->e(Lbcw$a;)I

    move-result v0

    iput v0, p0, Lbcw;->e:I

    .line 86
    invoke-static {p1}, Lbcw$a;->f(Lbcw$a;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lbcw;->f:Landroid/graphics/Bitmap$CompressFormat;

    .line 87
    invoke-static {p1}, Lbcw$a;->g(Lbcw$a;)I

    move-result v0

    iput v0, p0, Lbcw;->g:I

    .line 88
    invoke-static {p1}, Lbcw$a;->h(Lbcw$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lbcw;->h:Ljava/util/concurrent/Executor;

    .line 89
    invoke-static {p1}, Lbcw$a;->i(Lbcw$a;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lbcw;->i:Ljava/util/concurrent/Executor;

    .line 90
    invoke-static {p1}, Lbcw$a;->j(Lbcw$a;)I

    move-result v0

    iput v0, p0, Lbcw;->l:I

    .line 91
    invoke-static {p1}, Lbcw$a;->k(Lbcw$a;)I

    move-result v0

    iput v0, p0, Lbcw;->m:I

    .line 92
    invoke-static {p1}, Lbcw$a;->l(Lbcw$a;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    move-result-object v0

    iput-object v0, p0, Lbcw;->n:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 93
    invoke-static {p1}, Lbcw$a;->m(Lbcw$a;)Lbce;

    move-result-object v0

    iput-object v0, p0, Lbcw;->p:Lbce;

    .line 94
    invoke-static {p1}, Lbcw$a;->n(Lbcw$a;)Lbcn;

    move-result-object v0

    iput-object v0, p0, Lbcw;->o:Lbcn;

    .line 95
    invoke-static {p1}, Lbcw$a;->o(Lbcw$a;)Lbcu;

    move-result-object v0

    iput-object v0, p0, Lbcw;->s:Lbcu;

    .line 96
    invoke-static {p1}, Lbcw$a;->p(Lbcw$a;)Z

    move-result v0

    iput-boolean v0, p0, Lbcw;->t:Z

    .line 97
    invoke-static {p1}, Lbcw$a;->q(Lbcw$a;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lbcw;->q:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 98
    invoke-static {p1}, Lbcw$a;->r(Lbcw$a;)Lbdk;

    move-result-object v0

    iput-object v0, p0, Lbcw;->r:Lbdk;

    .line 100
    invoke-static {p1}, Lbcw$a;->s(Lbcw$a;)Z

    move-result v0

    iput-boolean v0, p0, Lbcw;->j:Z

    .line 101
    invoke-static {p1}, Lbcw$a;->t(Lbcw$a;)Z

    move-result v0

    iput-boolean v0, p0, Lbcw;->k:Z

    .line 103
    new-instance v0, Lbdr;

    iget-object v1, p0, Lbcw;->q:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lbdr;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lbcw;->v:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 104
    new-instance v0, Lbds;

    iget-object v1, p0, Lbcw;->q:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lbds;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lbcw;->w:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 106
    iget-object v0, p0, Lbcw;->a:Landroid/content/Context;

    invoke-static {v0}, Lbcs;->a(Landroid/content/Context;)Lbce;

    move-result-object v0

    iput-object v0, p0, Lbcw;->u:Lbce;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lbcw$a;Lbcw$1;)V
    .locals 0
    .param p1, "x0"    # Lbcw$a;
    .param p2, "x1"    # Lbcw$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lbcw;-><init>(Lbcw$a;)V

    return-void
.end method
