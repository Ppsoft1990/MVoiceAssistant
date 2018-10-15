.class Lawq$1;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneAdapter.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lawq;


# direct methods
.method constructor <init>(Lawq;)V
    .locals 0
    .param p1, "this$0"    # Lawq;

    .prologue
    .line 305
    iput-object p1, p0, Lawq$1;->a:Lawq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 1
    .param p1, "view"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
    .param p2, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 321
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-static {v0}, Lawq;->b(Lawq;)V

    .line 322
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-static {v0, p1, p2}, Lawq;->a(Lawq;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 323
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-virtual {v0}, Lawq;->notifyDataSetChanged()V

    .line 324
    return-void
.end method

.method public b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 1
    .param p1, "view"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
    .param p2, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 329
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-static {v0}, Lawq;->b(Lawq;)V

    .line 330
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-static {v0, p1, p2}, Lawq;->a(Lawq;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 331
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-virtual {v0}, Lawq;->notifyDataSetChanged()V

    .line 332
    return-void
.end method

.method public c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V
    .locals 2
    .param p1, "view"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView;
    .param p2, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 345
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-static {v0}, Lawq;->b(Lawq;)V

    .line 346
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->a:Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    if-nez v0, :cond_1

    .line 347
    :cond_0
    const-string/jumbo v0, "PersonalizedRingtoneAdapter"

    const-string/jumbo v1, "onStopButtonClicked() data is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-static {v0}, Lawq;->a(Lawq;)Lawr;

    move-result-object v0

    invoke-virtual {v0}, Lawr;->a()V

    .line 351
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-static {v0, p2}, Lawq;->b(Lawq;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 352
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-static {v0, p2}, Lawq;->a(Lawq;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 353
    iget-object v0, p0, Lawq$1;->a:Lawq;

    invoke-virtual {v0}, Lawq;->notifyDataSetChanged()V

    goto :goto_0
.end method
