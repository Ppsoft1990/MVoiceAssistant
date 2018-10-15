.class Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;
.super Ljava/lang/Object;
.source "PersonalizedRingToneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    goto :goto_0

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 219
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;->c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0529
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
