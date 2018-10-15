.class Lahq$4;
.super Ljava/lang/Object;
.source "HomeSplashScreenHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahq;->B()V
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
    .line 279
    iput-object p1, p0, Lahq$4;->a:Lahq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 283
    iget-object v1, p0, Lahq$4;->a:Lahq;

    invoke-static {v1}, Lahq;->i(Lahq;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lahq$4;->a:Lahq;

    invoke-static {v1}, Lahq;->j(Lahq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return v3

    .line 286
    :pswitch_0
    iget-object v1, p0, Lahq$4;->a:Lahq;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lahq;->a(Lahq;I)I

    .line 287
    iget-object v1, p0, Lahq$4;->a:Lahq;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lahq;->b(Lahq;I)I

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v1, p0, Lahq$4;->a:Lahq;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lahq;->c(Lahq;I)I

    .line 291
    iget-object v1, p0, Lahq$4;->a:Lahq;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lahq;->d(Lahq;I)I

    .line 292
    const/4 v0, 0x5

    .line 293
    .local v0, "deltaX":I
    iget-object v1, p0, Lahq$4;->a:Lahq;

    invoke-static {v1}, Lahq;->k(Lahq;)I

    move-result v1

    iget-object v2, p0, Lahq$4;->a:Lahq;

    invoke-static {v2}, Lahq;->l(Lahq;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 294
    iget-object v1, p0, Lahq$4;->a:Lahq;

    invoke-static {v1}, Lahq;->m(Lahq;)V

    .line 295
    iget-object v1, p0, Lahq$4;->a:Lahq;

    invoke-static {v1, v3}, Lahq;->e(Lahq;Z)Z

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
