.class Lcom/migu/voiceads/bussiness/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/bussiness/c/c;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/bussiness/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/bussiness/c/c;->a(Lcom/migu/voiceads/bussiness/c/c;I)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/bussiness/c/c;->b(Lcom/migu/voiceads/bussiness/c/c;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/bussiness/c/c;->c(Lcom/migu/voiceads/bussiness/c/c;I)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/migu/voiceads/bussiness/c/c;->d(Lcom/migu/voiceads/bussiness/c/c;I)V

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-static {v0}, Lcom/migu/voiceads/bussiness/c/c;->a(Lcom/migu/voiceads/bussiness/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-static {v0}, Lcom/migu/voiceads/bussiness/c/c;->b(Lcom/migu/voiceads/bussiness/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-static {v0}, Lcom/migu/voiceads/bussiness/c/c;->c(Lcom/migu/voiceads/bussiness/c/c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-static {v0}, Lcom/migu/voiceads/bussiness/c/c;->a(Lcom/migu/voiceads/bussiness/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/c/d;->a:Lcom/migu/voiceads/bussiness/c/c;

    invoke-static {v0}, Lcom/migu/voiceads/bussiness/c/c;->d(Lcom/migu/voiceads/bussiness/c/c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
