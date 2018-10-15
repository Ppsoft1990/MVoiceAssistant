.class Lcom/migu/voiceads/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/b/b$a;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/view/FullScreenAdView;

.field private final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/view/FullScreenAdView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/view/k;->a:Lcom/migu/voiceads/view/FullScreenAdView;

    iput-object p2, p0, Lcom/migu/voiceads/view/k;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
