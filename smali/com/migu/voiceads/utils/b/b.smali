.class public Lcom/migu/voiceads/utils/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/migu/voiceads/utils/b/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/migu/voiceads/utils/b/f$b;

.field b:Landroid/os/Handler;

.field private final c:Lcom/migu/voiceads/utils/b/e;

.field private d:Lcom/migu/voiceads/utils/b/a;

.field private e:Lcom/migu/voiceads/utils/b/b$a;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/migu/voiceads/utils/b/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/migu/voiceads/utils/b/c;

    invoke-direct {v0, p0}, Lcom/migu/voiceads/utils/b/c;-><init>(Lcom/migu/voiceads/utils/b/b;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/b/b;->a:Lcom/migu/voiceads/utils/b/f$b;

    const/4 v0, 0x1

    iput v0, p0, Lcom/migu/voiceads/utils/b/b;->f:I

    new-instance v0, Lcom/migu/voiceads/utils/b/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/migu/voiceads/utils/b/d;-><init>(Lcom/migu/voiceads/utils/b/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/b/b;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/migu/voiceads/utils/b/b;->d:Lcom/migu/voiceads/utils/b/a;

    new-instance v0, Lcom/migu/voiceads/utils/b/e;

    invoke-direct {v0, p1, p2}, Lcom/migu/voiceads/utils/b/e;-><init>(Landroid/content/Context;Lcom/migu/voiceads/utils/b/a;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/b/b;->c:Lcom/migu/voiceads/utils/b/e;

    return-void
.end method

.method static synthetic a(Lcom/migu/voiceads/utils/b/b;)Lcom/migu/voiceads/utils/b/e;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/b;->c:Lcom/migu/voiceads/utils/b/e;

    return-object v0
.end method

.method static synthetic b(Lcom/migu/voiceads/utils/b/b;)Lcom/migu/voiceads/utils/b/b$a;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/b;->e:Lcom/migu/voiceads/utils/b/b$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/migu/voiceads/utils/b/b$a;)V
    .locals 3

    iput-object p1, p0, Lcom/migu/voiceads/utils/b/b;->e:Lcom/migu/voiceads/utils/b/b$a;

    iget-object v0, p0, Lcom/migu/voiceads/utils/b/b;->d:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "invalid image url"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/migu/voiceads/utils/b/b$a;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/b/b;->c:Lcom/migu/voiceads/utils/b/e;

    iget-object v1, p0, Lcom/migu/voiceads/utils/b/b;->d:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/voiceads/utils/b/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "Ad_Android_SDK"

    const-string/jumbo v2, "get image from cache success!"

    invoke-static {v1, v2}, Lcom/migu/voiceads/utils/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/migu/voiceads/utils/b/b$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/migu/voiceads/utils/b/f;

    iget-object v1, p0, Lcom/migu/voiceads/utils/b/b;->d:Lcom/migu/voiceads/utils/b/a;

    invoke-virtual {v1}, Lcom/migu/voiceads/utils/b/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/migu/voiceads/utils/b/b;->a:Lcom/migu/voiceads/utils/b/f$b;

    invoke-direct {v0, v1, v2}, Lcom/migu/voiceads/utils/b/f;-><init>(Ljava/lang/String;Lcom/migu/voiceads/utils/b/f$b;)V

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/b/f;->a()V

    goto :goto_0
.end method
