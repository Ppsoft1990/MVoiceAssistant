.class public Lbad;
.super Ljava/lang/Object;
.source "TranslationShareUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbad$a;,
        Lbad$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, ""

    sput-object v0, Lbad;->a:Ljava/lang/String;

    .line 23
    const/16 v0, 0xb4

    sput v0, Lbad;->b:I

    return-void
.end method

.method static synthetic a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-static {p0}, Lbad;->b(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lbad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lbad$a;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "translation"    # Ljava/lang/String;
    .param p3, "listener"    # Lbad$a;

    .prologue
    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/yd/util/security/MD5Helper;->md5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "md5":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ViaFly/Download/share_image_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lbad;->a:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/io/File;

    sget-object v6, Lbad;->a:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 47
    sget-object v6, Lbad;->a:Ljava/lang/String;

    invoke-interface {p3, v6}, Lbad$a;->imgComplete(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 50
    :cond_1
    new-instance v4, Lcom/iflytek/viafly/ui/view/TranslationShareView;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/ui/view/TranslationShareView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v4, "shareView":Lcom/iflytek/viafly/ui/view/TranslationShareView;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sget v7, Lbad;->b:I

    if-le v6, v7, :cond_2

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    sget v8, Lbad;->b:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    :cond_2
    invoke-virtual {v4, p1, p2}, Lcom/iflytek/viafly/ui/view/TranslationShareView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-wide v6, 0x407cc00000000000L    # 460.0

    invoke-static {p0, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    .line 57
    .local v2, "height":I
    const-wide v6, 0x4076800000000000L    # 360.0

    invoke-static {p0, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    .line 58
    .local v5, "width":I
    invoke-static {v4, v2, v5}, Lbad;->a(Landroid/view/View;II)V

    .line 59
    invoke-static {v4, p3}, Lbad;->a(Landroid/view/View;Lbad$a;)V

    goto :goto_0
.end method

.method private static a(Landroid/view/View;II)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 65
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 66
    .local v1, "measuredWidth":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 70
    .local v0, "measuredHeight":I
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 71
    return-void
.end method

.method private static a(Landroid/view/View;Lbad$a;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lbad$a;

    .prologue
    .line 74
    new-instance v0, Lbad$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbad$b;-><init>(Lbad$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lbad$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method private static b(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 79
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 80
    .local v2, "h":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 84
    invoke-virtual {p0, v5, v5, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 85
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 86
    return-object v0
.end method
