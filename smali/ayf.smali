.class public Layf;
.super Ljava/lang/Object;
.source "TranslateEntryPresenter.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Layf;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_TRANSLATE_ENTRY "

    invoke-virtual {v0, v1, p0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laxy;
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1}, Laxy;->f(Ljava/lang/String;)Laxy;

    move-result-object v0

    .line 29
    .local v0, "netTranslateEntry":Laxy;
    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1}, Layf;->b(Ljava/lang/String;)V

    .line 34
    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_TRANSLATE_ENTRY "

    invoke-virtual {v0, v1}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lbcu;
    .locals 3

    .prologue
    const v2, 0x7f020247

    .line 46
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 48
    invoke-virtual {v1, v2}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 56
    invoke-virtual {v1, v2}, Lbcu$a;->a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lbcu$a;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 58
    invoke-virtual {v1, v2}, Lbcu$a;->a(Landroid/graphics/Bitmap$Config;)Lbcu$a;

    move-result-object v1

    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v0

    .line 59
    .local v0, "options":Lbcu;
    return-object v0
.end method

.method public c()Laxy;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Laxy;

    invoke-direct {v0}, Laxy;-><init>()V

    .line 64
    .local v0, "translateEntry":Laxy;
    iget-object v1, p0, Layf;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0329

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxy;->d(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/lxTranslate/index.html"

    invoke-virtual {v0, v1}, Laxy;->e(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/translatescene/ic_bigworld_3x.png"

    invoke-virtual {v0, v1}, Laxy;->c(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "http://xz.voicecloud.cn/resources/lxTranslate/index.html"

    invoke-virtual {v0, v1}, Laxy;->a(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Laxy;->b(Ljava/lang/String;)V

    .line 69
    return-object v0
.end method
