.class Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$1;
.super Ljava/lang/Object;
.source "TranslatePicActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Laze;->a(FFLandroid/hardware/Camera;Landroid/view/SurfaceView;)V

    .line 146
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$1;->a:Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;FF)V

    .line 148
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
