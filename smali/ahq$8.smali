.class Lahq$8;
.super Ljava/lang/Object;
.source "HomeSplashScreenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lahq;


# direct methods
.method constructor <init>(Lahq;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lahq;

    .prologue
    .line 611
    iput-object p1, p0, Lahq$8;->b:Lahq;

    iput-object p2, p0, Lahq$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lahq$8;->b:Lahq;

    invoke-virtual {v0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lahq$8;->b:Lahq;

    invoke-virtual {v0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lahq$8;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lahq$8;->b:Lahq;

    invoke-virtual {v0}, Lahq;->n()V

    .line 619
    :cond_0
    return-void
.end method
