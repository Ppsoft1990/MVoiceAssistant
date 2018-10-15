.class Lapm$3;
.super Ljava/lang/Object;
.source "MusicListPopWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapm;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapm;


# direct methods
.method constructor <init>(Lapm;)V
    .locals 0
    .param p1, "this$0"    # Lapm;

    .prologue
    .line 114
    iput-object p1, p0, Lapm$3;->a:Lapm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 118
    iget-object v2, p0, Lapm$3;->a:Lapm;

    invoke-static {v2}, Lapm;->b(Lapm;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b054d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 120
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 121
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 122
    if-ge v1, v0, :cond_0

    .line 123
    iget-object v2, p0, Lapm$3;->a:Lapm;

    invoke-virtual {v2}, Lapm;->dismiss()V

    .line 126
    :cond_0
    return v4
.end method
