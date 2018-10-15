.class public Lca;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca$d;,
        Lca$c;,
        Lca$b;,
        Lca$a;
    }
.end annotation


# static fields
.field static final b:Lca$a;


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 241
    .local v0, "version":I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 242
    new-instance v1, Lca$d;

    invoke-direct {v1}, Lca$d;-><init>()V

    sput-object v1, Lca;->b:Lca$a;

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 244
    new-instance v1, Lca$c;

    invoke-direct {v1}, Lca$c;-><init>()V

    sput-object v1, Lca;->b:Lca$a;

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Lca$b;

    invoke-direct {v1}, Lca$b;-><init>()V

    sput-object v1, Lca;->b:Lca$a;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    sget-object v0, Lca;->b:Lca$a;

    invoke-interface {v0, p1, p2}, Lca$a;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lca;->a:Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lca;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 255
    new-instance v0, Lca;

    invoke-direct {v0, p0, p1}, Lca;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public a(IIIII)V
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 358
    sget-object v0, Lca;->b:Lca$a;

    iget-object v1, p0, Lca;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lca$a;->a(Ljava/lang/Object;IIIII)V

    .line 359
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lca;->b:Lca$a;

    iget-object v1, p0, Lca;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lca$a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lca;->b:Lca$a;

    iget-object v1, p0, Lca;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lca$a;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lca;->b:Lca$a;

    iget-object v1, p0, Lca;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lca$a;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lca;->b:Lca$a;

    iget-object v1, p0, Lca;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lca$a;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lca;->b:Lca$a;

    iget-object v1, p0, Lca;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lca$a;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lca;->b:Lca$a;

    iget-object v1, p0, Lca;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lca$a;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 419
    sget-object v0, Lca;->b:Lca$a;

    iget-object v1, p0, Lca;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lca$a;->e(Ljava/lang/Object;)V

    .line 420
    return-void
.end method
