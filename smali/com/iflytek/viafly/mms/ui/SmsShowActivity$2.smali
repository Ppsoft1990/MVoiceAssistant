.class Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;
.super Ljava/lang/Object;
.source "SmsShowActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsShowActivity;->a(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsShowActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->c:Lcom/iflytek/viafly/mms/ui/SmsShowActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1773
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1774
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 1775
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->a:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1781
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1782
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1783
    .local v2, "y":F
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->b:Landroid/view/View;

    .line 1784
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    .line 1785
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->a:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1788
    :goto_1
    return v3

    .line 1776
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_2
    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    .line 1777
    iget-object v3, p0, Lcom/iflytek/viafly/mms/ui/SmsShowActivity$2;->a:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1788
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
