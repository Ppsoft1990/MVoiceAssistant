.class Lahq$7;
.super Ljava/lang/Object;
.source "HomeSplashScreenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahq;


# direct methods
.method constructor <init>(Lahq;)V
    .locals 0
    .param p1, "this$0"    # Lahq;

    .prologue
    .line 578
    iput-object p1, p0, Lahq$7;->a:Lahq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lahq$7;->a:Lahq;

    invoke-virtual {v0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lahq$7;->a:Lahq;

    invoke-virtual {v0}, Lahq;->s()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lahq$7;->a:Lahq;

    invoke-virtual {v1}, Lahq;->r()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 583
    iget-object v0, p0, Lahq$7;->a:Lahq;

    invoke-virtual {v0}, Lahq;->n()V

    .line 585
    :cond_0
    return-void
.end method
