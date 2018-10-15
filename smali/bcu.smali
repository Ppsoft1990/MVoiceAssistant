.class public final Lbcu;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcu$1;,
        Lbcu$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final h:Landroid/graphics/BitmapFactory$Options;

.field private final i:I

.field private final j:Ljava/lang/Object;

.field private final k:Lbdt;

.field private final l:Lbdt;

.field private final m:Lbdm;

.field private final n:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lbcu$a;)V
    .locals 1
    .param p1, "builder"    # Lbcu$a;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lbcu$a;->a(Lbcu$a;)I

    move-result v0

    iput v0, p0, Lbcu;->a:I

    .line 79
    invoke-static {p1}, Lbcu$a;->b(Lbcu$a;)I

    move-result v0

    iput v0, p0, Lbcu;->b:I

    .line 80
    invoke-static {p1}, Lbcu$a;->c(Lbcu$a;)I

    move-result v0

    iput v0, p0, Lbcu;->c:I

    .line 81
    invoke-static {p1}, Lbcu$a;->d(Lbcu$a;)Z

    move-result v0

    iput-boolean v0, p0, Lbcu;->d:Z

    .line 82
    invoke-static {p1}, Lbcu$a;->e(Lbcu$a;)Z

    move-result v0

    iput-boolean v0, p0, Lbcu;->e:Z

    .line 83
    invoke-static {p1}, Lbcu$a;->f(Lbcu$a;)Z

    move-result v0

    iput-boolean v0, p0, Lbcu;->f:Z

    .line 84
    invoke-static {p1}, Lbcu$a;->g(Lbcu$a;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lbcu;->g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 85
    invoke-static {p1}, Lbcu$a;->h(Lbcu$a;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lbcu;->h:Landroid/graphics/BitmapFactory$Options;

    .line 86
    invoke-static {p1}, Lbcu$a;->i(Lbcu$a;)I

    move-result v0

    iput v0, p0, Lbcu;->i:I

    .line 87
    invoke-static {p1}, Lbcu$a;->j(Lbcu$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbcu;->j:Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Lbcu$a;->k(Lbcu$a;)Lbdt;

    move-result-object v0

    iput-object v0, p0, Lbcu;->k:Lbdt;

    .line 89
    invoke-static {p1}, Lbcu$a;->l(Lbcu$a;)Lbdt;

    move-result-object v0

    iput-object v0, p0, Lbcu;->l:Lbdt;

    .line 90
    invoke-static {p1}, Lbcu$a;->m(Lbcu$a;)Lbdm;

    move-result-object v0

    iput-object v0, p0, Lbcu;->m:Lbdm;

    .line 91
    invoke-static {p1}, Lbcu$a;->n(Lbcu$a;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lbcu;->n:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lbcu$a;Lbcu$1;)V
    .locals 0
    .param p1, "x0"    # Lbcu$a;
    .param p2, "x1"    # Lbcu$1;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lbcu;-><init>(Lbcu$a;)V

    return-void
.end method

.method static synthetic a(Lbcu;)I
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget v0, p0, Lbcu;->a:I

    return v0
.end method

.method static synthetic b(Lbcu;)I
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget v0, p0, Lbcu;->b:I

    return v0
.end method

.method static synthetic c(Lbcu;)I
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget v0, p0, Lbcu;->c:I

    return v0
.end method

.method static synthetic d(Lbcu;)Z
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-boolean v0, p0, Lbcu;->d:Z

    return v0
.end method

.method static synthetic e(Lbcu;)Z
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-boolean v0, p0, Lbcu;->e:Z

    return v0
.end method

.method static synthetic f(Lbcu;)Z
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-boolean v0, p0, Lbcu;->f:Z

    return v0
.end method

.method static synthetic g(Lbcu;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-object v0, p0, Lbcu;->g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic h(Lbcu;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-object v0, p0, Lbcu;->h:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic i(Lbcu;)I
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget v0, p0, Lbcu;->i:I

    return v0
.end method

.method static synthetic j(Lbcu;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-object v0, p0, Lbcu;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lbcu;)Lbdt;
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-object v0, p0, Lbcu;->k:Lbdt;

    return-object v0
.end method

.method static synthetic l(Lbcu;)Lbdt;
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-object v0, p0, Lbcu;->l:Lbdt;

    return-object v0
.end method

.method static synthetic m(Lbcu;)Lbdm;
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-object v0, p0, Lbcu;->m:Lbdm;

    return-object v0
.end method

.method static synthetic n(Lbcu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lbcu;

    .prologue
    .line 60
    iget-object v0, p0, Lbcu;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public static u()Lbcu;
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lbcu$a;

    invoke-direct {v0}, Lbcu$a;-><init>()V

    invoke-virtual {v0}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lbcu;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lbcu;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lbcu;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lbcu;->k:Lbdt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbcu;->l:Lbdt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lbcu;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lbcu;->a:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lbcu;->b:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lbcu;->c:I

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lbcu;->d:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lbcu;->e:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lbcu;->f:Z

    return v0
.end method

.method public m()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbcu;->g:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public n()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lbcu;->h:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lbcu;->i:I

    return v0
.end method

.method public p()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lbcu;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public q()Lbdt;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lbcu;->k:Lbdt;

    return-object v0
.end method

.method public r()Lbdt;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lbcu;->l:Lbdt;

    return-object v0
.end method

.method public s()Lbdm;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lbcu;->m:Lbdm;

    return-object v0
.end method

.method public t()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lbcu;->n:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbcu;->n:Landroid/os/Handler;

    goto :goto_0
.end method
