.class Lafx$3;
.super Ljava/lang/Object;
.source "SmsInputItemViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafx;


# direct methods
.method constructor <init>(Lafx;)V
    .locals 0
    .param p1, "this$0"    # Lafx;

    .prologue
    .line 347
    iput-object p1, p0, Lafx$3;->a:Lafx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 351
    iget-object v0, p0, Lafx$3;->a:Lafx;

    iget-object v1, p0, Lafx$3;->a:Lafx;

    invoke-static {v1}, Lafx;->b(Lafx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lafx;->a(Lafx;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lafx$3;->a:Lafx;

    invoke-static {v0}, Lafx;->f(Lafx;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 353
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 354
    iget-object v0, p0, Lafx$3;->a:Lafx;

    invoke-static {v0}, Lafx;->f(Lafx;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 357
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 358
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Landroid/app/Activity;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    iget-object v1, p0, Lafx$3;->a:Lafx;

    invoke-static {v1}, Lafx;->b(Lafx;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b(Landroid/widget/EditText;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .line 360
    :cond_1
    return v3
.end method
